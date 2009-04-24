/***********************************************************************************************************************
 * Copyright (c) 2009 Sybase, Inc. All rights reserved. This program and the accompanying materials are made available
 * under the terms of the Eclipse Public License v1.0 which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Sybase, Inc. - initial API and implementation
 **********************************************************************************************************************/
package org.eclipse.datatools.enablement.sybase.asa.schemaobjecteditor.examples;

import org.eclipse.osgi.util.NLS;

public final class Messages extends NLS 
{

    private static final String BUNDLE_NAME = Messages.class.getPackage().getName() + ".messages";//$NON-NLS-1$

    private Messages() 
    {
        // Do not instantiate
    }

    public static String common_ignoreException;
    public static String DataValidation_warnMessage;
    public static String DataValidation_createDataTypeError;
    public static String NotSupportedSettingException_cause;
    public static String IdentifierValidator_asa_invalidlength;
    public static String IdentifierValidator_invalid_part;
    
    static 
    {
        NLS.initializeMessages(BUNDLE_NAME, Messages.class);
    }
}
