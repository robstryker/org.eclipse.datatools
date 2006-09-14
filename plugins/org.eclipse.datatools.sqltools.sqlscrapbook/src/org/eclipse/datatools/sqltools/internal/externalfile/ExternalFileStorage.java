/** Created on 2006-1-10
 *
 * Copyright (c) Sybase, Inc. 2004-2006   
 * All rights reserved.                                    
 */
package org.eclipse.datatools.sqltools.internal.externalfile;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import org.eclipse.core.runtime.IPath;
import org.eclipse.datatools.sqltools.internal.sqlscrapbook.SqlscrapbookPlugin;
import org.eclipse.datatools.sqltools.sqleditor.SQLEditorStorage;

/**
 * @author Hui Cao
 */
public class ExternalFileStorage extends SQLEditorStorage
{
    IPath _path = null;
    public ExternalFileStorage(IPath path)
    {
        super(path.toFile().getName(), path.toOSString());
        this._path = path;
        try
        {
            setContents(new FileInputStream(_path.toFile()));
        }
        catch (FileNotFoundException e)
        {
            SqlscrapbookPlugin.getDefault().log(e);
        }
    }

    public IPath getFullPath()
    {
        return _path;
    }


}
