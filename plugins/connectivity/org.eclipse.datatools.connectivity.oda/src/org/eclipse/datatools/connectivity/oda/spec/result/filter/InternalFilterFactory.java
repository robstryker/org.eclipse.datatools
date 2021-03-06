/*
 *************************************************************************
 * Copyright (c) 2010 Actuate Corporation.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *  Actuate Corporation - initial API and implementation
 *  
 *************************************************************************
 */

package org.eclipse.datatools.connectivity.oda.spec.result.filter;

import org.eclipse.datatools.connectivity.oda.spec.ExpressionArguments;
import org.eclipse.datatools.connectivity.oda.spec.ExpressionVariable;

/**
 *  Internal factory of package classes. 
 */
public class InternalFilterFactory
{
    public static CustomExpression createCustomFilter( String extensionId, String id )
    {
        return new CustomExpression( extensionId, id );
    }

    public static CustomExpression createCustomFilter( String extensionId, String id, ExpressionVariable variable, ExpressionArguments args )
    {
        return new CustomExpression( extensionId, id, variable, args );
    }
    
}
