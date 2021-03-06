/*******************************************************************************
 * Copyright (c) 2007 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.datatools.enablement.ibm.db2.internal.luw;

import java.util.Properties;

import org.eclipse.datatools.connectivity.drivers.jdbc.IJDBCConnectionProfileConstants;
import org.eclipse.datatools.connectivity.drivers.jdbc.JDBCPasswordPropertyPersistenceHook;

public class LUWDBPropertiesPersistenceHook extends
		JDBCPasswordPropertyPersistenceHook {

	public boolean arePropertiesComplete(Properties props) {
		return super.arePropertiesComplete(props) && areUserNameAndPasswordComplete(props);
	}

	private boolean areUserNameAndPasswordComplete(Properties props) {
		String userid = props.getProperty(
			IJDBCConnectionProfileConstants.USERNAME_PROP_ID, null);
		String passwd = props.getProperty(
				IJDBCConnectionProfileConstants.PASSWORD_PROP_ID, null);
		return userid != null && userid.trim().length() > 0 && passwd != null
			&& passwd.trim().length() > 0;
	}

	public String getConnectionPropertiesPageID() {
		return "org.eclipse.datatools.enablement.ibm.db2.luw.profileProperties"; //$NON-NLS-1$
	}
}
