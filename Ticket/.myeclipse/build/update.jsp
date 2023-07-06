<%@page pageEncoding="gb2312" contentType="text/html; charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title></title>
</head>
<body>
	<s:form action="MessageAction!update1">
	<table>
		<tr style="display:none">
			<td>用户ID</td> 
			<td><input type="text" name="msg.id" value="<s:property value='msg.id'/>" /></td>
		</tr>
		<tr>
			<td>留言人</td> 
			<td><input type="hidden" name="msg.username" value="<s:property value='msg.username'/>"/><s:property value="msg.username"/></td>
		</tr>
		<tr>
			<td>主题</td> 
		 	<td><input type="text" name="msg.title" value="<s:property value='msg.title'/>"/></td> 
		</tr>
		<tr>
			<td>内容</td>
			<td><textarea name="msg.content" cols="50" rows="10"><s:property value='msg.content'/></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><input type="submit" value="保存"/></td>
		</tr>
	</table>
	</s:form>
</body>
</html>
