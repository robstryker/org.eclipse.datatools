/*******************************************************************************
 * Copyright (c) 2006 Sybase, Inc.
 * 
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License v1.0 which
 * accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: rcernich - initial API and implementation
 ******************************************************************************/
package org.eclipse.datatools.enablement.sybase.ase.internal.connection;

import org.eclipse.datatools.connectivity.IConnectionProfile;
import org.eclipse.datatools.connectivity.db.generic.JDBCConnection;

public class JDBCASEJDBCConnection extends JDBCConnection {

	public JDBCASEJDBCConnection(IConnectionProfile profile,
										Class factoryClass) {
		super(profile, factoryClass);
	}

}
