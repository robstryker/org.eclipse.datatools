## Copyright (c) 2005, 2011 Sybase, Inc. and others.
## All rights reserved. This program and the accompanying materials
## are made available under the terms of the Eclipse Public License v1.0
## which accompanies this distribution, and is available at
## http://www.eclipse.org/legal/epl-v10.html
##
## Contributors:
##    Sybase, Inc. - initial API and implementation
##    IBM Corporation - migrated to new wizard framework
##    IBM Corporation - fix for defect 222818
##    Actuate Corporation - added the cipherProvider extension point [BZ 358686]
################################################################################ 
plugin.internal_error=Erreur interne - org.eclipse.datatools.connectivity
ConnectionProfileConstants.unknownVersion=inconnue
dialog.title.error.loadconnectionfactory = Erreur lors du chargement de la g�n�ration de connexion dans "{0}".
ConnectJob.name=Cr�ation des connexions � {0}.
ConnectJob.status.info=Impossible de cr�er des connexions � {0} pour une ou plusieurs extensions.
ConnectJob.status.error=Connexion impossible � {0}.
DisconnectJob.name=Fermeture des connexions � {0}.
DisconnectJob.status.info=Impossible de fermer les connexions � {0} pour une ou plusieurs extensions.
DisconnectJob.status.error=Impossible de se d�connecter de {0}.
CreateConnectionJob.name=Cr�ation de {0} sur {1}.
CreateConnectionJob.error=Erreur lors de la cr�ation de la connexion de {0} � {1}. (Erreur \: {2})
OpenConnectionEventJob.name=Traitement de l''�v�nement d''ouverture de connexion pour {0}.
CloseManagedConnectionJob.name=Fermeture de la connexion de {0} � {1}.
CloseManagedConnectionJob.error=Erreur lors de la fermeture de la connexion de {0} � {1}. (Erreur \: {2})
CloseConnectionEventJob.name=Traitement de l''�v�nement de fermeture de connexion pour {0}.
assert.invalid.profile = Erreur d'analyse : attribut incorrect ({0})
assert.invalid.profile.duplicateFactory = Erreur d'analyse \: id de l'usine en double avec priorit� en double ({0})
assert.invalid.profile.nullFactory = Erreur d''analyse\ : aucune usine ou id de l''usine ({0}/{1})
dialog.title.error.loadwizard = Erreur lors du chargement du nouvel assistant "{0}".
operation.new.connectionprofile = Cr�ation du profil : "{0}"
error.connect = Probl�me lors de la connexion au profil "{0}". Consultez le fichier journal pour obtenir plus d'informations.
marker.error = Probl�me de connexion au profil {0}. (Erreur : {1})
drivermarker.error = Probl�me avec le pilote "{0}". (Erreur\ : {1})
drivermarker.import.error = La liste jar pour la d�finition de pilote cr��e lors de l'importation du profil "{0}" est manquante.
profile.duplicate =Nom du profil de connexion en double "{0}".
profile.notexist = Profil de connexion "{0}" inexistant.
duplicate.profile.name = Copie de {0}({1})
DriverConnectionBase.error.unknown=La connexion a �chou� avec une erreur non sp�cifi�e.
DriverConnectionBase.error.driverDefinitionNotSpecified=La d�finition du pilote n'est pas sp�cifi�e.
DriverConnectionBase.error.driverDefinitionNotFound=La d�finition du pilote est introuvable.
error.loadprofilesxml = Erreur lors du chargement des donn�es du profil de connexion.
error.saveprofilesxml = Erreur lors de l'enregistrement des donn�es du profil de connexion.
error.loaddriversxml = Erreur lors du chargement des donn�es de d�finition du pilote.
error.savedriversxml = Erreur lors de l'enregistrement des donn�es de d�finition du pilote.

trace.error.propertiesPersistenceHook = Impossible de charger propertiesPersistenceHook, utilisation par d�faut (type de profil = {0}, extension = {1})
trace.error.propertiesPersistenceHookSaveError = Erreur lors de l'appel des propri�t�s de la connexion persistante ; toutes propri�t�s persistantes (profil = {0}, extension = {1})
trace.error.propertiesPersistenceHookLoadError = Erreur lors de l'appel des propri�t�s de la connexion persistante ; propri�t�s transitoires non d�finies (profil = {0}, extension = {1})
trace.error.migration = Erreur lors du chargement de l'�l�ment de migration pour le fournisseur de profil de connexion (id={0}, classe de migration={1})
trace.error.drivermigration = Erreur de cr�ation d''une instance de pilote du profil (id={0}, driver id={1})

migration.error.providerDoesNotExist = Erreur lors du chargement de l'�l�ment de migration : l'ID newProviderID sp�cifi� est incorrect (newProviderID={0})
migration.error.invalidPropertyMigrationElement = Erreur lors du chargement de l'�l�ment de migration : propertyMigration doit sp�cifier une cl� newPropertyKey, une cl� oldPropertyKey ou les deux
migration.error.unknownParentElement = Erreur lors du chargement de l'�l�ment de migration : �l�ment parent inconnu (nom de l'�l�ment parent={0})

DriverUtil.taskName = Traitement des classes dans {0}

Category.Name.Unknown=Non pris en charge

WorkOfflineJob.name = Modification de {0} pour travailler en mode hors ligne.
WorkOfflineJob.status.error = Impossible de cr�er des connexions hors ligne � {1} pour au moins une extension.

SaveWorkOfflineDataJob.name = Enregistrer les donn�es hors ligne pour {0}.
SaveWorkOfflineDataJob.status = Enregistrer l'�tat des donn�es hors ligne.

CreateOfflineConnectionJob.name = Cr�ation de la connexion hors ligne de {0} � {1}.
CreateOfflineConnectionJob.error = Erreur lors de la cr�ation de la connexion hors ligne de {0} � {1}. (Erreur \: {2})

ManagedConnection_save_not_connected_error = Connexion indispensable au serveur pour enregistrer des donn�es hors ligne.
ManagedConnection_offline_not_supported_error = {0} ne prend pas en charge le travail hors ligne.

drivers.error.finding.property.no.template = Un probl�me a �t� rencontr� lors de la tentative de r�cup�ration de {0} � partir d'un mod�le de pilote.

JDBCConnection.technologyName = JDBC
JDBCConnection.invalidDriverDefinition = {0}\: {1}. Utiliser plut�t les propri�t�s de pilote d�finies dans le profil de la base de donn�es.

error.database.not.start = Aucune commande de base de donn�es de d�marrage �tablie. Code d'erreur = {0}, �tat SQL = {1}.
PluginResourceLocator.invalidURL = URL {0} incorrecte (erreur\: {1})
ConnectivityPlugin.error.noDefaultWorkspace = Impossible de d�terminer l'emplacement de l'espace de travail par d�faut.  V�rifiez la configuration de la plate-forme sans OSGI du plugin ou des outils de donn�es du chemin de l'espace de travail.
CipherProviderExtensions.missingRequiredAttrValue = Une valeur manque dans un ou plusieurs des attributs requis : {3} de l'�l�ment {0} de l'extension {1} avec les contributions apport�es par {2}.={4}, {5}={6}
CipherProviderExtensions.invalidClassAttrValue = Type de classe non valide ({0}) dans l'extension {1} contenant les contributions apport�es par {2}.  L'interface Java {3} doit �tre install�e.
CipherProviderExtensions.conflictingExtensions = Le fournisseur ICipherProvider ({0}) enregistr� a �t� remplac� par ICipherProvider ({1}) avec les contributions apport�es par une autre extension dans {2} pour la m�me extension de fichier ({3}).


