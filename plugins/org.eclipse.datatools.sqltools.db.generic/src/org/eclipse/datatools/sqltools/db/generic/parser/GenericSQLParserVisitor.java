/* Generated By:JJTree: Do not edit this line. C:/work/workspace/org.eclipse.datatools.sqltools.db.generic/src/org/eclipse/datatools/sqltools/db/generic/parser\GenericSQLParserVisitor.java */

package org.eclipse.datatools.sqltools.db.generic.parser;

public interface GenericSQLParserVisitor
{
  public Object visit(SimpleNode node, Object data);
  public Object visit(ASTStart node, Object data);
  public Object visit(ASTSQLDelimiter node, Object data);
  public Object visit(ASTSQLStatement node, Object data);
  public Object visit(ASTSQLDataType node, Object data);
  public Object visit(ASTDeclareKeyword node, Object data);
  public Object visit(ASTDeclareComma node, Object data);
  public Object visit(ASTSQLParam node, Object data);
  public Object visit(ASTExpression node, Object data);
}
