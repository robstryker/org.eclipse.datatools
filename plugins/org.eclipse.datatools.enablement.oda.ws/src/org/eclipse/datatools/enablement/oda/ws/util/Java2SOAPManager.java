/*******************************************************************************
 * Copyright (c) 2007 Actuate Corporation.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *  Actuate Corporation - initial API and implementation
 *******************************************************************************/

package org.eclipse.datatools.enablement.oda.ws.util;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.HashMap;
import java.util.Map;

import org.eclipse.datatools.connectivity.oda.OdaException;
import org.eclipse.datatools.connectivity.oda.util.manifest.ExtensionManifest;
import org.eclipse.datatools.connectivity.oda.util.manifest.ManifestExplorer;

public class Java2SOAPManager
{

	private static final String METHOD_CONNECT = "connect";//$NON-NLS-1$
	private static final String METHOD_QUERY = "executeQuery";//$NON-NLS-1$
	private static final String METHOD_CLOSE = "close";//$NON-NLS-1$
	private static final String semicolon= ";";//$NON-NLS-1$
	
	// connection
	private Map connectionProperties;
	private Map appConext; // non-null

	// query
	private String queryText;
	private Map parameterValues;
	private Map queryProperties;

	private Object aQuery;

	/**
	 * Make ready the custom connection instance which is able to retrieve an
	 * inputstream when calling query method
	 * 
	 * @param className
	 * @throws SecurityException
	 * @throws NoSuchMethodException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws OdaException
	 * @throws IOException
	 * @throws URISyntaxException
	 */
	public void newQuery( String className ) throws SecurityException,
			NoSuchMethodException, IllegalArgumentException,
			IllegalAccessException, InvocationTargetException,
			ClassNotFoundException, InstantiationException, OdaException,
			IOException, URISyntaxException
	{
		Class clazz = loadClass( className );
		Class[] parameterTypes = new Class[]{
				Map.class, Map.class
		};
		Object[] arguments = new Object[]{
				connectionProperties, getAppConext( )
		};

		Method connect = clazz.getMethod( METHOD_CONNECT, parameterTypes );

		aQuery = connect.invoke( clazz.newInstance( ), arguments );
	}

	/**
	 * Make ready the custom connection instance which is able to retrieve an
	 * inputstream when calling query method, probablely with urlList(class
	 * path)
	 * 
	 * @param className
	 * @param urlList
	 * @throws SecurityException
	 * @throws NoSuchMethodException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws OdaException
	 * @throws IOException
	 * @throws URISyntaxException
	 */
	public void newQuery( String className, String driverPath )
			throws SecurityException, NoSuchMethodException,
			IllegalArgumentException, IllegalAccessException,
			InvocationTargetException, ClassNotFoundException,
			InstantiationException, OdaException, IOException,
			URISyntaxException
	{
		URL[] urlList =null;
		if ( driverPath != null )
		{
			String[] dPath = driverPath.split( semicolon );

			urlList = new URL[dPath.length];
			for ( int i = 0; i < dPath.length; i++ )
			{
				File file = new File( dPath[i].toString( ) );
				urlList[i] = file.toURI( ).toURL( );
			}
		}
		Class clazz = loadClass( className, urlList );
		Class[] parameterTypes = new Class[]{
				Map.class, Map.class
		};
		Object[] arguments = new Object[]{
				connectionProperties, getAppConext( )
		};

		Method connect = clazz.getMethod( METHOD_CONNECT, parameterTypes );

		aQuery = connect.invoke( clazz.newInstance( ), arguments );
	}

	/**
	 * newQuery is expected to be called already
	 * 
	 * @return InputStream
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @throws SecurityException
	 * @throws NoSuchMethodException
	 */
	public Object executeQuery( ) throws IllegalArgumentException,
			IllegalAccessException, InvocationTargetException,
			SecurityException, NoSuchMethodException
	{
		if ( WSUtil.isNull( aQuery ) )
			return null;

		Class clazz = aQuery.getClass( );
		Class[] parameterTypes = new Class[]{
				String.class, Map.class, Map.class
		};
		Object[] arguments = new Object[]{
				queryText, parameterValues, queryProperties
		};

		Method query = clazz.getMethod( METHOD_QUERY, parameterTypes );

		return query.invoke( aQuery, arguments );
	}

	/**
	 * 
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws IllegalArgumentException
	 * @throws SecurityException
	 * @throws NoSuchMethodException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public void close( ) throws IllegalArgumentException,
			IllegalAccessException, InvocationTargetException
	{
		Class clazz = aQuery.getClass( );
		Class[] parameterTypes = new Class[]{};
		Object[] arguments = new Object[]{};

		Method close = null;

		try
		{
			close = clazz.getMethod( METHOD_CLOSE, parameterTypes );
		}
		catch ( SecurityException e )
		{
		}
		catch ( NoSuchMethodException e )
		{
		}

		if ( close == null )
			return;
		close.invoke( aQuery, arguments );
	}

	private Class loadClass( String className ) throws ClassNotFoundException,
			OdaException, IOException, URISyntaxException
	{
		try
		{
			return Class.forName( className );
		}
		catch ( ClassNotFoundException e )
		{
			// try to load the class from lib
			URL[] urls = new URL[1];
			urls[0] = getLibDirectory( );

			URLClassLoader urlClassLoader = createClassLoader( urls );

			return urlClassLoader.loadClass( className );
		}
	}

	private Class loadClass( String className, URL[] urlList )
			throws ClassNotFoundException, OdaException, IOException,
			URISyntaxException
	{
		if ( urlList != null && urlList.length >0 )
		{
			try
			{
				URLClassLoader urlClassLoader = createClassLoader( urlList );
				return urlClassLoader.loadClass( className );
			}
			catch ( ClassNotFoundException e )
			{
				return loadClass(className);
			}
		}
		else
		{
			return loadClass(className);
		}
	}

	private URL getLibDirectory( ) throws OdaException, IOException,
			URISyntaxException
	{
		URL url = getInstallDirectory( );
		if ( url == null )
			return null;

		return new URL( url.toString( ) + Constants.DIRECTORY_LIB + "/" ); //$NON-NLS-1$
	}

	private URL getInstallDirectory( ) throws OdaException, IOException
	{
		ExtensionManifest extMF = null;

		extMF = ManifestExplorer.getInstance( )
				.getExtensionManifest( Constants.DATA_SOURCE_ID );

		if ( extMF != null )
			return extMF.getDriverLocation( );

		return null;
	}

	private URLClassLoader createClassLoader( URL[] urlList )
			throws MalformedURLException
	{
		return new URLClassLoader( urlList, this.getClass( ).getClassLoader( ) );
	}

	/**
	 * 
	 * @return
	 */
	public Map getAppConext( )
	{
		return appConext == null ? new HashMap( ) : appConext;
	}

	/**
	 * 
	 * @param appConext
	 */
	public void setAppConext( Map appConext )
	{
		this.appConext = appConext;
	}

	/**
	 * 
	 * @param connectionProperties
	 */
	public void setConnectionProperties( Map connectionProperties )
	{
		this.connectionProperties = connectionProperties;
	}

	/**
	 * 
	 * @param parameterValues
	 */
	public void setParameterValues( Map parameterValues )
	{
		this.parameterValues = parameterValues;
	}

	/**
	 * 
	 * @param queryProperties
	 */
	public void setQueryProperties( Map queryProperties )
	{
		this.queryProperties = queryProperties;
	}

	/**
	 * 
	 * @param queryText
	 */
	public void setQueryText( String queryText )
	{
		this.queryText = queryText;
	}

}
