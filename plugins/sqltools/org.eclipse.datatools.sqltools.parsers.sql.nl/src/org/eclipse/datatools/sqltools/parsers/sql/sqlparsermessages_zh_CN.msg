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

SQLParserException.GENERAL_MESSAGE=�޷���������:��{0}����
SQLParseErrorInfo.NO_CORRECTION_AVAILABLE = û�п��õ�����

! "token" is a technical term, see note above
SQLParserException.LEX_ERROR_CODE 		= �����ַ���{0}�������ԡ�
SQLParserException.ERROR_CODE 			= �����ڱ�ǡ�{0}������ֹ��
SQLParserException.BEFORE_CODE			= �ڱ�ǡ�{1}��֮ǰ�����ˡ�{0}����
SQLParserException.INSERTION_CODE 		= ��ǡ�{1}��֮��Ӧ��Ϊ��{0}����
SQLParserException.INVALID_CODE   		= ������������ѷ����ġ�{0}����
SQLParserException.SUBSTITUTION_CODE  	= Ӧ�����롰{0}�������ǡ�{1}����
SQLParserException.SECONDARY_CODE 		= Ӧ�����롰{0}�������ǡ�{1}����
SQLParserException.DELETION_CODE  		= �����ǡ�{0}�������ԡ�
SQLParserException.MERGE_CODE 			= �ϲ�����γ��ˡ�{0}����
SQLParserException.MISPLACED_CODE 		= ���조{0}���Ŵ���λ�á�
SQLParserException.SCOPE_CODE 			= �����ˡ�{0}���Բ���������
SQLParserException.EOF_CODE   			= �ڱ�ǡ�{0}��֮�󵽴��ļ���β��
SQLParserException.INVALID_TOKEN_CODE 	= ��{0}����Ч��

! Note to translater: statement is a well known term related to the SQL language
SQLParserManager.MULTIPLE_STATEMENTS  	= ���������в��������ֶ�� SQL ��䡣

#
# following message keys not yet in use, for future release
#

DATATOOLS.PROJECT.DEV.PROP.PRESERVE_USER_FORMAT 	= ���� SQL Դ�ı��ĸ�ʽ(&P)
DATATOOLS.PROJECT.DEV.PROP.ALWAYS_QUALIFY_COLUMNS   = �޶� SQL Դ�ı��е�������������(&Q)

! the following decribes that we try to be smart and figure out column references
! in the SQL source, even when not correctly specified, we correct the input then, e.g. SELECT tableA.col1 FROM schema1.tableA AS TA would be corrected to SELECT TA.col1 FROM schema1.tableA AS TA
DATATOOLS.PROJECT.DEV.PROP.SMART_RESOLVING  		= �Զ����� SQL Դ�ı��е������õ��޶