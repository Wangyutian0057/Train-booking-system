<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>updateTicket</title>
  </head>
  
  <body>
  <center>
    <font size="6"><s:actionerror/></font>
    <h2 style="font-weight: normal;"><font face="宋体">修改列车车次信息</font></h2>
    <s:form action="" method="post">
    	<table width="80%" border="0">
    		<tr>
    			<th style="font-weight: normal;"><font size="4" face="宋体">列车车次ID</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">始发站</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">终点站</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">车票价格</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">列车类型</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">历程时间</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">剩余票数</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">始发时间</font></th>
    			<th style="font-weight: normal;"><font size="4" face="宋体">修改</font></th>
    		</tr>
    		<s:iterator value="#request.allTicketList" id="ticket" status="st" >
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
    			<td align="center">
    				<s:a href="updateTicketForm.action?tid=%{#ticket.id}" >修改</s:a>
    			</td>
    		</tr>
    		</s:iterator>
    	</table>
    	共<font color="red"><s:property value="#request.ticketSum"/></font>条&nbsp;
    	<s:property value="#request.pageSize"/>条/页&nbsp;
    	第<font color="red"><s:property value="#request.showPage"/></font>页/
    	共<font color="red"><s:property value="#request.pageSum"/></font>页&nbsp;
    	<s:a href="showFirstPageList_update.action?showPage=%{#request.showPage}">首页</s:a>&nbsp;
    	<s:a href="showBeforePageList_update.action?showPage=%{#request.showPage}">上一页</s:a>&nbsp;
    	<s:a href="showNextPageList_update.action?showPage=%{#request.showPage}">下一页</s:a>&nbsp;
    	<s:a href="showLastPageList_update.action?showPage=%{#request.showPage}">尾页</s:a>
    </s:form>
  </center>
  </body>
</html>
