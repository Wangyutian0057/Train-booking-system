<%@page pageEncoding="gb2312" contentType="text/html; charset=gb2312" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title></title>
</head>
<body>
	<form action="MessageAction!insert.action" method="post">
	 <table align="center">
    <tr>
  <td><a href="first.jsp">首页</a></td>
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
  <td><a href="booktick.jsp">订票</a></td>
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
  <td><a href="index.jsp">留言</a></td>
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
  <td><a href="login.jsp">退出</a></td>
  </tr>
  </table>
  <center>
  <img alt="" src="image/15.gif">
	<table width="497" height="296">
		<tr>
			<td>留言人</td> 
			<td><input type="text" name="msg.username"/></td>
		</tr>
		<tr>
			<td>主题</td> 
		 	<td><input type="text" name="msg.title"/></td> 
		</tr>
		<tr>
			<td>内容</td>
			<td><textarea name="msg.content" cols="50" rows="10"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="提交"/></td>
		</tr>
	</table>
	</center>
	</form>
</body>		
</html>
