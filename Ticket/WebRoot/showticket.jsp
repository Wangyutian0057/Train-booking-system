<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>showOneTicketForm</title>
  </head>
  
  <body>
  <center>
    <h2>车次信息</h2>
    <s:form action="" method="post"> 
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
    			<td><s:textfield name="ticket.price" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td>列车类型</td>
    			<td><s:textfield name="ticket.model" theme="simple" />元</td>
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
    	</table>
    </s:form>
  </center>
  </body>
</html>
