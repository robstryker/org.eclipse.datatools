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

package org.eclipse.datatools.connectivity.oda.spec.util;

import java.sql.Types;
import java.util.Iterator;

import org.eclipse.datatools.connectivity.oda.OdaException;
import org.eclipse.datatools.connectivity.oda.nls.Messages;
import org.eclipse.datatools.connectivity.oda.spec.ExpressionVariable;
import org.eclipse.datatools.connectivity.oda.spec.ExpressionVariable.VariableType;
import org.eclipse.datatools.connectivity.oda.spec.manifest.VariableRestrictions;
import org.eclipse.datatools.connectivity.oda.spec.result.AggregateExpression;
import org.eclipse.datatools.connectivity.oda.spec.result.CustomAggregate;
import org.eclipse.datatools.connectivity.oda.spec.result.FilterExpression;
import org.eclipse.datatools.connectivity.oda.spec.result.filter.AtomicExpression;
import org.eclipse.datatools.connectivity.oda.spec.result.filter.CompositeExpression;
import org.eclipse.datatools.connectivity.oda.spec.result.filter.CustomExpression;
import org.eclipse.datatools.connectivity.oda.util.manifest.ManifestExplorer;

/**
 * <strong>EXPERIMENTAL</strong>.
 * Utility class for use by implementation of IValidator.
 */
public class ValidatorUtil
{
    private static final String AT_SYMBOL = "@"; //$NON-NLS-1$
    
    /**
     * Validates the specified CustomExpression to be an instance of the specified class.
     * @param customExpr    a custom filter expression instance
     * @param expectedExprClass  the expected class of the custom expression
     * @throws OdaException if validation fails
     */
    public static void validateCustomExprType( CustomExpression customExpr, Class<?> expectedExprClass ) 
        throws OdaException
    {
        if( expectedExprClass.isInstance( customExpr ) )
            return;     // is expected type

        // not an instance of the expected class
        throw newFilterExprException( 
                Messages.bind( Messages.querySpec_UNEXPECTED_CUSTOM_EXPR_TYPE,
                        customExpr.getName(), expectedExprClass.getName() ), 
                customExpr );
    }

    /**
     * Validates the specified CustomAggregate to be an instance of the specified class.
     * @param customExpr    a custom aggregate expression instance
     * @param expectedExprClass the expected class of the custom expression
     * @throws OdaException  if validation fails
     */
    public static void validateCustomExprType( CustomAggregate customExpr, Class<?> expectedExprClass ) 
        throws OdaException
    {
        if( expectedExprClass.isInstance( customExpr ) )
            return;     // is expected type
    
        // not an instance of the expected class
        throw newAggregateException( 
                Messages.bind( Messages.querySpec_UNEXPECTED_AGGR_EXPR_TYPE,
                        customExpr.getName(), expectedExprClass.getName() ), 
                customExpr );
    }

    /**
     * Validates each and every CustomExpression nested in the specified FilterExpression 
     * to be an instance of the specified class.
     * @param customExpr    a custom filter expression instance
     * @param expectedExprClass  the expected class of the custom expression
     * @throws OdaException if validation fails
     */
    public static void validateAllCustomExprType( FilterExpression expr, Class<?> expectedExprClass ) 
        throws OdaException
    {
        if( expr instanceof CustomExpression )
        {
            validateCustomExprType( (CustomExpression) expr, expectedExprClass );
            return;
        }
        
        if( expr instanceof CompositeExpression )
        {
            CompositeExpression parentExpr = (CompositeExpression) expr;
            FilterExpression[] childrenExpr = parentExpr.getChildren();
            for( int i= 0; i < childrenExpr.length; i++ )
            {
                validateAllCustomExprType( childrenExpr[i], expectedExprClass );
            }
            return;
        }
    }
        
    /**
     * Validates that the specified CustomExpression is contributed by the specified dynamicResultSet
     * extension id.
     * @param customExpr    a custom filter expression instance
     * @param expectedExtensionId   id of the expected oda dynamicResultSet extension
     * @throws OdaException if validation fails
     */
    public static void validateCustomExprExtension( CustomExpression customExpr, String expectedExtensionId )
        throws OdaException
    {
        if( ! expectedExtensionId.equals( customExpr.getDeclaringExtensionId() ) )
            throw newFilterExprException( 
                    Messages.bind( Messages.querySpec_UNEXPECTED_CUSTOM_EXPR_EXTENSION, customExpr.getName() ), 
                    customExpr );
    }

