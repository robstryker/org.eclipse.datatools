#
#************************************************************************
# Copyright (c) 2004, 2013 Actuate Corporation.
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
logManager_duplicateName=Un consignateur du m�me nom existe d�j�.
#
manifest_CANNOT_FIND_EXTENSION=Impossible de trouver l'extension de source de donn�es ODA ({0}).\n En cas de probl�me avec le chargement de l'inclusion d'extension et de ses d�pendances, consultez le fichier journal de l'espace de travail.
manifest_nullArgument=L'argument ne doit pas �tre null.
manifest_NO_DATA_SOURCE_EXTN_ID_DEFINED=L'extension de la source de donn�es plugin.xml du pilote ODA ne contient pas d'attribut d'ID.
manifest_INVALID_VERSION_VALUE=Le fichier plugin.xml du pilote ODA contient une valeur odaVersion incorrecte ({0}) dans l''extension de la source de donn�es ({1}).
manifest_NO_DRIVER_CLASS_DEFINED=Le fichier plugin.xml du pilote ODA ne contient pas d''attribut driverClass dans l''extension de la source de donn�es ({0}).
manifest_INVALID_SET_THREAD_CONTEXT_CLASSLOADER_VALUE=Le fichier plugin.xml du pilote ODA contient une valeur setThreadContextClassLoader incorrecte ({0}) dans l''extension de la source de donn�es ({1}).
manifest_NO_DATA_SET_TYPES_DEFINED=Aucun �l�ment <dataSet> n''est d�fini pour l''extension de la source de donn�es ODA ({0}) dans le manifeste d''extension.  Cette configuration est valide, mais elle limite les capacit�s de l''extension ODA.
manifest_NO_ATTRIBUTE_ID_DEFINED=L''extension du plug-in du pilote ODA ne contient pas d''attribut ({0}) dans l''�l�ment ({1}).
manifest_NO_DATA_TYPE_MAPPINGS_DEFINED=Le fichier plugin.xml du pilote ODA doit avoir au moins un �l�ment <dataTypeMapping> d�fini pour l''�l�ment <dataSet> ({0}).
manifest_NO_NATIVE_TYPE_CODE_DEFINED=Le fichier plugin.xml du pilote ODA ne contient pas d''attribut nativeDataTypeCode dans l''�l�ment <dataTypeMapping> ({0}) du fichier <dataSet> ({1}).
manifest_INVALID_NATIVE_TYPE_CODE_VALUE=Le fichier plugin.xml du pilote ODA contient une valeur nativeDataTypeCode incorrecte ({0}) dans l''�l�ment <dataTypeMapping> ({1}) de <dataSet> ({2}).
manifest_NO_NATIVE_TYPE_NAME_DEFINED=Le fichier plugin.xml du pilote ODA ne contient pas d''attribut nativeDataType dans l''�l�ment <dataTypeMapping> de <dataSet> ({0}).
manifest_NO_ODA_SCALAR_DATA_TYPE_DEFINED_1=Le fichier plugin.xml du pilote ODA ne contient pas d''attribut odaScalarDataType dans l''�l�ment <dataTypeMapping> ({0}).
manifest_NO_ODA_SCALAR_DATA_TYPE_DEFINED_2=Le fichier plugin.xml du pilote ODA ne contient pas d''attribut odaScalarDataType dans l''�l�ment <alternativeOdaDataType> de <dataTypeMapping> ({0}).
manifest_INVALID_ODA_SCALAR_DATA_TYPE_VALUE=Le fichier plugin.xml du pilote ODA contient une valeur incorrecte odaScalarDataType ({0}) dans l''�l�ment <dataTypeMapping> ({1}).
manifest_INVALID_LOG_LEVEL_VALUE=Le fichier plugin.xml du pilote ODA contient une valeur logLevel incorrecte ({0}) dans l''extension de la source de donn�es ({1}).
manifest_MISSING_ELEMENT_IN_EXTENSION_MANIFEST=Un �l�ment {1} manque pour l'extension ({0}).
manifest_NO_LOG_FILENAME_PREFIX_DEFINED=Le fichier plugin.xml du pilote ODA ne contient pas d''attribut logFileNamePrefix dans l''�l�ment <traceLogging> de l''extension de la source de donn�es ({0}).
manifest_UNKNOWN_BUNDLE_LOCATION=Impossible de localiser le chemin d'installation de l'extension ODA ({0}).  L'application consommateur ODA doit sp�cifier un ID de ressource dans l'appContext pour r�soudre le chemin.
#
sortSpec_INVALID_SORT_MODE_SPECIFIED=Mode de tri sp�cifi� incorrect \: {0}.
sortSpec_NULL_COLUMN_NAME_SPECIFIED=Nom de colonne null sp�cifi�.
sortSpec_INVALID_COLUMN_NAME_SPECIFIED=Nom de colonne sp�cifi� incorrect \: {0}.
sortSpec_INVALID_NULL_ORDERING=Valeur de commande nulle incorrecte : {0}.
sortSpec_INVALID_SORT_ORDER_SPECIFIED=Ordre de tri sp�cifi� incorrect \: {0}.
sortSpec_NO_DYNAMIC_SORT_KEY_FOR_SORTMODENONE=Cette sp�cification de tri avec sortModeNone n'autorise aucune cl� de tri dynamique.
sortSpec_ONE_SORTCOLUMN_FOR_SINGLE_COLUMN_MODE=Une colonne de tri existe d�j�.  Le mode sortModeSingleColumn autorise au maximum une colonne de tri dynamique.
sortSpec_ONE_SORTORDER_FOR_SINGLE_ORDER_MODE=Le mode sortModeSingleOrder prend en charge uniquement un ordre de tri.
sortSpec_ONLY_IN_SINGLE_ORDER_MODE=Pris en charge uniquement en mode sortModeSingleOrder.
sortSpec_INDEX_OUT_OF_BOUND=Index : {0}, nombre : {1}.
#
stringSubUtil_NO_STRING_VALUE_TO_REPLACE=Aucune valeur de cha�ne � remplacer \: {0}.
stringSubUtil_DELIMITER_CANNOT_BE_EMPTY=Le d�limiteur ne peut pas �tre une cha�ne vide ou contenir uniquement des espaces.
stringSubUtil_DELIMITER_CANNOT_BE_NULL=Le d�limiteur ne peut pas �tre null.
stringSubUtil_SUBSTITUTION_LIST_CANNOT_BE_NULL=La liste de substitution des cha�nes ne peut pas �tre null.
stringSubUtil_SUBSTITUTION_VALUE_CANNOT_BE_NULL=La valeur de substitution des cha�nes ne peut pas �tre null.
stringSubUtil_TEXT_STRING_CANNOT_BE_NULL=La cha�ne de texte ne peut pas �tre null.
stringSubUtil_NAME_VALUE_MAP_CANNOT_BE_NULL=La mappe nom-valeur ne peut pas �tre null.
#
profileProperty_PROFILE_NAME=Nom de &profil de connexion
profileProperty_PROFILE_STORE_PATH=&URL de l'emplacement de stockage des profils de connexion
profileProperty_GROUP_PROPERTIES=R�f�rence du profil de connexion externe
#
querySpec_CUSTOM_AGGR_EXCEED_MAX_ARGS=The custom aggregate expression ({0}) has {1} arguments, which exceeds the allowed maximum of {2} arguments.
querySpec_CUSTOM_AGGR_INCOMPATIBLE_DUPL_CHECK=Le type d''agr�gat personnalis� ({0}) ne peut ignorer les valeurs dupliqu�es.
querySpec_CUSTOM_AGGR_INCOMPATIBLE_NULL_CHECK=Le type d''agr�gat personnalis� ({0}) ne peut ignorer les valeurs nulles.
querySpec_CUSTOM_AGGR_LESS_THAN_MIN_ARGS=L'expression d'agr�gats personnalis�e ({0}) comporte {1} arguments, mais n'autorise pas moins de {2} arguments.
querySpec_CUSTOM_FILTER_EXCEED_MAX_ARGS=The custom filter expression ({0}) has {1} arguments, which exceeds the allowed maximum of {2} arguments.
querySpec_CUSTOM_FILTER_LESS_THAN_MIN_ARGS=L'expression de filtre personnalis�e ({0}) comporte {1} arguments, mais n'autorise pas moins de {2} arguments.
querySpec_CUSTOM_FUNC_EXCEED_MAX_ARGS=The custom function value expression ({0}) has {1} arguments, which exceeds the allowed maximum of {2} arguments.
querySpec_CUSTOM_FUNC_INCOMPATIBLE_DUPL_CHECK=The custom function type ({0}) cannot ignore duplicate values.
querySpec_CUSTOM_FUNC_LESS_THAN_MIN_ARGS=The custom function value expression ({0}) has {1} arguments, but requires a minimum of {2} arguments.
querySpec_EXTENSION_ID_NOT_FOUND=Aucune extension {0} trouv�e avec l''ID ({1}).
querySpec_ILLEGAL_CONSTRUCTOR_ARG=Illegal {0} constructor argument
querySpec_INCOMPLETE_COMBINED_QUERY=Sp�cification de requ�te combin�e incompl�te.
querySpec_INVALID_AGGR_EXPR=Expression d'agr�gats non valide.
querySpec_INVALID_AGGR_HIDE_COLUMN=Projection d'agr�gat non valide dans une colonne masqu�e {0}.
querySpec_INVALID_ARG=Argument non valide : {0}.
querySpec_INVALID_BASE_QUERY=Requ�te de base non valide.
querySpec_INVALID_CLASS_TYPE_ATTRIBUTE=Type de classe non valide ({0}).  L''attribut {1} doit �tre une instance de {2}.
querySpec_INVALID_COLUMN_IDENTIFIER=Invalid column reference {0}.
querySpec_INVALID_EXT_POINT_ATTR_VALUE=L''extension {0} ({1}) comporte une valeur incorrecte ({2}) pour l''attribut {3}.
querySpec_INVALID_EXT_POINT_ELEMENT=L''extension {0} ({1}) est non valide.  Reportez-vous � la d�finition du sch�ma pour conna�tre le contenu requis.
querySpec_INVALID_FILTER_EXPR=Expression de filtre incorrecte.
querySpec_INVALID_RESULT_PROJ=Projection de r�sultat non valide.
querySpec_INVALID_SORT_KEY=Cl� de tri non valide.
querySpec_INVALID_SORT_SPEC=Sp�cification de tri non valide.
querySpec_INVALID_VALUE_EXPR=Invalid value expression.
querySpec_MAX_ONE_NEGATING_EXPR=Impossible d'ajouter plus d'une expression de mise en n�gatif � {0}.
querySpec_MISSING_ATOMIC_QUERY_TEXT=Texte de requ�te manquant dans la requ�te de base atomique.
querySpec_MISSING_COMBINED_MATCHING_EXPR=Expression correspondante manquante dans la condition combin�e.
querySpec_MISSING_COMPOSITE_MIN_CHILDREN=Le composite {0} doit contenir au moins {1} expressions enfant.
querySpec_MISSING_EXPR_VARIABLE=Une variable associ�e manque dans l'expression de filtre ({0}).
querySpec_MISSING_EXT_POINT_ATTR_VALUE=La valeur de l''attribut {2} dans l'�l�ment {3} est manquante pour l''extension {0} ({1}).
querySpec_MISSING_EXT_POINT_ELEMENT=L''�l�ment {2} est manquant pour l''extension {0} ({1}).
querySpec_MISSING_EXT_POINT_MIN_ELEMENT=L''extension {0} ({1}) doit avoir au moins un �l�ment {2} d�fini.
querySpec_NON_DEFINED_COMBINED_OP=Impossible de trouver le type d'op�rateur de combinaison d'expressions ({0}) dans le registre des extensions du jeu de r�sultats dynamique.
querySpec_NON_DEFINED_CUSTOM_AGGR=L'expression d'agr�gats personnalis�e ({0}) est introuvable dans le registre des extensions du jeu de r�sultats dynamique.
querySpec_NON_DEFINED_CUSTOM_FILTER=L'expression de filtre personnalis�e ({0}) est introuvable dans le registre des extensions du jeu de r�sultats dynamique.
querySpec_NON_DEFINED_CUSTOM_FUNC=The custom function ({0}) is not found in the dynamicResultSet extension registry.
querySpec_NON_RELATED_QUERYSPEC=La colonne {0} dans une expression de requ�te ne peut pas �tre qualifi�e par une requ�te qui n'est pas l'une des requ�tes de combinaison.
querySpec_NONSUPPORTED_NULL_ORDERING=Sp�cification de commande nulle non prise en charge par le fournisseur de sources de donn�es.
querySpec_NONSUPPORTED_VAR_DATA_TYPE=The ODA data type ({0}) of the value expression ({1}) is not supported by the type of custom expression used.
querySpec_NOT_EXPR_INCOMPATIBLE=Utilisation incorrecte d''une expression ({0}) ne pouvant �tre ni�e dans un {1}.
querySpec_NOT_EXPR_MISSING_CHILD=Expression de mise en n�gatif manquante dans l''expression Pas : ({0}).
querySpec_NULL_CONSTRUCTOR_3ARGS=Null {0} constructor argument(s): {1}, {2}, {3}.
querySpec_NULL_CONSTRUCTOR_ARG=Null {0} constructor argument
querySpec_UNABLE_ADD_TO_NON_LIST_COLLECTION=Impossible d'ajouter une valeur aux valeurs existantes.  La valeur existante n'est pas au format java.util.List.
querySpec_UNEXPECTED_AGGR_EXPR_EXTENSION=Impossible de prendre en charge l'expression d'agr�gats personnalis�e ({0}) d'une autre extension.
querySpec_UNEXPECTED_AGGR_EXPR_TYPE=L'expression d'agr�gats personnalis�e ({0}) n'est pas une instance {1}. L'application consommateur doit utiliser ExpressionFactory\#createCustomAggregate pour cr�er une instance d'expression personnalis�e.
querySpec_UNEXPECTED_CUSTOM_EXPR_EXTENSION=Impossible de prendre en charge l'expression de filtre personnalis�e ({0}) de l'autre extension.
querySpec_UNEXPECTED_CUSTOM_EXPR_TYPE=L'expression de filtre personnalis�e ({0}) n'est pas une instance {1}.\n L'application consommateur doit utiliser ExpressionFactory\#createCustomExpression pour cr�er une instance d'expression de filtre personnalis�e.
querySpec_UNEXPECTED_EXPR_VARIABLE_TYPE=Impossible de prendre en charge ce type de ExpressionVariable ({1}).
querySpec_UNEXPECTED_FUNC_EXPR_EXTENSION=Impossible de prendre en charge la fonction personnalis�e ({0}) d'une autre extension.
querySpec_UNEXPECTED_FUNC_EXPR_TYPE=La fonction personnalis�e ({0}) n'est pas une instance {1}. L'application consommateur doit utiliser ExpressionFactory\#createCustomFunction pour cr�er une instance de fonction personnalis�e.
