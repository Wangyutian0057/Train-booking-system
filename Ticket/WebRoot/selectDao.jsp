<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


  
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectDao.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <table align="center">
    <tr>
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
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
  <td><a href="login.jsp">�˳�</a></td>
  </tr>
  </table>
  <center>
  <s:iterator value="#request.tickets" id="t">
 <form action="bookticket.jsp" method="post" >
  <table>
   <tr>
  <td colspan="6">
  <img src="image/12.jpg" width="628" height="266"/>
  </td>
<tr>
  <th style="font-weight: normal;"><font size="3" face="����">���κ�</font></th>
  <th style="font-weight: normal;"><font size="3" face="����">ʼ��վ</font></th>
  <th style="font-weight: normal;"><font size="3" face="����">�յ�վ</font></th>
  <th style="font-weight: normal;"><font size="3" face="����">ʼ��ʱ��</font></th>
  <th style="font-weight: normal;"><font size="3" face="����">�г�����</font></th>
  <th style="font-weight: normal;"><font size="3" face="����">ʣ��Ʊ��</font></th>
  </tr>
   <tr>
   <td align="center"><s:property value="#t.id"/></td>
      
  <td align="center"><s:property value="#t.start"/></td>
   <td align="center"><s:property value="#t.end"/></td>
   <td align="center"><s:property value="#t.flytime"/></td>
   <td align="center"><s:property value="#t.model"/></td>
   <td align="center"><s:property value="#t.ticketnum"/></td>
   </tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr><td colspan="6"></td></tr>
   <tr align="center">
   <td colspan="6"><a href="bookticket.jsp?aaa=<s:property value="#t.id"/>"><image src="image/gotobuy.png"/></a></td>
   </tr>
  </table>
</form>
  </s:iterator>
  <br>
  <br>
<center><s:property value="tip"/></center>
  <br>
  <br>
  <br>
  <center>
��Ȩ���У�֣�ݻ𳵹�˾���绰��80000000<br/>
��ַ��֣�ݴ�ѧ��ѧԺ
</center>
</center>
  </body>
</html>