    /**
     * Validates that the specified CustomAggregate is contributed by the specified dynamicResultSet
     * extension id.
     * @param customAggrExpr    a custom aggregate expression instance
     * @param expectedExtensionId   id of the expected oda dynamicResultSet extension
     * @throws OdaException if validation fails
     */
    public static void validateCustomExprExtension( CustomAggregate customAggrExpr, String expectedExtensionId )
        throws OdaException
    {
        if( ! expectedExtensionId.equals( customAggrExpr.getDeclaringExtensionId() ) )
            throw newAggregateException( 
                    Messages.bind( Messages.querySpec_UNEXPECTED_AGGR_EXPR_EXTENSION, customAggrExpr.getName() ), 
                    customAggrExpr );
    }
 
    /**
     * Validates that the specified AtomicExpression has an associated ExpressionVariable.
     * @param expr    an atomic filter expression instance
     * @throws OdaException if validation fails
     */
    public static void validateHasExprVariable( AtomicExpression expr )
        throws OdaException
    {
        if( expr.getVariable() == null )
            throw newFilterExprException( 
                    Messages.bind( Messages.querySpec_MISSING_EXPR_VARIABLE, expr.getName() ), 
                            expr );
    }
    
    /**
     * Validates that the expression variable of the specified filter expression 
     * is one of the specified variable types.
     * @param expr    an atomic filter expression instance
     * @param supportedVarTypes array of supported types of expression variable
     * @throws OdaException if validation fails
     */
    public static void validateSupportedVariableTypes( AtomicExpression expr, 
            ExpressionVariable.VariableType[] supportedVarTypes )
        throws OdaException
    {
        ExpressionVariable exprVar = expr.getVariable();
        for( int i=0; i < supportedVarTypes.length; i++ )
        {
            if( exprVar.getType() == supportedVarTypes[i] )
                return;     // is a supported type
        }
        
        // expr variable is not a supported type
        throw newFilterExprException( 
                Messages.bind( Messages.querySpec_UNEXPECTED_EXPR_VARIABLE_TYPE, exprVar ), 
                expr );
    }

    /**
     * Validates that the input expression variable of the specified aggregate expression 
     * is one of the specified variable types.
     * @param expr    a custom aggregate expression instance
     * @param supportedVarTypes array of supported types of expression variable
     * @throws OdaException if validation fails
     */
    public static void validateSupportedVariableTypes( CustomAggregate expr, 
            ExpressionVariable.VariableType[] supportedVarTypes )
        throws OdaException
    {
        if( expr.getVariables().isEmpty() )
            return;     // no input variables to validate
        
        // iterator thru each input variable to check if it is one of the supported types
        Iterator<ExpressionVariable> iterVars = expr.getVariables().iterator();
        while( iterVars.hasNext() )
        {
            ExpressionVariable exprVar = iterVars.next();
            
            boolean isSupported = false;
            for( int i=0; i < supportedVarTypes.length; i++ )
            {
                if( exprVar.getType() == supportedVarTypes[i] )
                {
                    isSupported = true;     // is a supported type
                    break;
                }
            }
            
            // expr variable is not a supported type
            if( ! isSupported )
                throw newAggregateException( 
                        Messages.bind( Messages.querySpec_UNEXPECTED_EXPR_VARIABLE_TYPE, exprVar ), 
                        expr );
        }        
    }

