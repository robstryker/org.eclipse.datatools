#
#************************************************************************
# Copyright (c) 2007 Actuate Corporation.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#  Actuate Corporation - initial API and implementation
#  
#************************************************************************
#
# Externalized messages of the Web Services Data Source Designer

#page.type.name

# Common

# WebServiceSelectionPage
webServiceSelectionPage.message.default=Fuente de datos de servicios web
webServiceSelectionPage.message.error=Indique la URL del punto final de SOAP o seleccione un descriptor WSDL.
webServiceSelectionPage.group.wsdl=Descriptor WSDL
webServiceSelectionPage.group.endPoint=Punto final de &SOAP
webServiceSelectionPage.group.customClass=C&lase de controlador personalizado
webServiceSelectionPage.group.classPath=Ru&ta de clase del controlador
webServiceSelectionPage.label.wsdl=Si el descriptor WSDL del servicio Web est� disponible, introduzca su URL o busque su ubicaci�n en el sistema de archivos local.
webServiceSelectionPage.label.wsdlURI=URL o ubicaci�n de &WSDL:
webServiceSelectionPage.label.endPoint=Especifique la URL del punto final de SOAP. Puede omitir este valor si se debe utilizar el punto final definido en WSDL o si no est� utilizando un tipo de conexi�n personalizada que no necesita una URL de punto final.
webServiceSelectionPage.label.customClass=Si se ha realizado una conexi�n o consulta de los servicios Web a trav�s de una clase Java personalizada, introduzca el nombre de clase completo aqu�.
webServiceSelectionPage.label.classPath=Una lista separada por punto y coma (;) de directorios y archivos JAR adicionales para buscar la clase de controlador personalizado.
webServiceSelectionPage.button.browse=&Examinar...

# OperationPage
operationPage.message.default=Seleccione una operaci�n definida en el descriptor WSDL de la fuente de datos.
operationPage.message.regenerate.SOAPRequest=Vuelva a generar la solicitud de SOAP y vuelva a conectar el punto final de acuerdo con la operaci�n cambiada.
operationPage.title.operationChanged=Operaci�n cambiada
operationPage.label.selectOpearation=&Operaci�n seleccionada
operationPage.label.document=&Documentaci�n

# SoapParametersPage
soapParametersPage.message.default=Introduzca los par�metros de la operaci�n WSDL que ha seleccionado.
soapParametersPage.button.selectAll=&Seleccionar todo
soapParametersPage.button.deselectAll=&Anular la selecci�n de todo
soapParametersPage.column.paramName=N&ombre
soapParametersPage.column.dataType=&Tipo de datos

# SoapRequestPage
soapRequestPage.message.defaultTitle=Edite la plantilla de solicitud SOAP de este conjunto de datos. 
soapRequestPage.message.regenerateTemplate=Esto volver� a generar la plantilla del texto de consulta seg�n la operaci�n SOAP que ha seleccionado. Esta acci�n eliminar� cualquier modificaci�n que haya introducido en el texto.\n\n�Est� seguro?
soapRequestPage.label.prompt=Puede dejar el texto vac�o si la clase de conexi�n personalizada no necesita texto de consulta.
soapRequestPage.title.regenerateTemplate=Volver a generar la plantilla
soapRequestPage.button.regenerateTemplate=&Volver a generar la plantilla
soapRequestPage.button.insertParameter=&Editar par�metro...
soapRequestPage.button.clear=&Borrar
soapRequestPage.paramEditDialog.title=Editar propiedad del par�metro

# ParameterInputDialog
parameterInputDialog.column.name=&Nombre
parameterInputDialog.column.type=&Tipo de datos
parameterInputDialog.column.defaultValue=Va&lor predeterminado
parameterInputDialog.button.edit=&Editar...

# SoapResponsePage
soapResponsePage.message.default=Editar la respuesta SOAP.
soapResponsePage.group.schema=Seleccionar el esquema de respuesta SOAP.
soapResponsePage.group.xml=Seleccione un mensaje de respuesta SOAP de muestra.
soapResponsePage.radio.defaultSchema=Utilizar esquema de la respuesta de &operaci�n definido en fuente de datos WSDL.
soapResponsePage.radio.reponseSchema=Utilizar esquema de &respuesta.
soapResponsePage.radio.externalSchema=Utilizar archivo del esquema &XML externo:
soapResponsePage.radio.endPoint=Consultar servicios web en el punto &final de SOAP:
soapResponsePage.radio.externalXML=Utilizar archivo de &datos de muestra externo
soapResponsePage.button.browse1=E&xaminar...
soapResponsePage.button.browse2=E&xaminar...
soapResponsePage.button.connect=&Conectar ahora

# XMLTableMappingPage

# XMLColumnMappingPage

# WSConsole
wsConsole.message.error.cantRetrieveSOAPResponse=La respuesta SOAP no se puede recuperar, verifique la red o la configuraci�n de respuesta SOAP.
