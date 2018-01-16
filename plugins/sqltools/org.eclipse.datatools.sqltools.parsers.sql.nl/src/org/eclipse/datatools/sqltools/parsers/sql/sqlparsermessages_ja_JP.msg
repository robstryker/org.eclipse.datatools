# NLS_MESSAGEFORMAT_VAR          needed to handle quotes correctly
#
# File: sqlparsermessages.properties
# Description: Properties file for classes in the SQLParser Plugin

# =============================================================================
# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials 
# are made available under the terms of the Eclipse Public License v1.0
# which is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
#     IBM Corporation - initial API and implementation
# =============================================================================

# "token" is a technical term used in the context of parsers, might not be translated
# "terminal symbol" might be used instead or used as source for tranlation, it is the
# smallest unit in a parser input, like a keyword, identifier or a special single character
!
# Strings for SQL parser error messages

# Attention translators: mnemonics (short keys, marked with "&") can vary in translations
# message values should not use the mnemonics "reserved" for standard buttons like "Back", "Next", "Finish"

SQLParserException.GENERAL_MESSAGE=���� "{0}" ����͂ł��܂���B
SQLParseErrorInfo.NO_CORRECTION_AVAILABLE = �C���ł��܂���B

! "token" is a technical term, see note above
SQLParserException.LEX_ERROR_CODE 		= �s�v�ȕ��� "{0}" �͖�������܂��B
SQLParserException.ERROR_CODE 			= ��͂��g�[�N�� "{0}" �Œ��~����܂����B
SQLParserException.BEFORE_CODE			= �g�[�N�� "{1}" �̑O�� "{0}" ���}������܂����B
SQLParserException.INSERTION_CODE 		= �g�[�N�� "{1}" �̌�ɂ� "{0}" ���K�v�ł��B
SQLParserException.INVALID_CODE   		= �s�v�ȓ��͂� "{0}" ���j������܂����B
SQLParserException.SUBSTITUTION_CODE  	= ���͂ɂ� "{1}" �ł͂Ȃ��A"{1}" ���K�v�ł��B
SQLParserException.SECONDARY_CODE 		= ���͂ɂ� "{1}" �ł͂Ȃ��A"{1}" ���K�v�ł��B
SQLParserException.DELETION_CODE  		= �s�v�ȃg�[�N�� "{0}" �͖�������܂��B
SQLParserException.MERGE_CODE 			= "{0}" �͌����g�[�N������`������܂����B
SQLParserException.MISPLACED_CODE 		= �R���X�g���N�g "{0}" �̔z�u���Ԉ���Ă��܂��B
SQLParserException.SCOPE_CODE 			= �X�R�[�v���I������ "{0}" ���}������܂����B
SQLParserException.EOF_CODE   			= �g�[�N�� "{0}" �̌�Ńt�@�C���̏I���ɂȂ�܂����B
SQLParserException.INVALID_TOKEN_CODE 	= "{0}" �͖����ł��B

! Note to translater: statement is a well known term related to the SQL language
SQLParserManager.MULTIPLE_STATEMENTS  	= ���̃R���e�L�X�g�ł͕����� SQL �����g�p�ł��܂���B

#
# following message keys not yet in use, for future release
#

DATATOOLS.PROJECT.DEV.PROP.PRESERVE_USER_FORMAT 	= SQL �\�[�X�e�L�X�g�̏����ݒ���ێ�����(&P)
DATATOOLS.PROJECT.DEV.PROP.ALWAYS_QUALIFY_COLUMNS   = SQL �\�[�X�e�L�X�g�̖��m�ȗ�Q�Ƃ��C������(&Q)

! the following decribes that we try to be smart and figure out column references
! in the SQL source, even when not correctly specified, we correct the input then, e.g. SELECT tableA.col1 FROM schema1.tableA AS TA would be corrected to SELECT TA.col1 FROM schema1.tableA AS TA
DATATOOLS.PROJECT.DEV.PROP.SMART_RESOLVING  		= SQL �\�[�X�e�L�X�g�̗�Q�Ƃ̏C���������C������(&C)