    /**
     * Validates that the data type of the specified expression variable is one of the
     * supported data types listed in the VariableRestrictions.
     * @param exprVar   an expression variable
     * @param varRestrictions   supported data types defined by an oda dynamicResultSet extension
     * @param odaDataSourceId   the id of an oda.dataSource extension
     * @param dataSetType       the id of a data set type defined by an oda.dataSource extension;
     *                          used to map native data type to corresponding ODA data type
     * @throws OdaException  if validation fails
     */
    public static void validateSupportedVariableDataTypes( ExpressionVariable exprVar, 
            VariableRestrictions varRestrictions, String odaDataSourceId, String dataSetType ) 
        throws OdaException
    {
        // TODO - validate ExpressionVariable's instance type is one of restrictedInstanceTypes 
        if( exprVar.getType() == VariableType.INSTANCE_OF )
            return;     // validation is not supported yet 
        
        if( exprVar.getNativeDataType() == null )
            return;     // no native data type to validate
        
        int[] restrictedOdaDataTypes = null;
//        String[] restrictedInstanceTypes = null;
        boolean hasRestrictedOdaDataTypes = false;
        boolean hasRestrictedInstanceTypes = false;
        switch( exprVar.getType() )
        {
            case RESULT_SET_COLUMN:
                restrictedOdaDataTypes = varRestrictions.getResultColumnRestrictedOdaDataTypes();
                if( restrictedOdaDataTypes.length > 0 )
                    hasRestrictedOdaDataTypes = true;
                break;
            case QUERY_EXPRESSION:
                restrictedOdaDataTypes = varRestrictions.getQueryExpressionRestrictedOdaDataTypes();
                if( restrictedOdaDataTypes.length > 0 )
                    hasRestrictedOdaDataTypes = true;
                break;
//            case INSTANCE_OF:
//                restrictedInstanceTypes = varRestrictions.getInstanceRestrictedTypes();
//                if( restrictedInstanceTypes.length > 0 )
//                    hasRestrictedInstanceTypes = true;
//                break;
        }
        if( ! hasRestrictedOdaDataTypes && ! hasRestrictedInstanceTypes )
            return;     // has no type restrictions
        
        boolean meetsRestriction = false;
        if( hasRestrictedOdaDataTypes )
        {
            // look up oda data type from the ExpressionVariable's native data type
            int nativeDataType = exprVar.getNativeDataType().intValue();
            int odaDataType = Types.NULL;
            if( odaDataSourceId != null && odaDataSourceId.length() > 0 )
            {
                odaDataType = ManifestExplorer.getInstance( ).getDefaultOdaDataTypeCode( 
                        nativeDataType, odaDataSourceId, dataSetType );
            }
            
            if( odaDataType == Types.NULL )     // oda data type is unknown 
                return;     // unable to validate
            
            // check if the variable's oda type is one of the allowed data types
            for( int i=0; i < restrictedOdaDataTypes.length; i++ )
            {
                if( restrictedOdaDataTypes[i] == odaDataType )
                {
                    meetsRestriction = true;
                    break;
                }
            }
            if( ! meetsRestriction )
                throw newOdaException( Messages.bind( Messages.querySpec_NONSUPPORTED_VAR_DATA_TYPE,
                        String.valueOf(nativeDataType), exprVar.getIdentifier() ),
                        exprVar.toString() );
        }
    }
    
    /**
     * Creates and returns an OdaException with the specified message and
     * an IllegalArgumentException cause with the specified causeIdentifier.
     * @param message
     * @param causeIdentifier
     * @return  a new OdaException
     */
    public static OdaException newOdaException( String message, String causeIdentifier )
    {
        OdaException odaEx = new OdaException( message );
        odaEx.initCause( new IllegalArgumentException( causeIdentifier ) );
        return odaEx;
    }
    
    private static OdaException newOdaException( String message, String causeIdentifier, 
            OdaException chainedEx )
    {
        if( causeIdentifier == null )
            return ( chainedEx != null ) ? chainedEx : new OdaException( message );
        
        OdaException rootEx = newOdaException( message, causeIdentifier );
        addException( rootEx, chainedEx );
        return rootEx;
    }
    
    /**
     * Adds the new OdaException object to the end of the OdaException chain.
     * @param rootEx    the root of an OdaException chain
     * @param newEx     a new OdaException to append to the end of the chain
     * @return
     */
    public static OdaException addException( OdaException rootEx, OdaException newEx )
    {
        if( rootEx == null )
            return newEx;  // nothing to append to
        if( newEx != null )
            rootEx.setNextException( newEx );
        return rootEx;
    }
    
    /**
     * Creates and returns a top-level OdaException to indicate that the 
     * specified FilterExpression is the cause of the specified driverEx exception.
     * @param invalidFilterExpr a top-level FilterExpression that is invalid
     * @param driverEx  optional detail OdaException thrown by an ODA driver that has detected 
     *              the invalid state; may be null
     * @return  an OdaException chain with the specified invalid FilterExpression
     *          identified as the cause
     * @see {@link #isInvalidFilterExpression(FilterExpression, OdaException)}
     */
    public static OdaException newFilterExprException( FilterExpression invalidFilterExpr, OdaException driverEx )
    {
        return newFilterExprException( Messages.querySpec_INVALID_FILTER_EXPR, invalidFilterExpr, driverEx );
    }
    
    /**
     * Creates and returns an OdaException with the specified FilterExpression identified as the cause.
     * @param message   custom exception message
     * @param invalidFilterExpr    the invalid FilterExpression to set as the cause
     * @return  an OdaException with the specified message and invalid FilterExpression
     *          identified as the cause
     * @see {@link #isInvalidFilterExpression(FilterExpression, OdaException)}
     */
    public static OdaException newFilterExprException( String message, FilterExpression invalidFilterExpr )
    {
        return newFilterExprException( message, invalidFilterExpr, null );
    }
    
