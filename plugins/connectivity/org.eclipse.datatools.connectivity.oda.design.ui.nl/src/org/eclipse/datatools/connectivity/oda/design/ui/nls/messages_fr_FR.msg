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
adaptableDataSourceProfile_unableAccessProfile=Impossible d'acc�der au profil li� sous ({0}) ; utilisez les propri�t�s locales de la source de donn�es.\n Cause de l'exception : {1}
common_notInDesignSession=Pas dans une session de conception en cours.
common_nullArgument=L'argument ne doit pas �tre null.
common_missingDataSourceDesign=Conception de source de donn�es manquante dans l'argument OdaDesignSession.
common_createClassFailed=Impossible de trouver la classe ({0}) ou de la cr�er.
extension_mustInheritFromODAPage=Impl�mentation ({0}) de page d''assistant incorrecte. Une page d''assistant personnalis� ODA doit se d�velopper � partir de {1}.
extension_mustInheritFromODAWizard=Impl�mentation ({0}) d''assistant incorrecte. Un assistant personnalis� ODA doit se d�velopper � partir de {1} ou l''utiliser.
extension_missingManifestElement=Impl�mentation du point d''extension d''interface utilisateur de conception ODA ({0}) manquante
extension_missingPropertyPage=Impl�mentation de page de propri�t�s manquante dans l'extension d'interface utilisateur de conception ODA.
wizard_dataSource_defaultTitle=Nouvelle source de donn�es
wizard_missingDataSourceId=ID de source de donn�es ODA manquante dans l'attribut Profil de connexion.
wizard_invalidManifest=Contenu du manifeste de plug-in incorrect dans l'extension oda.design.ui.dataSource.
page_defaultDataSourceTitle=Propri�t�s de la source de donn�es personnalis�e
designSession_alreadyHasLinkedProfile=La source de donn�es ({0}) a d�j� externalis� ses propri�t�s dans un profil de connexion.  Il est impossible de les r�exporter.
designSession_flushFailed=Impossible de vider la session de conception de la requ�te du jeu de donn�es actuelles
designSession_invalidArgument=Argument incorrect sp�cifi� dans la m�thode de la session de conception.
designSession_invalidEditApiCall=Appel API de session de conception non valide pour la modification du mod�le.
designSession_invalidNewDesignApiCall=Appel API de session de conception non valide pour la cr�ation d'un nouveau mod�le.
designSession_invalidProfileName=Impossible de localiser le profil li� ({0}) dans l'emplacement de stockage des profils de connexion indiqu�.
designSession_invalidProfileNameOrFilePath=Impossible de localiser le profil li� ({0}) ou le fichier de stockage des profils de connexion ({1}) indiqu� dans le mod�le de source de donn�es.
designSession_missingDataSetUIElement=Aucun �l�ment dataSetUI n''est d�fini pour OdaDataSourceId ({0}) et OdaDataSetId ({1}).
manifest_missingAttributeValue=Valeur manquante dans l''attribut obligatoire ({0}).
manifest_missingDataSetElementId=Une valeur est requise pour l'argument dataSetElementID.
manifest_invalidDataSetElementId=ID d''�l�ment de fichier incorrect ({0}).
manifest_dataSetUi_missingPageId=Une valeur d'ID page est requise.
manifest_dataSetUi_invalidPageId=Valeur d''ID page incorrecte ({0}).
manifest_dataSetUi_missingElement=Un �l�ment {0} est requis dans l''extension.
ui_defaultDataSourceTitle=Propri�t�s de connexion � la source de donn�es
ui_replaceFilePrompt={0} existe d�j�. Voulez-vous le remplacer ?
ui_requiredFieldsMissingValue=Une valeur est manquante dans une ou plusieurs zones (signal�es par '*').
ui_errorLabel=Erreur
ui_errorCreatingCustomCtrls=Une erreur est survenue lors de la cr�ation et de l'initialisation des commandes personnalis�es.
ui_saveAsTitle=Enregistrer sous
profilePage_pageTitle=S�lectionner un profil de connexion
profilePage_pageLabel=Profil de connexion
profilePage_selectProfileDefaultMessage=S�lectionnez le profil de connexion � partir duquel cr�er la source de donn�es
profilePage_label_profileStore=Emplacement de &stockage des profils de connexion :
profilePage_button_browse=Pa&rcourir...
profilePage_button_relativepath=Chemin d'acc�s &relatif
profilePage_button_absolutepath=Chemin d'acc�s &absolu
profilePage_button_browse_filter=&Extension(s) de fichier � afficher :
profilePage_button_browse_filter_tooltiptext=Sp�cifiez une ou plusieurs extensions de fichier s�par�es par des virgules pour filtrer les fichiers affich�s ci-dessous.\nPar exemple : .txt, .profiles
profilePage_button_new=&Nouveau...
profilePage_button_browse_tooltip=Recherchez un fichier de stockage des profils de connexion.\nChemin d'acc�s relatif : chemin d'acc�s relatif bas� sur les ressources h�tes.\nChemin d'acc�s absolu : chemin d'acc�s absolu du fichier syst�me.
profilePage_resourcebaseuri_failure=Impossible d'obtenir l'URI de base des ressources de l'application.
profilePage_browse_noselection_error=Veuillez sp�cifier le nom du fichier de stockage des profils de connexion 
profilePage_odaTreeName=Sources de donn�es ODA
profilePage_checkboxLabel_useDefaultName=&Utiliser le nom de la source de donn�es par d�faut
profilePage_label_dataSourceName=Nom de la source de &donn�es :
profilePage_error_emptyName=Le nom de la source de donn�es doit �tre renseign�.
profilePage_checkboxTooltip_maintainLink=Toujours utiliser les valeurs de propri�t� externalis�es de l'emplacement de stockage des profils de connexion dans la source de donn�es.
profilePage_checkboxLabel_maintainLink=Utiliser les propri�t�s &externalis�es dans l'emplacement de stockage des profils de connexion
profilePage_error_invalidName=Le nom de la source de donn�es n'est pas valide.
profilePage_error_invalidProfileStorePath=Chemin de l'emplacement de stockage des profils de connexion incorrect
profilePage_deprecatedProfileDisplayName={0} (remplac� par {1})
profileStoreCreationDialog_button_new=&Nouveau...
profileStoreCreationDialog_title=Cr�er un emplacement de stockage des profils de connexion
profileStoreCreationDialog_grouptext=S�lectionnez les &profils de connexion � inclure dans l'emplacement de stockage :
profileStoreCreationDialog_newbutton_tooltiptext=Cr�er un nouveau profil de connexion
profileStoreCreationDialog_fileext_error=Le fichier de stockage des profils de connexion doit disposer d'une extension de fichier.\nAppuyez sur OK pour ajouter l'extension de fichier par d�faut ".{0}" au nom du fichier.
dbProfilePage_defaultPageMessage=V�rifiez le pilote JDBC et les informations de connexion
dbProfilePage_editPageMessage=Modifier le pilote JDBC et les informations de connexion
dbProfilePage_invalidDataSource=Source de donn�es incorrecte.  Mettre � jour la r�f�rence du profil de connexion ou cr�er une nouvelle source de donn�es.
dbProfilePage_notInDesignSession=Impossible d'ouvrir une page de propri�t�s en dehors d'une session de conception ODA.
dbProfilePage_noCustomPage=Impossible de trouver et d'ouvrir la page de propri�t� des pilotes de base de donn�es.
preferencesPage_openDataAccessDescription=D�finissez les pr�f�rences pour les sources de donn�es Open Data Access individuelles \nen utilisant les pages sous ce n�ud.
