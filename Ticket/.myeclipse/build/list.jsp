<%@page pageEncoding="gb2312" contentType="text/html; charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title></title>
<script type="text/javascript">
function a(){
alert("删除成功！");
}

</script>
</head>
<body>
	<hr/>
	<s:iterator value="listPage" status="tablestatus">
	<s:if test="#tablestatus.odd==0">
	<div  style="background:#ccc">
	<table>
		<tr>
			<td width="100px">留言人</td>
			<td width="500px"><s:property value="username"/></td>
		</tr>
		<tr>
			<td>主题</td>
			<td><s:property value="title"/></td>
		</tr>
		<tr>
			<td>内容</td>
			<td><s:property value="content"/></td>
		</tr>
		<tr>
			<td>留言日期</td>
			<td><s:property value="date"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<s:url id="url" action="MessageAction!delete">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url>
			<s:a href="%{url}">删除</s:a> 
				<s:url id="url" action="MessageAction!update">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url> 
				<s:a href="%{url}">修改</s:a>
			</td>
		</tr>
	</table>
	</div>
	</s:if>
	<s:else>
	<div style="background:#cede20">
	<table >
		<tr>
			<td width="100px">留言人</td>
			<td width="500px"><s:property value="username"/></td>
		</tr>
		<tr>
			<td>主题</td>
			<td><s:property value="title"/></td>
		</tr>
		<tr>
			<td>内容</td>
			<td><s:property value="content"/></td>
		</tr>
		<tr>
			<td>留言日期</td>
			<td><s:property value="date"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<s:url id="url" action="MessageAction!delete">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url>
				<s:a href="%{url}">删除</s:a>
				<s:url id="url" action="MessageAction!update">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url>
				<s:a href="%{url}">修改</s:a>
			</td>
		</tr>
	</table>
	</div>
	</s:else>
	<hr color="#b2d"/>
	</s:iterator>
	<s:url id="firstPage" action="list">
		<s:param name="pageUtil.currentPage">1</s:param>
	</s:url>
	<s:url id="prePage" action="list">
		<s:param name="pageUtil.currentPage"><s:property value="pageUtil.currentPage-1"/></s:param>
	</s:url>
	<s:url id="nextPage" action="list">
		<s:param name="pageUtil.currentPage"><s:property value="pageUtil.currentPage+1"/></s:param>
	</s:url>
	<s:url id="endPage" action="list">
		<s:param name="pageUtil.currentPage"><s:property value="pageUtil.pageNum"/></s:param>
	</s:url>
	<s:form action="list"  >
	<s:if test="pageUtil.currentPage==1">
		首页&nbsp上一页
	</s:if>
	<s:else>
		<s:a href="%{firstPage}">首页</s:a>
		<s:a href="%{prePage}">上一页</s:a>
	</s:else>
	<s:if test="pageUtil.currentPage==pageUtil.pageNum">
		下一页&nbsp;尾页
	</s:if>
	<s:else>
		<s:a href="%{nextPage}">下一页</s:a>
		<s:a href="%{endPage}">尾页</s:a>
	</s:else>
	&nbsp;第<input type="text" name="pageUtil.currentPage" value="<s:property value='pageUtil.currentPage'/>" size="1">页<input type="submit" value = "跳页" />
	&nbsp;每页/<s:property value='pageUtil.pageCount'/>条 
	&nbsp;共<s:property value='pageUtil.pageNum'/>页 
	</s:form>
	<hr/>
	<s:a href="index.jsp">继续留言</s:a>
	<s:a href="first.jsp">首页</s:a>
	<s:a href="booktick.jsp">订票</s:a>
	<s:a href="index.jsp">留言</s:a>
	<s:a href="login.jsp">退出</s:a>
</body>
</html>
