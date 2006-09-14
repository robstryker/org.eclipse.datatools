/*******************************************************************************
 * Copyright (c) 2004, 2005 Sybase, Inc. and others.
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     Sybase, Inc. - initial API and implementation
 *******************************************************************************/
package org.eclipse.datatools.sqltools.sql.util;

import java.util.Iterator;

import org.eclipse.datatools.connectivity.IConnectionProfile;
import org.eclipse.datatools.connectivity.sqm.internal.core.connection.ConnectionInfo;
import org.eclipse.datatools.connectivity.sqm.internal.core.connection.ConnectionInfoImpl;
import org.eclipse.datatools.connectivity.sqm.internal.core.connection.DatabaseConnectionRegistry;
import org.eclipse.datatools.connectivity.sqm.internal.core.definition.DatabaseDefinition;
import org.eclipse.datatools.connectivity.sqm.internal.core.rte.ICatalogObject;
import org.eclipse.datatools.modelbase.dbdefinition.PredefinedDataTypeDefinition;
import org.eclipse.datatools.modelbase.sql.datatypes.DataType;
import org.eclipse.datatools.modelbase.sql.datatypes.DistinctUserDefinedType;
import org.eclipse.datatools.modelbase.sql.datatypes.PredefinedDataType;
import org.eclipse.datatools.modelbase.sql.datatypes.PrimitiveType;
import org.eclipse.datatools.modelbase.sql.datatypes.SQLDataTypesFactory;
import org.eclipse.datatools.modelbase.sql.routines.Routine;
import org.eclipse.datatools.modelbase.sql.schema.Database;
import org.eclipse.datatools.modelbase.sql.schema.Event;
import org.eclipse.datatools.modelbase.sql.schema.SQLObject;
import org.eclipse.datatools.modelbase.sql.schema.Schema;
import org.eclipse.datatools.modelbase.sql.tables.Table;
import org.eclipse.datatools.modelbase.sql.tables.Trigger;
import org.eclipse.datatools.sqltools.core.ProcIdentifier;
import org.eclipse.datatools.sqltools.core.profile.ProfileUtil;
import org.eclipse.datatools.sqltools.sql.reference.IDatatype;
import org.eclipse.datatools.sqltools.sql.reference.internal.Datatype;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EStructuralFeature;

/**
 * Utility class to resolve the SQL model object relationships or convert SQL
 * model into classes required by SQL Dev Tools.
 * 
 * @author Hui Cao
 * 
 */
public class ModelUtil {

	//TODO MO event, remove this constants when this class is pulled up to the framework
	public static final String EVENT_FOLDER_CLASS = "DBEventsFolder";
	
	public static IDatatype map(DatabaseDefinition databaseDefinition, DataType type, String owner)
	{
		PredefinedDataTypeDefinition typeDefinition = databaseDefinition.getPredefinedDataTypeDefinition(type.getName());
		if (type instanceof PredefinedDataType)
		{
			return createIDatatype(typeDefinition, (PredefinedDataType)type, owner);
		}
		else if (type instanceof DistinctUserDefinedType)
		{
			PredefinedDataType pretype = ((DistinctUserDefinedType)type).getPredefinedRepresentation();
			IDatatype datatype = createIDatatype(typeDefinition, (PredefinedDataType)type, owner);
			return new Datatype(owner, type.getName(), true, datatype, datatype.getLength(), datatype.getPrecision(), datatype.getScale(), datatype.allowNull());
		}
		return null;
	}
	
	private static IDatatype createIDatatype(PredefinedDataTypeDefinition typeDefinition, PredefinedDataType type, String owner)
	{
		Datatype datatype = null;
		int length = 0;
		int precision = 0;
		int scale = 0;
		boolean nullable = true;
		if(typeDefinition != null) {
			if(typeDefinition.isLengthSupported()) {
				EStructuralFeature feature = type.eClass().getEStructuralFeature("length");  //$NON-NLS-1$
				length = ((Integer) type.eGet(feature)).intValue();
			}
			else if(typeDefinition.isPrecisionSupported()) {
				EStructuralFeature feature = type.eClass().getEStructuralFeature("precision"); //$NON-NLS-1$
				precision = ((Integer) type.eGet(feature)).intValue();
			}
			if(typeDefinition.isScaleSupported()) {
				EStructuralFeature feature = type.eClass().getEStructuralFeature("scale"); //$NON-NLS-1$
				scale = ((Integer) type.eGet(feature)).intValue();
			}
			if(typeDefinition.isNullableSupported()) {
				EStructuralFeature feature = type.eClass().getEStructuralFeature("nullable"); //$NON-NLS-1$
				if (feature != null)
				{
					nullable = ((Boolean) type.eGet(feature)).booleanValue();
				}
			}
			datatype = new Datatype(owner, type.getName(), false, null, length, precision, scale, nullable);
		}
		else {
		}
		return datatype;
	}
	
	public static SQLObject findProceduralObject(ProcIdentifier proc)
	{
		return findProceduralObject(proc, false);
	}
	
