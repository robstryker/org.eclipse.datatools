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
package org.eclipse.datatools.sqltools.debugger.core.internal;

/**
 * Preference constants used in the DMP preference store. Clients should only read the DMP preference store using these
 * values. Clients are not allowed to modify the preference store programmatically.
 * 
 * @author Hui Cao
 * 
 */
public class DebuggerPreferenceConstants
{

    // begin: preference page ids
    public static final String PAGE_SQLDEBUG                           = DebuggerCorePlugin.PLUGIN_ID + ".preferences.SQLDebug";
    // end: preference page ids


    //SQL debug preference constants
    public static final String PROMPT_SETTING_BRAKEPOINT_DISABLE                = "debug.prompt.settingBreakPointDisable"; 

    //preference constants for SQL Results View options

}
