<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Login</title>
<style type="text/css">
<!--
#apDiv1{
position:absolute;
top:320px;
left: 360px;
}
-->

body{
background-repeat: no-repeat;
background-position: center;
}

</style>
</head>
<body background=image/plan1.jpg;>
<div id="apDiv1">
<s:actionerror/>
 <s:form action="login" theme="simple">
<table border="0" cellspacing="0">
  <tr>
      <td>�û���:</td>
      <td><s:textfield name="user.username"/></td>
   </tr>
   <tr>
     <td></td>
     <td></td>
   </tr>
<tr>
      <td>����:</td>
      <td><s:password name="user.password"/></td>
   </tr>
      <tr>
     <td></td>
     <td></td>
   </tr>
<tr>
  <td>��¼����:</td>
  <td><s:radio name="role" list="{'����Ա','�û�'}" value="'�û�'"/></td>
</tr>
   <tr>
     <td></td>
     <td></td>
   </tr>
<tr>
      <td>��֤��:</td>
      <td>
      <s:textfield name="valideteCode" size="5"/>
      <img src="code.jsp"/>
      </td>
</tr>
   <tr>
     <td></td>
     <td></td>
   </tr>
<tr>
   <td><input type="button" name="registerbtn" value="ע��" onclick="top.location.href='register.jsp'"/></td>
   <td><s:submit key="submit"/></td>
</tr>
 </table>
  </s:form>
</div>
</body>
</html>