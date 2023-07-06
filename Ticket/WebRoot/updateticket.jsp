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
    <h2 style="font-weight: normal;"><font face="宋体">修改车次信息</font></h2>
    <s:form action="updateTicket" method="post"> 
    	<table width="35%" border="0">
    		<tr>
    			<td>列车车次ID</td>
    			<td><s:textfield name="ticket.id" theme="simple" readonly="true" /></td>
    		</tr>
    		<tr>
    			<td>始发站</td>
    			<td><s:textfield name="ticket.start" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td>终点站</td>
    			<td><s:textfield name="ticket.end" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td>票价</td>
    			<td><s:textfield name="ticket.price" theme="simple" />元</td>
    		</tr>
    		<tr>
    			<td>列车类型</td>
    			<td><s:textfield name="ticket.model" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td>历程时间</td>
    			<td><s:textfield name="ticket.ticketFactory" theme="simple" /></td>
    		</tr>
    		<tr>
    		    <td>剩余票数</td>
    		    <td><s:textfield name="ticket.ticketnum" theme="simple" /></td>
    		</tr>
    		<tr>
    		    <td>始发时间</td>
    		    <td><s:textfield name="ticket.flytime" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center"><input type="reset" value="重置" />
    			<input type="submit" value="修改" /></td>
    		</tr>
    	</table>
    </s:form>
  </center>
  </body>
</html>
