/*******************************************************************************
 * Copyright (c) 2001, 2004, 2008 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.datatools.sqltools.ddlgen.internal.ui.util;

import java.util.ResourceBundle;

public class ResourceLoader
{
	private static final String RESOURCE_PATH = "org/eclipse/datatools/sqltools/ddlgen/internal/ui/l10n/"; //$NON-NLS-1$
	private static final String UI_RESOURCES = "FEUI"; //$NON-NLS-1$
	private static final String NO_RESOURCE_FOUND = "NO_RESOURCE_FOUND"; //$NON-NLS-1$

	private ResourceBundle bundle;
	
	public static final ResourceLoader INSTANCE = new ResourceLoader ();
	
	private ResourceLoader()
    {
        this.bundle = ResourceBundle.getBundle(RESOURCE_PATH + UI_RESOURCES);
    }
	
    /**
     * @param stringID - the key to look for
     * @return - the localized string
     */
    public String queryString (String stringID)
    {
        try
        {
            String resource = null;
            resource = this.bundle.getString(stringID);
            return (resource);
        }
        catch (Throwable e)
        {
        	return NO_RESOURCE_FOUND;
        }
    }
}
