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
plugin.internal_error=�����G���[ - org.eclipse.datatools.connectivity
ConnectionProfileConstants.unknownVersion=�s��
dialog.title.error.loadconnectionfactory = "{0}" �̐ڑ��t�@�N�g���̓ǂݍ��ݒ��ɃG���[���������܂��� !
ConnectJob.name={0} �ւ̐ڑ����쐬���ł��B
ConnectJob.status.info=1 �ȏ�̊g���ɑ΂��� {0} �ւ̐ڑ����쐬�ł��܂���ł����B
ConnectJob.status.error={0} �֐ڑ��ł��܂���ł����B
DisconnectJob.name={0} �ւ̐ڑ����I�����ł��B
DisconnectJob.status.info=1 �ȏ�̊g���ɑ΂��� {0} �ւ̐ڑ����I���ł��܂���ł����B
DisconnectJob.status.error={0} ��ؒf�ł��܂���ł����B
CreateConnectionJob.name={0} �� {1} �ɍ쐬���B
CreateConnectionJob.error={1} �ւ� {0} �ڑ��̍쐬���ɃG���[���������܂����B (�G���[\: {2})
OpenConnectionEventJob.name={0} �̐ڑ��I�[�v���E�C�x���g���������ł��B
CloseManagedConnectionJob.name={1} �ւ� {0} �ڑ���ؒf���܂��B
CloseManagedConnectionJob.error={1} �ւ� {0} �ڑ���ؒf���ɃG���[���������܂��� (�G���[\: {2})�B
CloseConnectionEventJob.name={0} �̐ڑ��I���C�x���g���������ł��B
assert.invalid.profile = ��̓G���[ \: �����ȑ��� ({0})
assert.invalid.profile.duplicateFactory = ��̓G���[ \: �t�@�N�g�� ID �ł̗D�揇�� ({0}) ���d�����Ă��܂��B
assert.invalid.profile.nullFactory = ��̓G���[ \: �t�@�N�g���܂��̓t�@�N�g�� ID �� NULL ({0}/{1}) �ł��B
dialog.title.error.loadwizard = "{0}" �̐V�K�E�B�U�[�h�̓ǂݍ��ݒ��ɃG���[���������܂��� !
operation.new.connectionprofile = �v���t�@�C���̍쐬 \: "{0}"
error.connect = �v���t�@�C���@ "{0}" �ւ̐ڑ����̖��ł��B�ڂ����̓��O�t�@�C�����Q�Ƃ��Ă��������B
marker.error = �v���t�@�C�� {0} �ւ̐ڑ����̖��ł��B(�G���[ \: {1})
drivermarker.error = �h���C�o "{0}" �ɖ�肪����܂� (�G���[ \: {1})
drivermarker.import.error = �v���t�@�C�� "{0}" �̃C���|�[�g���ɍ쐬���ꂽ�h���C�o��`�� JAR �̈ꗗ������܂���B
profile.duplicate =�v���t�@�C���� "{0}" �̐ڑ����d�����Ă��܂�\!
profile.notexist = �ڑ��v���t�@�C�� "{0}" �����݂��܂��� !
duplicate.profile.name = {0}({1}) �̃R�s�[
DriverConnectionBase.error.unknown=�ڑ����A���w��̃G���[�Ŏ��s���܂����B
DriverConnectionBase.error.driverDefinitionNotSpecified=�h���C�o�[��`���w�肳��Ă��܂���B
DriverConnectionBase.error.driverDefinitionNotFound=�h���C�o�[��`��������܂���B
error.loadprofilesxml = �ڑ��v���t�@�C���̃f�[�^�̓ǂݍ��ݒ��ɃG���[���������܂����B
error.saveprofilesxml = �ڑ��v���t�@�C���̃f�[�^�̕ۑ����ɃG���[���������܂����B
error.loaddriversxml = �h���C�o��`�̃f�[�^��ǂݍ��ݒ��ɃG���[���������܂����B
error.savedriversxml = �h���C�o��`�̃f�[�^��ۑ����ɃG���[���������܂����B

trace.error.propertiesPersistenceHook = �f�t�H���g (profile type={0}, extension={1}) ���g�p���āApropertiesPersistenceHook ��ǂݍ��߂܂���ł����B
trace.error.propertiesPersistenceHookSaveError = �v���p�e�B�̎����t�b�N�̌Ăяo�����ɃG���[���������܂����B���ׂẴv���p�e�B��ۑ����Ă��܂� (profile={0}, extension={1})
trace.error.propertiesPersistenceHookLoadError = �v���p�e�B�̎����t�b�N�̌Ăяo�����ɃG���[���������܂����B�ꎞ�v���p�e�B���ݒ肳��Ă��܂��� (profile={0}, extension={1})
trace.error.migration = �ڑ��v���t�@�C���̃v���o�C�_ (ID={0}�A�ڍs�N���X={1}) �̈ڍs�v�f��ǂݍ��ݒ��ɃG���[���������܂����B
trace.error.drivermigration = �v���t�@�C���̃h���C�o�C���X�^���X�̍쐬���ɃG���[���������܂��� (id={0}, driver id={1})�B

migration.error.providerDoesNotExist = �ڍs�v�f�̓ǂݍ��ݒ��ɃG���[���������܂����B�w�肵�� newProviderID �������ł� (newProviderID={0})�B
migration.error.invalidPropertyMigrationElement = �ڍs�v�f�̓ǂݍ��ݒ��ɃG���[���������܂����BpropertyMigration �ɂ́AnewPropertyKey �� oldPropertyKey�A�܂��͂��̗������w�肷��K�v������܂��B
migration.error.unknownParentElement = �ڍs�v�f�̓ǂݍ��ݒ��ɃG���[���������܂����B�e�v�f���s���ł� (�e�v�f��={0})�B

DriverUtil.taskName = {0} �ŃN���X���������ł��B

Category.Name.Unknown=�T�|�[�g����Ă��܂���B

WorkOfflineJob.name = �I�t���C�����[�h�ō�Ƃ��邽�߂� {0} ��ύX���Ă��܂��B
WorkOfflineJob.status.error = 1 �܂��͕����̊g���@�\�p�� {1} �ւ̃I�t���C���ڑ����m���ł��܂���B

SaveWorkOfflineDataJob.name = {0} �̃I�t���C���f�[�^��ۑ����܂��B
SaveWorkOfflineDataJob.status = �I�t���C���f�[�^�̃X�e�[�^�X��ۑ����܂��B

CreateOfflineConnectionJob.name = {1} �ւ̃I�t���C���� {0} �ڑ����m�����Ă��܂��B
CreateOfflineConnectionJob.error = {1} �ւ̃I�t���C���� {0} �ڑ����m�����ɃG���[���������܂��� (�G���[\: {2})�B

ManagedConnection_save_not_connected_error = �I�t���C���f�[�^��ۑ�����ɂ́A�T�[�o�ɐڑ�����K�v������܂��B
ManagedConnection_offline_not_supported_error = {0} �ł̓I�t���C���ō�Ƃł��܂���B

drivers.error.finding.property.no.template = �h���C�o�̃e���v���[�g���� {0} ���擾���悤�Ƃ����Ƃ��ɃG���[���������܂����B

JDBCConnection.technologyName = JDBC
JDBCConnection.invalidDriverDefinition = {0}\: {1}. �f�[�^�x�[�X�v���t�@�C���Œ�`�����h���C�o�̃v���p�e�B�����Ɏg�p���܂��B

error.database.not.start = �f�[�^�x�[�X�̋N���R�}���h�͔��s����Ă��܂���B ErrorCode = {0}�ASQLState = {1}
PluginResourceLocator.invalidURL = URL {0} �������ł� (�G���[ \: {1})
ConnectivityPlugin.error.noDefaultWorkspace = �f�t�H���g�̃��[�N�X�y�[�X�̏ꏊ�����ł��܂���B  �v���O�C���܂��̓f�[�^�c�[���̃��[�N�X�y�[�X�p�X�� OSGi ���X�v���b�g�t�H�[���̐ݒ���m�F���Ă��������B
CipherProviderExtensions.missingRequiredAttrValue = {2} �ɂ���Ē񋟂��ꂽ {1} �g������ {0} �v�f�� 1 �܂��͕����̕K�v�ȑ��� {3} �ɒl������܂���B={4}, {5}={6}
CipherProviderExtensions.invalidClassAttrValue = {2} �ɂ���Ē񋟂��ꂽ {1} �g�����̃N���X�^ ({0}) �������ł��B  {3} Java �C���^�[�t�F�[�X����������K�v������܂��B
CipherProviderExtensions.conflictingExtensions = �o�^���ꂽ ICipherProvider ({0}) ���A�����t�@�C���g���q ({3}) �� {2} ���̕ʂ̊g���ɂ���Ē񋟂��ꂽ ICipherProvider ({1}) �ɒu���������܂����B

