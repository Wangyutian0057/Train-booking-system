<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Register</title>
<script language="javascript">
		function check()
		{
			if(document.getElementById("id1").value=="")
			{
				alert("用户名不能为空！");
				return false;
			}
			else if(document.getElementById("id2").value == "")
			{
				alert("用户密码不能为空！");
				return false;
			}
			else if(document.getElementById("id2").value != document.getElementById("id3").value)
			{
				alert("两次输入的密码不一致！");
				return false;			
			}
			else
			{
				
				doucment.form1.action="";
				return true;
			}
		}
		</script>
<style type="text/css">
body{
background-repeat: no-repeat;
background-position: center;
}
<!--
#apDiv2{
position:absolute;
top:240px;
left: 280px;
}
-->
</style>
</head>
<body background="image/pic692.jpg">
<div id="apDiv2">
<s:actionerror/>
 <s:form name="form1" onsubmit="return check();" action="register">
<table>
  <tr>
    <td><s:textfield name="user.username" key="username" id="id1"/></td>
    <td></td>
  </tr>
  <tr>
    <td><s:password name="user.password" key="password" id="id2"/></td>
    <td></td>
  </tr>
  <tr>
    <td><s:password name="user.repassword" key="repassword" id="id3"/></td>
    <td></td>
  </tr>
  <tr>
    <td><s:textfield name="user.age" key="age" id="id4"/></td>
    <td></td>
  </tr>
  <tr>
    <td><s:radio list="{'男','女'}"  name="user.gender" value="'男'" key="gender"/></td>
    <td></td>
  </tr>
  <tr>
    <td><s:textfield name="user.address" key="address"/></td>
    <td></td>
  </tr>
 <tr>
    <td rowspan="2">
    <input type="button" name="loginbtn" value="返回 " onclick="top.location.href='login.jsp'"/>
    <s:submit value="注册"/>
    </td>
</tr> 
</table>
 </s:form>
</div>
</body>
</html>