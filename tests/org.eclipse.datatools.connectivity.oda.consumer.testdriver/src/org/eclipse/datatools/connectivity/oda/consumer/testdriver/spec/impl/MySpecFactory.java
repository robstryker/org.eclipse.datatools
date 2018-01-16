/*
 *************************************************************************
 * Copyright (c) 2009 Actuate Corporation.
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

package org.eclipse.datatools.connectivity.oda.consumer.testdriver.spec.impl;

import org.eclipse.datatools.connectivity.oda.spec.result.SortSpecification;
import org.eclipse.datatools.connectivity.oda.spec.util.QuerySpecificationFactory;

/**
 *  Extended factory of query specification instances.
 */
@SuppressWarnings("restriction")
public class MySpecFactory extends QuerySpecificationFactory
{

    protected SortSpecification createSortSpecification()
    {
        return new MySortSpecification();
    }
   
    protected SortSpecification createSortSpecification( int sortMode )
    {
        return new MySortSpecification( sortMode );
    }

}
