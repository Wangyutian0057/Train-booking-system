<%@page pageEncoding="gb2312" contentType="text/html; charset=gb2312" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<title></title>
<script type="text/javascript">
function a(){
alert("ɾ���ɹ���");
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
			<td width="100px">������</td>
			<td width="500px"><s:property value="username"/></td>
		</tr>
		<tr>
			<td>����</td>
			<td><s:property value="title"/></td>
		</tr>
		<tr>
			<td>����</td>
			<td><s:property value="content"/></td>
		</tr>
		<tr>
			<td>��������</td>
			<td><s:property value="date"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<s:url id="url" action="MessageAction!delete">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url>
			<s:a href="%{url}">ɾ��</s:a> 
				<s:url id="url" action="MessageAction!update">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url> 
				<s:a href="%{url}">�޸�</s:a>
			</td>
		</tr>
	</table>
	</div>
	</s:if>
	<s:else>
	<div style="background:#cede20">
	<table >
		<tr>
			<td width="100px">������</td>
			<td width="500px"><s:property value="username"/></td>
		</tr>
		<tr>
			<td>����</td>
			<td><s:property value="title"/></td>
		</tr>
		<tr>
			<td>����</td>
			<td><s:property value="content"/></td>
		</tr>
		<tr>
			<td>��������</td>
			<td><s:property value="date"/></td>
		</tr>
		<tr>
			<td colspan="2">
				<s:url id="url" action="MessageAction!delete">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url>
				<s:a href="%{url}">ɾ��</s:a>
				<s:url id="url" action="MessageAction!update">
					<s:param name="id"><s:property value="id"/></s:param>
				</s:url>
				<s:a href="%{url}">�޸�</s:a>
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
		��ҳ&nbsp��һҳ
	</s:if>
	<s:else>
		<s:a href="%{firstPage}">��ҳ</s:a>
		<s:a href="%{prePage}">��һҳ</s:a>
	</s:else>
	<s:if test="pageUtil.currentPage==pageUtil.pageNum">
		��һҳ&nbsp;βҳ
	</s:if>
	<s:else>
		<s:a href="%{nextPage}">��һҳ</s:a>
		<s:a href="%{endPage}">βҳ</s:a>
	</s:else>
	&nbsp;��<input type="text" name="pageUtil.currentPage" value="<s:property value='pageUtil.currentPage'/>" size="1">ҳ<input type="submit" value = "��ҳ" />
	&nbsp;ÿҳ/<s:property value='pageUtil.pageCount'/>�� 
	&nbsp;��<s:property value='pageUtil.pageNum'/>ҳ 
	</s:form>
	<hr/>
	<s:a href="index.jsp">��������</s:a>
	<s:a href="first.jsp">��ҳ</s:a>
	<s:a href="booktick.jsp">��Ʊ</s:a>
	<s:a href="index.jsp">����</s:a>
	<s:a href="login.jsp">�˳�</s:a>
</body>
</html>
