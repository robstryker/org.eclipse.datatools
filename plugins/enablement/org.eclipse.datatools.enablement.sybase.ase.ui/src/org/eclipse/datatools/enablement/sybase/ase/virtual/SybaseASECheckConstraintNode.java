/*******************************************************************************
 * Copyright (c) 2008 Sybase, Inc.
 * 
 * All rights reserved. This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License v1.0 which
 * accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors: Sybase - initial API and implementation
 ******************************************************************************/
package org.eclipse.datatools.enablement.sybase.ase.virtual;

import org.eclipse.datatools.enablement.sybase.virtual.CheckConstraintNode;

/**
 * @author David cui
 */
public class SybaseASECheckConstraintNode extends CheckConstraintNode
{

    /**
     * @param name
     * @param displayName
     * @param parent
     */
    public SybaseASECheckConstraintNode(String name, String displayName, Object parent)
    {
        super(name, displayName, parent);
    }

}
