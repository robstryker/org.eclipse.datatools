###############################################################################
# Copyright (c) 2001, 2004, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
#     IBM Corporation - initial API and implementation
###############################################################################
pluginName=Eclipse Data Tools Platform SQM UI Plug-in
providerName=Eclipse Data Tools Platform

#
## Extension Point Names
#
LABEL_SERVICE_EXTENSION_POINT_NAME=labelService
ELEMENT_ID_EXTENSION_POINT_NAME=elementID
MARKER_NAVIGATION_PROVIDER_EXTENSION_POINT_NAME=markerNavigationProvider
DATA_SOURCE_EXPLORER_SORTER=sorterValidatorProvider
FILTER_INFORMATION_EXTENSION_POINT_NAME=filterInformation

#
## Model Explorer Selection
#
datatools.core.ui.modelExplorerSelection = Selecci�n del explorador del modelo

#
## Preferences for Label Decoration
#
datatools.core.ui.preferences.labeldecorators = Decoraciones de etiqueta

#
## Preferences
#
datatools.core.ui.preferences.data = Desarrollo de SQL
datatools.core.ui.preferences.output = Salida

#
## Views
#
datatools.core.ui.modelElementProperties = Propiedades del elemento del modelo de datos
datatools.core.ui.views.interactiveSQL = Mostrar SQL

#
## Model Explorer
#
datatools.core.ui.contentProviders = Proveedor de contenido de modelo f�sico
datatools.core.ui.parserProviders = Proveedor de analizador de modelo f�sico
datatools.core.ui.iconProviders = Proveedor de icono de modelo f�sico

#
## Nature 
#
datatools.core.ui.projectNature = Naturaleza de los datos del proyecto de base de datos

#
## Wizards
# 
datatools.core.ui.category.project = Base de datos
datatools.core.ui.category.model = Modelo de base de datos
datatools.core.ui.project.basic = Proyecto de dise�o de datos
datatools.core.ui.project.description = Crear un proyecto de dise�o de datos
datatools.core.ui.model.basic = Modelo de datos f�sico

#
## Preferences
#
datatools.core.ui.preferences.modeler = Datos
datatools.core.ui.preferences.default = Resultados de la base de datos

#
## Popup && Actions
#
datatools.core.ui.actions.close = Cerrar
datatools.core.ui.actions.add = A�adir SQL
datatools.core.ui.actions.addMQT = MQT
datatools.core.ui.actions.addSchema = Esquema
datatools.core.ui.actions.addTable = Tabla
datatools.core.ui.actions.addView = Ver
datatools.core.ui.actions.addColumn = Columna
datatools.core.ui.actions.delete = Eliminar
datatools.core.ui.actions.addTrigger = Activador
datatools.core.ui.globalActionHandlerProviders = Acciones globales de datos
datatools.core.ui.actions.selectSupplier = Navegar a la tabla de restricciones exclusivas
datatools.core.ui.actions.fe=Generar DDL...
datatools.core.ui.actions.re=Inversi�n del c�digo a partir de DDL...
datatools.core.ui.actions.dataModeler = Modelador de datos
datatools.core.ui.actions.addDomain = Dominio
datatools.core.ui.actions.addSequence = Secuencia
datatools.core.ui.actions.addStoredProcedure = Stored Procedure
datatools.core.ui.actions.addJavaStoredProcedure = Stored procedure Java
datatools.core.ui.actions.generateForeignKeyIndex = �ndice
datatools.core.ui.actions.generatePrimaryKeyIndex = �ndice
datatools.core.ui.actions.addDatabase = Base de datos
datatools.core.ui.actions.addTableIndex = �ndice
datatools.core.ui.actions.addTableCheckConstraint = Comprobar restricci�n
datatools.core.ui.actions.addUniqueConstraint = Restricci�n exclusiva
datatools.core.ui.actions.addAlias = Alias
datatools.core.ui.actions.addDistinctUDT = Tipo diferenciado definido por el usuario 
datatools.core.ui.actions.addStructuredUDT = Tipo estructurado definido por el usuario 
datatools.core.ui.actions.addMQTIndex = �ndice
datatools.core.ui.actions.addMQTTrigger = Activador
#
## Editors
#
datatools.core.ui.model.editor = Editor de modelo SQL

#
## Decorators
#
datatools.core.ui.modelexplorer.modelExplorerColumnDecoration = Herramientas de datos: tipo de datos de columna
datatools.core.ui.modelexplorer.modelExplorerForeignKeyDecoration = Herramientas de datos: indicador de clave primaria o externa
datatools.core.ui.modelexplorer.DependencyDecoration = Herramientas de datos: decoraci�n de dependencia
datatools.core.ui.modelexplorer.bookmarkDecoration  = Herramientas de datos: indicador de marcador
datatools.core.ui.modelexplorer.filterDecoration = Herramientas de datos: indicador de nodo de filtro de explorador de servidor
datatools.core.ui.modelexplorer.indextriggerDecoration = Herramientas de datos: decoraci�n de �ndice y activador

#
## Model Explorer Sorter Provider
#
datatools.core.ui.modelexplorer.sorterProviders = Proveedor de ordenaci�n del explorador del modelo
datatools.core.ui.modelexplorer.menu.storageOrderSorter = Orden de almacenamiento
datatools.core.ui.modelexplorer.menu.name = Nombre
datatools.core.ui.modelexplorer.menu.type = Tipo
datatools.core.ui.modelexplorer.menu.stereotype = Estereotipo
datatools.core.ui.modelexplorer.menu.visibility = Visibilidad

#
## Model Explorer DnD
#
datatools.core.ui.modelexplorer.dragDrop = Arrastrar y colocar

#
## Marker
#
datatools.core.ui.modelexplorer.marker.dangling = Referencia colgada


#
## Type for Label Service 
#
database = Base de datos
schema = Esquema
baseTable = Tabla
column = Columna
domain = Dominio
udt = Tipo definido por el usuario
index = �ndice
procedure = Stored Procedure
view = Ver
parameter = Par�metro
trigger = Activador
sequence = Secuencia
source= Fuente
attributeDefinition = Definici�n de atributo
function = Funci�n definida por el usuario
dependency = Dependencia
primaryKey = Clave primaria
foreignKey = Clave externa
folder = Carpeta l�gica
CheckConstraint = Comprobar restricci�n
UniqueConstraint = Restricci�n exclusiva
existingConnection = Carpeta de conexiones
connectedConnection = Conexi�n en directo
disconnectedConnection = Conexi�n desconectada
cachedConnection = Conexi�n en cach�
catalog = Cat�logo
user = Usuario
group = Grupo
role = Funci�n
authorization = ID de autorizaci�n

DEFAULT_SCHEMA_FILTER_PROPERTY_PAGE_NAME=Filtro de esquema predeterminado
DEFAULT_TABLE_FILTER_PROPERTY_PAGE_NAME=Filtro de tabla predeterminado
DEFAULT_STORED_PROCEDURE_FILTER_PROPERTY_PAGE_NAME=Filtro de stored procedure predeterminado
FILTER_SETTINGS_PROPERTY_PAGE_NAME=Ajustes de filtro