    private static OdaException newFilterExprException( String message, FilterExpression invalidFilterExpr, 
            OdaException chainedEx )
    {
        // if this filter expr is already identified as a cause in the caught exception,
        // proceed to use it as is; otherwise, add this filter expr as the root cause 
        if( chainedEx != null && isInvalidFilterExpression( invalidFilterExpr, chainedEx ) )
            return chainedEx;
        return newOdaException( message, getInstanceId( invalidFilterExpr ), chainedEx );
    }
    
    /**
     * Indicates whether the specified FilterExpression is identified as one of the cause(s)
     * in the specified OdaException chain.
     * @param filterExpr    a filter expression whose processing might have caused
     *          an OdaException
     * @param rootEx    the root of an OdaException chain caught while processing 
     *          the filter expression
     * @return  true if the specified FilterExpression is one of the cause(s) in the OdaException chain;
     *          false otherwise
     */
    public static boolean isInvalidFilterExpression( FilterExpression filterExpr, OdaException rootEx )
    {
        if( filterExpr == null )
            return true;

        String filterExprId = getInstanceId( filterExpr );
        OdaException currentEx = rootEx;
        while( currentEx != null )
        {
            Throwable cause = currentEx.getCause();
            if( cause instanceof IllegalArgumentException && 
                    filterExprId.equals( cause.getMessage() ) )
                return true;
            
            currentEx = currentEx.getNextException();
        }

        return false;
    }
    
    /**
     * Creates and returns a top-level OdaException to indicate that the 
     * specified aggregate expression is the cause of the specified driverEx exception.
     * @param invalidAggrExpr a top-level aggregate expression that is invalid
     * @param driverEx  optional detail OdaException thrown by an ODA driver that has detected 
     *              the invalid state; may be null
     * @return  an OdaException chain with the specified invalid aggregate expression
     *          identified as the cause
     * @see {@link #isInvalidAggregateExpression(AggregateExpression, OdaException)}
     */
    public static OdaException newAggregateException( AggregateExpression invalidAggrExpr, OdaException driverEx )
    {
        return newAggregateException( Messages.querySpec_INVALID_AGGR_EXPR, invalidAggrExpr, driverEx );
    }
    
    /**
     * Creates and returns an OdaException with the specified AggregateExpression identified as the cause.
     * @param message   custom exception message
     * @param invalidAggrExpr    the invalid AggregateExpression to set as the cause
     * @return  an OdaException with the specified message and invalid AggregateExpression
     *          identified as the cause
     * @see {@link #isInvalidAggregateExpression(AggregateExpression, OdaException)}
     */
    public static OdaException newAggregateException( String message, AggregateExpression invalidAggrExpr )
    {
        return newAggregateException( message, invalidAggrExpr, null );
    }
    
    private static OdaException newAggregateException( String message, AggregateExpression invalidAggrExpr, 
            OdaException chainedEx )
    {
        // if this aggregate expr is already identified as a cause in the caught exception,
        // proceed to use it as is; otherwise, add this expr as the root cause 
        if( chainedEx != null && isInvalidAggregateExpression( invalidAggrExpr, chainedEx ) )
            return chainedEx;
        return newOdaException( message, getInstanceId( invalidAggrExpr ), chainedEx );
    }
    
    /**
     * Indicates whether the specified aggregate expression is identified as one of the cause(s)
     * in the specified OdaException chain.
     * @param aggrExpr    an aggregate expression whose processing might have caused an OdaException
     * @param rootEx    the root of an OdaException chain caught while processing 
     *          the aggregate expression
     * @return  true if the specified aggregate expression is one of the cause(s) in the OdaException chain;
     *          false otherwise
     */
    public static boolean isInvalidAggregateExpression( AggregateExpression aggrExpr, OdaException rootEx )
    {
        if( aggrExpr == null )
            return true;

        String aggrExprId = getInstanceId( aggrExpr );
        OdaException currentEx = rootEx;
        while( currentEx != null )
        {
            Throwable cause = currentEx.getCause();
            if( cause instanceof IllegalArgumentException && 
                    aggrExprId.equals( cause.getMessage() ) )
                return true;
            
            currentEx = currentEx.getNextException();
        }

        return false;
    }

    private static String getInstanceId( FilterExpression filterExpr )
    {
        if( filterExpr == null )
            return null;
        return filterExpr.getQualifiedId() + AT_SYMBOL + Integer.toHexString( filterExpr.hashCode() );
    }
    
    private static String getInstanceId( AggregateExpression aggrExpr )
    {
        if( aggrExpr == null )
            return null;
        return aggrExpr.getAlias() + AT_SYMBOL + Integer.toHexString( aggrExpr.hashCode() );
    }
    
}
