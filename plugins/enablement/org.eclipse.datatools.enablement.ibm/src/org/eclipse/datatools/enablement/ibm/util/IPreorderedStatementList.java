/*******************************************************************************
 * Copyright (c) 2009, 2014 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.datatools.enablement.ibm.util;

import java.util.Vector;

/**
 * A collection of statements which have been ordered.
 * 
 */
public interface IPreorderedStatementList {

	/**
	 * Retrieves the ordered statements.
	 * @return Vector<String> The ordered statements returned as a Vector of Strings.
	 */
	public Vector<String> getAll();
}