	/**
	 * 
	 * @param proc
	 * @param refresh Whether to refresh the procedural object's parent folder
	 * @return
	 */
	public static SQLObject findProceduralObject(ProcIdentifier proc, boolean refresh)
	{
		Database db = ProfileUtil.getDatabase(proc.getDatabaseIdentifier());
		if (db != null) {
			if (proc.getType() == ProcIdentifier.TYPE_EVENT) {
				if (refresh) {
					((ICatalogObject) db).refresh();
				}
				EList events = db.getEvents();
				for (Iterator iter = events.iterator(); iter.hasNext();) {
					Event routine = (Event) iter.next();
					if (routine.getName().equals(proc.getProcName())) {
						return routine;
					}
				}
			} else {
				EList schemas = db.getSchemas();
				if (schemas == null || schemas.size() == 0) {
					EStructuralFeature catalogsFeature = db.eClass()
							.getEStructuralFeature("catalogs");
					// TODO MO temporary solution
					EList catalogs = (EList) db.eGet(catalogsFeature);
					if (catalogs != null) {
						for (Iterator iter = catalogs.iterator(); iter
								.hasNext();) {
							SQLObject catalog = (SQLObject) iter.next();
							if (catalog.getName()
									.equals(proc.getDatabaseName())) {
								EStructuralFeature schemaFeature = catalog
										.eClass().getEStructuralFeature(
												"sybschemas");
								schemas = (EList) catalog.eGet(schemaFeature);
								break;
							}
						}
					}
				}

				Iterator i = schemas.iterator();
				for (; i.hasNext();) {
					Schema schema = (Schema) i.next();
					if (schema.getName() != null
							&& schema.getName().equals(proc.getOwnerName())) {
						// trigger is not routine in SQL model
						if (proc.getType() == ProcIdentifier.TYPE_TRIGGER) {
							EList tables = schema.getTables();
							for (Iterator iter = tables.iterator(); iter
									.hasNext();) {
								Table table = (Table) iter.next();
								if (table.getName().equals(proc.getTableName())) {
									if (refresh
											&& table instanceof ICatalogObject) {
										((ICatalogObject) table).refresh();
									}
									EList triggers = table.getTriggers();
									for (Iterator itera = triggers.iterator(); itera
											.hasNext();) {
										Trigger trigger = (Trigger) itera
												.next();
										if (table.getName().equals(
												proc.getTableName())
												&& trigger.getName().equals(
														proc.getProcName())) {
											return trigger;
										}
									}

								}
							}
						} else if (proc.getType() == ProcIdentifier.TYPE_UDF
								|| proc.getType() == ProcIdentifier.TYPE_SP) {
							if (refresh) {
								((ICatalogObject) schema).refresh();
							}
							EList routines = schema.getRoutines();
							for (Iterator iter = routines.iterator(); iter
									.hasNext();) {
								Routine routine = (Routine) iter.next();
								if (routine.getName()
										.equals(proc.getProcName())) {
									return routine;
								}
							}
						}
					}
				}
			}
		}
		return null;
	}
	
	
	/**
	 * Returns the database name by taking catalog into account.
	 * @param schema
	 * @return
	 */
	public static String getDatabaseName(Schema schema)
	{
		String _dbName = null;
		EStructuralFeature catalogFeature = schema.eClass().getEStructuralFeature("catalog");
		if (catalogFeature != null)
		{
			SQLObject catalog = (SQLObject)schema.eGet(catalogFeature);
			_dbName = catalog.getName();
		}
		else
		{
			Database _database = schema.getDatabase();
			_dbName = _database.getName(); 
		}
		return _dbName;
	}
	
	public static IConnectionProfile getConnectionProfile(Database database) {
		if (database != null) {
			ConnectionInfo connInfo = DatabaseConnectionRegistry.getInstance()
					.getConnectionForDatabase(database);
			if (connInfo instanceof ConnectionInfoImpl) {
				return ((ConnectionInfoImpl) connInfo)
						.getConnectionProfile();
			}
		}
		return null;
	}
	
	/**
	 * Returns the schema list for the database, or, if catalog feature is supported, returns
	 * the schema list for the default catalog. 
	 * @param database
	 * @return
	 */
	public static EList getSchemas(Database database, String catalogName) {
		if (catalogName == null)
		{
			catalogName = database.getName();
		}
		EList schemas = database.getSchemas();
		if (schemas == null || schemas.size() == 0) {
			EStructuralFeature catalogsFeature = database.eClass()
					.getEStructuralFeature("catalogs");
			// TODO MO temporary solution
			EList catalogs = (EList) database.eGet(catalogsFeature);
			if (catalogs != null) {
				for (Iterator iter = catalogs.iterator(); iter
						.hasNext();) {
					SQLObject catalog = (SQLObject) iter.next();
					if (catalog.getName()
							.equals(catalogName)) {
						EStructuralFeature schemaFeature = catalog
								.eClass().getEStructuralFeature(
										"sybschemas");
						schemas = (EList) catalog.eGet(schemaFeature);
						break;
					}
				}
			}
		}
		
		return schemas;
	}
}
