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
plugin.internal_error=Interner Fehler - org.eclipse.datatools.connectivity
ConnectionProfileConstants.unknownVersion=Unbekannt
dialog.title.error.loadconnectionfactory = Fehler beim Laden der Verbindungs-Factory in "{0}"!
ConnectJob.name=Verbindungen zu {0} werden erstellt.
ConnectJob.status.info=F�r eine oder mehrere Erweiterungen konnten keine Verbindungen zu {0} erstellt werden.
ConnectJob.status.error=Die Verbindung zu {0} konnte nicht hergestellt werden.
DisconnectJob.name=Verbindungen zu {0} werden geschlossen.
DisconnectJob.status.info=F�r eine oder mehrere Erweiterungen konnten die Verbindungen zu {0} nicht geschlossen werden.
DisconnectJob.status.error=Die Verbindung zu {0} konnte nicht getrennt werden.
CreateConnectionJob.name={0} mit {1} wird erstellt.
CreateConnectionJob.error=Beim Herstellen der Verbindung {0} zu {1} trat ein Fehler auf. (Fehler\: {2})
OpenConnectionEventJob.name=Das Ereignis zum �ffnen der Verbindung f�r {0} wird verarbeitet.
CloseManagedConnectionJob.name=Verbindung {0} zu {1} wird geschlossen.
CloseManagedConnectionJob.error=Fehler beim Schlie�en der Verbindung {0} zu {1}. (Fehler\: {2})
CloseConnectionEventJob.name=Das Ereignis zum Schlie�en der Verbindung f�r {0} wird verarbeitet.
assert.invalid.profile = Analysefehler\: ung�ltiges Attribut ({0})
assert.invalid.profile.duplicateFactory = Analysefehler\: Doppelte Factory-ID mit doppelter Priorit�t ({0})
assert.invalid.profile.nullFactory = Analysefehler\: Factory oder Factory-ID ({0}/{1}) ist gleich null.
dialog.title.error.loadwizard = Fehler beim Laden des neuen Assistenten in "{0}"!
operation.new.connectionprofile = Profil wird erstellt\: "{0}"
error.connect = Fehler bei der Verbindung zu Profil "{0}."  Wenn Sie weitere Angaben ben�tigen, lesen Sie die Protokolldatei.
marker.error = Fehler bei der Verbindung zu Profil {0}. (Fehler\: {1})
drivermarker.error = Problem mit Treiber "{0}". (Fehler\: {1})
drivermarker.import.error = Fehlende JAR-Liste f�r Treiberdefinition bei Import von Profil "{0}" erstellt.
profile.duplicate =Der Verbindungsprofilname "{0}" ist doppelt vorhanden\!
profile.notexist = Verbindungsprofil "{0}" existiert nicht!
duplicate.profile.name = Kopie von {0}({1})
DriverConnectionBase.error.unknown=Die Verbindung ist mit einem nicht angegebenen Fehler fehlgeschlagen.
DriverConnectionBase.error.driverDefinitionNotSpecified=Die Treiberdefinition war nicht angegeben.
DriverConnectionBase.error.driverDefinitionNotFound=Die Treiberdefinition wurde nicht gefunden.
error.loadprofilesxml = Fehler beim Laden der Verbindungsprofil-Daten.
error.saveprofilesxml = Fehler beim Speichern der Verbindungsprofil-Daten.
error.loaddriversxml = Fehler beim Laden der Treiberdefinitionsdaten.
error.savedriversxml = Fehler beim Speichern der Treiberdefinitionsdaten.

trace.error.propertiesPersistenceHook = propertiesPersistenceHook konnte nicht geladen werden, Standard wird verwendet (Profiltyp={0}, Erweiterung={1})
trace.error.propertiesPersistenceHookSaveError = Fehler beim Aufrufen der Eigenschaften des persistenten Hooks; alle Eigenschaften werden beibehalten (Profil={0}, Erweiterung={1})
trace.error.propertiesPersistenceHookLoadError = Fehler beim Aufrufen der Eigenschaften des persistenten Hooks; tempor�re Eigenschaften nicht festgelegt (Profil={0}, Erweiterung={1})
trace.error.migration = Fehler beim Laden des Migrationselements f�r Verbindungsprofil-Anbieter (id={0}, migration class={1})
trace.error.drivermigration = Fehler beim Erstellen der Treiberinstanz des Profils (ID={0}, Treiber-ID={1})

migration.error.providerDoesNotExist = Fehler beim Laden des Migrationselements: Angegebene neue Anbieter-ID ist ung�ltig (newProviderID={0})
migration.error.invalidPropertyMigrationElement = Fehler beim Laden des Migrationselements: Eigenschaftsmigration muss neuen oder alten Eigenschaftsschl�ssel oder beides enthalten
migration.error.unknownParentElement = Fehler beim Laden des Migrationselements: Unbekanntes �bergeordnetes Element (parent element name={0})

DriverUtil.taskName = Klassen werden in {0} verarbeitet

Category.Name.Unknown=Nicht unterst�tzt

WorkOfflineJob.name = {0} wird in Offline-Modus ge�ndert.
WorkOfflineJob.status.error = Offline-Verbindungen zu {1} konnten f�r eine oder mehrere Erweiterungen nicht erstellt werden.

SaveWorkOfflineDataJob.name = Speichern Sie die Offline-Daten f�r {0}.
SaveWorkOfflineDataJob.status = Speichern Sie den Status der Offline-Daten.

CreateOfflineConnectionJob.name = Offline-Verbindung {0} zu {1} wird erstellt.
CreateOfflineConnectionJob.error = Fehler beim Erstellen der Offline-Verbindung {0} zu {1}. (Fehler\: {2})

ManagedConnection_save_not_connected_error = Verbindung zum Server erforderlich, um Offline-Daten zu speichern.
ManagedConnection_offline_not_supported_error = {0} unterst�tzt Offline-Arbeiten nicht.

drivers.error.finding.property.no.template = Beim Versuch, {0} aus der Treibervorlage abzurufen, ist ein Problem aufgetreten.

JDBCConnection.technologyName = JDBC
JDBCConnection.invalidDriverDefinition = {0}\: {1}. Stattdessen werden die Treibereigenschaften verwendet, die f�r das Datenbankprofil definiert sind.

error.database.not.start = Es wurde kein Befehl zum Start der Datenbank ausgegeben. ErrorCode = {0}, SQL-Status = {1}.
PluginResourceLocator.invalidURL = Ung�ltige URL {0} (Fehler\: {1})
ConnectivityPlugin.error.noDefaultWorkspace = Der standardm��ige Speicherort des Arbeitsplatzes kann nicht ermittelt werden.  Pr�fen Sie die Konfiguration der Plattform ohne OSGi f�r den Plug-In- oder den Datentool-Arbeitsplatzpfad.
CipherProviderExtensions.missingRequiredAttrValue = Dem {0} Element in der von {2} beigetragenen {1} Erweiterung fehlt ein Wert in einem oder mehreren der erforderlichen Attribute: {3}={4}, {5}={6}
CipherProviderExtensions.invalidClassAttrValue = Ung�ltiger Klassentyp ({0}) in der von {2} beigetragenen {1} Erweiterung.  Die Klasse muss die {3} Java-Schnittstelle implementieren.
CipherProviderExtensions.conflictingExtensions = Der registrierte ICipherProvider ({0}) wurde durch den ICipherProvider ({1}) ersetzt, der von einer anderen Erweiterung in {2} f�r die selbe Dateierweiterung ({3}) beigetragen wurde.


