################################################################################
## Copyright (c) 2005, 2011 Sybase, Inc. and others.
## All rights reserved. This program and the accompanying materials
## are made available under the terms of the Eclipse Public License v1.0
## which accompanies this distribution, and is available at
## http://www.eclipse.org/legal/epl-v10.html
##
## Contributors:
##    Sybase, Inc. - initial API and implementation
##    IBM Corporation -  fix for defect #223855
##	  Actuate Corporation - added the cipherProvider extension point [BZ 358686]
################################################################################ 
Plugin.Name = Data Tools Platform Connectivity Plug-in
Plugin.ProviderName = Eclipse Data Tools Platform

extension-point.name.cipherProvider = Fournisseur de chiffrement du fichier de stockage des profils de connexion
extension-point.name.connectionProfile=Extension du profil de connexion
extension-point.name.driverExtension=driverExtension
extension-point.name.ProfileManagerInitializationProvider =  ProfileManagerInitializationProvider
ConnectionProfileRepository.Category.Name = Répertoires des profils de connexion
