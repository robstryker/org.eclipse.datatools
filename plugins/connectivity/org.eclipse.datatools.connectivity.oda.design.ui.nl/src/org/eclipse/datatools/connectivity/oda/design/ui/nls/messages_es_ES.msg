#
#************************************************************************
# Copyright (c) 2006, 2013 Actuate Corporation.
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
adaptableDataSourceProfile_unableAccessProfile=No se puede acceder al perfil vinculado en ({0}); se utilizar�n las propiedades locales del dise�o de fuente de datos.\n Provocado por la excepci�n: {1}
common_notInDesignSession=Actualmente no est� en una sesi�n de dise�o.
common_nullArgument=El argumento no debe ser nulo.
common_missingDataSourceDesign=Falta el dise�o de origen de datos en el argumento OdaDesignSession.
common_createClassFailed=No se puede encontrar ni crear la clase ({0}).
extension_mustInheritFromODAPage=Implementaci�n de p�gina de asistente ({0}) no v�lida. Una p�gina de asistente personalizada de ODA debe extenderse de {1}.
extension_mustInheritFromODAWizard=Implementaci�n de asistente ({0}) no v�lida. Un asistente personalizado de ODA debe utilizar o extenderse de {1}.
extension_missingManifestElement=Falta la implementaci�n del punto de extensi�n de dise�o de ODA ({0})
extension_missingPropertyPage=Falta la implementaci�n de p�gina de propiedades en la extensi�n de ui de dise�o de ODA.
wizard_dataSource_defaultTitle=Origen de datos nuevo
wizard_missingDataSourceId=Falta el ID de origen de datos ODA en el atributo de perfil de conexi�n.
wizard_invalidManifest=Contenido de manifiesto de plug-in no v�lido en la extensi�n oda.design.ui.dataSource.
page_defaultDataSourceTitle=Propiedades de origen de datos personalizado
designSession_alreadyHasLinkedProfile=La fuente de datos ({0}) ya ha externalizado sus propiedades en un perfil de conexi�n.  No se puede volver a exportar.
designSession_flushFailed=No ha sido posible procesar la sesi�n de dise�o del conjunto de datos actual.
designSession_invalidArgument=Se ha especificado un argumento no v�lido en el m�todo de sesi�n de dise�o.
designSession_invalidEditApiCall=Llamada API de sesi�n de dise�o no v�lida para editar un dise�o.
designSession_invalidNewDesignApiCall=Llamada API de sesi�n de dise�o no v�lida para crear un dise�o.
designSession_invalidProfileName=No se puede localizar el perfil vinculado ({0}) en el almacenamiento de perfil de conexi�n especificado.
designSession_invalidProfileNameOrFilePath=No se puede localizar el perfil vinculado ({0}) ni el archivo de almacenamiento del perfil de conexi�n ({1}) especificado en el dise�o de fuente de datos.
designSession_missingDataSetUIElement=No se ha definido ning�n elemento dataSetUI para OdaDataSourceId ({0}) ni OdaDataSetId ({1}).
manifest_missingAttributeValue=Falta el valor en el atributo necesario ({0}).
manifest_missingDataSetElementId=El argumento dataSetElementID necesita un valor.
manifest_invalidDataSetElementId=ID de elemento dataSet no v�lido ({0}).
manifest_dataSetUi_missingPageId=Se necesita un valor de pageId.
manifest_dataSetUi_invalidPageId=Valor de pageId no v�lido ({0}).
manifest_dataSetUi_missingElement=Se necesita un elemento {0} en la extensi�n.
ui_defaultDataSourceTitle=Propiedades de conexi�n de fuente de datos
ui_replaceFilePrompt={0} ya existe. �Desea sustituirla?
ui_requiredFieldsMissingValue=Falta un valor para uno o varios campos necesarios (marcados con '*').
ui_errorLabel=Error
ui_errorCreatingCustomCtrls=Se ha producido un error al crear e inicializar controles personalizados.
ui_saveAsTitle=Guardar como
profilePage_pageTitle=Seleccionar un perfil de conexi�n
profilePage_pageLabel=Perfil de conexi�n
profilePage_selectProfileDefaultMessage=Seleccionar el perfil de conexi�n desde el que crear una fuente de datos
profilePage_label_profileStore=Almacenamiento de perfil de &conexi�n:
profilePage_button_browse=&Examinar...
profilePage_button_relativepath=&Ruta relativa
profilePage_button_absolutepath=&Ruta absoluta
profilePage_button_browse_filter=&Extensiones de archivo que se van a mostrar:
profilePage_button_browse_filter_tooltiptext=Especifique una o varias extensiones de archivo separadas por coma para filtrar los archivos mostrados m�s abajo.\nPor ejemplo: .txt, .profiles
profilePage_button_new=&Nuevo...
profilePage_button_browse_tooltip=Busque un archivo de almacenamiento del perfil de conexi�n.\nRuta relativa: ruta relativa basada en los recursos del anfitri�n.\nRuta absoluta: ruta absoluta del sistema de archivos.
profilePage_resourcebaseuri_failure=Error al obtener URI de base de recurso de aplicaci�n
profilePage_browse_noselection_error=Especifique un nombre de archivo de almacenamiento del perfil de conexi�n 
profilePage_odaTreeName=Fuentes de datos ODA
profilePage_checkboxLabel_useDefaultName=&Utilizar el nombre de fuente de datos predeterminado
profilePage_label_dataSourceName=&Nombre de fuente de datos:
profilePage_error_emptyName=El nombre de la fuente de datos no puede estar vac�o.
profilePage_checkboxTooltip_maintainLink=Utilice siempre los valores de propiedad externalizados del almacenamiento del perfil de conexi�n en la fuente de datos.
profilePage_checkboxLabel_maintainLink=Utilizar propiedades &externalizadas en el almacenamiento de perfil de conexi�n
profilePage_error_invalidName=El nombre de la fuente de datos no es v�lido.
profilePage_error_invalidProfileStorePath=Ruta no v�lida para almacenamiento de perfil de conexi�n
profilePage_deprecatedProfileDisplayName={0} (reemplazado por {1})
profileStoreCreationDialog_button_new=&Nuevo...
profileStoreCreationDialog_title=Crear almacenamiento de perfil de conexi�n
profileStoreCreationDialog_grouptext=Seleccione los &perfiles de conexi�n que se incluir�n en el almacenamiento:
profileStoreCreationDialog_newbutton_tooltiptext=Crear un nuevo perfil de conexi�n
profileStoreCreationDialog_fileext_error=El archivo de almacenamiento del perfil de conexi�n debe tener una extensi�n de archivo.\nPulse Aceptar para agregar la extensi�n de archivo predeterminada".{0}" al nombre del archivo.
dbProfilePage_defaultPageMessage=Verifique el controlador JDBC y los detalles de conexi�n
dbProfilePage_editPageMessage=Editar el controlador JDBC y los detalles de conexi�n
dbProfilePage_invalidDataSource=Fuente de datos no v�lida.  Actualice la referencia del perfil de conexi�n o cree una nueva fuente de datos.
dbProfilePage_notInDesignSession=No es posible abrir la p�gina de propiedades fuera de una sesi�n de dise�o ODA.
dbProfilePage_noCustomPage=No es posible encontrar y abrir la p�gina de propiedades espec�fica del controlador de la base de datos.
preferencesPage_openDataAccessDescription=Establezca las preferencias para las fuentes de datos de acceso a datos abiertos individuales \na trav�s de las p�ginas recogidas en este nodo.
