package org.eclipse.datatools.sqltools.sqleditor.internal.templates.dialog;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.datatools.sqltools.core.EditorCorePlugin;


/**
 * A settable IStatus. Can be an error, warning, info or OKk. For error, info and warning states, a message describes
 * the problem. Note: This is just a copy of org.eclipse.ui.texteditor.templates.StatusInfo to make it visible.
 * 
 * @since 3.0
 */
class StatusInfo implements IStatus 
{

    private String fStatusMessage;
    private int fSeverity;

    /**
     * Creates a status set to OK (no message)
     */
    public StatusInfo() 
    {
        this(OK, null);
    }

    /**
     * Creates a status .
     * @param severity The status severity: ERROR, WARNING, INFO and OK.
     * @param message The message of the status. Applies only for ERROR,
     * WARNING and INFO.
     */
    public StatusInfo(int severity, String message) 
    {
        fStatusMessage= message;
        fSeverity= severity;
    }

    /**
     * Returns if the status' severity is OK.
     *
     * @return <code>true</code> if the status' severity is OK
     */
    public boolean isOK() 
    {
        return fSeverity == IStatus.OK;
    }

    /**
     * Returns if the status' severity is WARNING.
     *
     * @return <code>true</code> if the status' severity is WARNING
     */
    public boolean isWarning() 
    {
        return fSeverity == IStatus.WARNING;
    }

    /**
     *  Returns if the status' severity is INFO.
     *
     * @return <code>true</code> if the status' severity is INFO
     */
    public boolean isInfo() 
    {
        return fSeverity == IStatus.INFO;
    }

    /**
     *  Returns if the status' severity is ERROR.
     *
     * @return <code>true</code> if the status' severity is ERROR
     */
    public boolean isError() 
    {
        return fSeverity == IStatus.ERROR;
    }

    /**
     * Returns the message.
     *
     * @return the message
     * @see IStatus#getMessage()
     */
    public String getMessage() 
    {
        return fStatusMessage;
    }

    /**
     * Sets the status to ERROR.
     * @param errorMessage the error message (can be empty, but not null)
     */
    public void setError(String errorMessage) 
    {
        Assert.isNotNull(errorMessage);
        fStatusMessage= errorMessage;
        fSeverity= IStatus.ERROR;
    }

    /**
     * Sets the status to WARNING.
     * @param warningMessage the warning message (can be empty, but not null)
     */
    public void setWarning(String warningMessage) 
    {
        Assert.isNotNull(warningMessage);
        fStatusMessage= warningMessage;
        fSeverity= IStatus.WARNING;
    }

    /**
     * Sets the status to INFO.
     * @param infoMessage the info message (can be empty, but not null)
     */
    public void setInfo(String infoMessage) 
    {
        Assert.isNotNull(infoMessage);
        fStatusMessage= infoMessage;
        fSeverity= IStatus.INFO;
    }

    /**
     * Sets the status to OK.
     */
    public void setOK() 
    {
        fStatusMessage= null;
        fSeverity= IStatus.OK;
    }

    /*
     * @see IStatus#matches(int)
     */
    public boolean matches(int severityMask) 
    {
        return (fSeverity & severityMask) != 0;
    }

    /**
     * Returns always <code>false</code>.
     * @see IStatus#isMultiStatus()
     */
    public boolean isMultiStatus() 
    {
        return false;
    }

    /*
     * @see IStatus#getSeverity()
     */
    public int getSeverity() 
    {
        return fSeverity;
    }

    /*
     * @see IStatus#getPlugin()
     */
    public String getPlugin() 
    {
        return EditorCorePlugin.PLUGIN_ID;
    }

    /**
     * Returns always <code>null</code>.
     * @see IStatus#getException()
     */
    public Throwable getException() 
    {
        return null;
    }

    /**
     * Returns always the error severity.
     * @see IStatus#getCode()
     */
    public int getCode() 
    {
        return fSeverity;
    }

    /**
     * Returns always <code>null</code>.
     * @see IStatus#getChildren()
     */
    public IStatus[] getChildren() 
    {
        return new IStatus[0];
    }

}
