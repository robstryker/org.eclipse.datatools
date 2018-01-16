/*******************************************************************************
 * Copyright (c) 2001, 2007 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 * IBM Corporation - initial API and implementation
 *******************************************************************************/
package org.eclipse.datatools.connectivity.sqm.server.internal.ui.explorer.loading;

import org.eclipse.core.runtime.jobs.ISchedulingRule;

public class NonConflictingRule implements ISchedulingRule
{
	public boolean contains(ISchedulingRule rule)
	{
		return rule == this;
	}

	public boolean isConflicting(ISchedulingRule rule)
	{
		return rule == this;
	}
}
