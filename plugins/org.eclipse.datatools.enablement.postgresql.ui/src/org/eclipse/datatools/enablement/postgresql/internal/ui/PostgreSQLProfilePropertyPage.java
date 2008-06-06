/*******************************************************************************
 * Copyright (c) 2004-2005, 2008 Sybase, Inc. and others.
 * 
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License v1.0 which
 * accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: brianf - initial API and implementation
 *    IBM Corporation - fix for 213266
 ******************************************************************************/
package org.eclipse.datatools.enablement.postgresql.internal.ui;

import org.eclipse.datatools.connectivity.ui.wizards.ExtensibleProfileDetailsPropertyPage;

/**
 * This class allows the user to edit connection properties for the generic DB
 * connection profile.
 * 
 */
public class PostgreSQLProfilePropertyPage  extends
		ExtensibleProfileDetailsPropertyPage {

	public PostgreSQLProfilePropertyPage() {
		super("org.eclipse.datatools.enablement.postgresql.driverCategory");
	}
}

