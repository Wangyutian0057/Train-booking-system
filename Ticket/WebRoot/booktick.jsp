<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*" %> 
<%@page import="java.text.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="sun.io.*"%>
<%request.setCharacterEncoding("gb2312");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ƱԤ��</title>
<body>
<center>
<table><tr align="center">
<td><a href="first.jsp">��ҳ</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><a href="booktick.jsp">��Ʊ</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><a href="index.jsp">����</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><a href="login.jsp">�˳�</a></td>
</tr>
<tr>
<td colspan="31"><img src="image/1234.gif"/></td>
</tr>
<tr>
<td colspan="31">��ƱԤ��</td>
</tr>
</table>
<center>
    <form name="form1" action="book.action" method="post">
        <table width="666" height="378" cellpadding=0 cellspacing=0 border="0">
          <tr>
            <td width="150" height="53"></td>
            <td width="106">&nbsp;</td>
            <td width="242">&nbsp;</td>
            <td width="287">&nbsp;</td>
          </tr>
          <tr>
            <td height="29">&nbsp;</td>
            <td>*��ƱId ��</td>
            <td>
<input type="text" name="bookticket.ticketid" /> 
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="29">&nbsp;</td>
            <td>�� �� ��</td>
            <td>
              <input type="text" name="bookticket.travelname">
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="28">&nbsp;</td>
            <td>�� �� ��</td>
            <td><p>
              <label>
              <input name="bookticket.gender" type="radio" value="male" checked>
  ��</label>
              <label>
              <input type="radio" name="bookticket.gender" value="female">
  Ů</label>
              <br>
            </p>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="30">&nbsp;</td>
            <td>���֤���룺</td>
            <td>
              <input name="bookticket.Id" type="text">
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="28">&nbsp;</td>
            <td>��ϵ�绰��</td>
            <td>
              <input type="text" name="bookticket.Telephone">
</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="22">&nbsp;</td>
            <td>��Ʊ������</td>
            <td><input type="text" name="bookticket.neednum"></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="22">&nbsp;</td>
            <td><input type="submit" name="Submit" value="ȷ��Ԥ��"></td>
            <td><div align="center">
              <input type="reset" name="Submit2" value="����Ԥ��">
            </div></td>
            <td>&nbsp;</td>
          </tr>
        </table>
    </form>
</center>
</center>
<center>
��Ȩ���У�֣����·�֣��绰��88888888<br/>
��ַ��֣�ݴ�ѧ��ѧԺ
</center>
</body>
</html>
