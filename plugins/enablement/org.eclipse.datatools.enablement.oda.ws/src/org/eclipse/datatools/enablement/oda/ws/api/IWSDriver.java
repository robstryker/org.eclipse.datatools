
/*******************************************************************************
 * Copyright (c) 2004, 2008 Actuate Corporation.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *  Actuate Corporation  - initial API and implementation
 *******************************************************************************/
package org.eclipse.datatools.enablement.oda.ws.api;

import java.util.Map;

/**
 * 
 */

public interface IWSDriver
{
	/**
	 * 
	 * @param connectionProperties
	 * @param appContext
	 * @return
	 */
	public IWSConnection connect( Map connectionProperties, Map appContext);

}
