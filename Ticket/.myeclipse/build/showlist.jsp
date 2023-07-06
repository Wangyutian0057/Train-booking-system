<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>showticketList</title>
  </head>
  
  <body>
  <center>
    <h2>车次信息</h2>
    <s:form action="" method="post">
    	<table width="80%" border="0">
    		<tr>
    			<th>列车车次ID</th>
    			<th>始发站</th>
    			<th>终点站</th>
    			<th>票价</th>
    			<th>列车类型</th>
    			<th>历程时间</th>
    			<th>剩余票数</th>
    			<th>始发时间</th>
    		</tr>
    		<s:iterator value="#request.ticketList" id="ticket" status="st" >
    		<tr <s:if test="#st.odd">
    			style="background-color:#bbbbbb"</s:if>>
    			<td align="center">
    					<s:property value="#ticket.id" />
    			</td>
    			<td align="center">
    					<s:property value="#ticket.start" />
    			</td>
    			<td align="center">
    					<s:property value="#ticket.end" />
    			</td>
    			<td align="center">
    					<s:property value="#ticket.price" />
    			</td>
    			<td align="center">
    				<s:property value="#ticket.model"/>
    			</td>
    			<td align="center">
    				<s:property value="#ticket.ticketFactory"/>
    			</td>
    				<td align="center">
    				<s:property value="#ticket.ticketnum"/>
    			</td>
    			<td align="center">
    				<s:property value="#ticket.flytime"/>
    			</td>
    		</tr>
    		</s:iterator>
    	</table>
    	共<font color="red"><s:property value="#request.ticketSum"/></font>条&nbsp;
    	<s:property value="#request.pageSize"/>条/页&nbsp;
    	第<font color="red"><s:property value="#request.showPage"/></font>页/
    	共<font color="red"><s:property value="#request.pageSum"/></font>页&nbsp;
    	<s:a href="showFirstPageList.action?showPage=%{#request.showPage}">首页</s:a>&nbsp;
    	<s:a href="showBeforePageList.action?showPage=%{#request.showPage}">上一页</s:a>&nbsp;
    	<s:a href="showNextPageList.action?showPage=%{#request.showPage}">下一页</s:a>&nbsp;
    	<s:a href="showLastPageList.action?showPage=%{#request.showPage}">尾页</s:a>
    </s:form>
  </center>
  </body>
</html>
