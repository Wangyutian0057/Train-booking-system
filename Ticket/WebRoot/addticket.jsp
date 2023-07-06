<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>addTicketInfo</title>
  </head>
  
  <body>
  <center>
  <s:actionerror/>
    <h2>添加车次信息</h2>
    <s:form action="addTicket" method="post">
    	<table width="320" border="0" bordercolor="purple" height="300">
    		<tr>
    			<td>车次id</td>
    			<td><input type="text" name="ticket.id" /></td>
    		</tr>
    		<tr>
    			<td>始发站</td>
    			<td><input type="text" name="ticket.start" /></td>
    		</tr>
    		<tr>
    			<td>终点站</td>
    			<td><input type="text" name="ticket.end" /></td>
    		</tr>
    		<tr>
    			<td>票价</td>
    			<td><input type="text" name="ticket.price" />元</td>
    		</tr>
    		<tr>
    			<td>列车类型</td>
    			<td><input type="text" name="ticket.model" /></td>
    		</tr>
    		<tr>
    			<td>历程时间</td>
    			<td><input type="text" name="ticket.ticketFactory" /></td>
    		</tr>
    		<tr>
    			<td>剩余票数</td>
    			<td><input type="text" name="ticket.ticketnum" /></td>
    		</tr>
    		<tr>
    			<td>始发时间</td>
    			<td><input type="text" name="ticket.flytime" /></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center"><input type="reset" value="重置" />
    			<input type="submit" value="添加" /></td>
    		</tr>
    	</table>
    </s:form>
  </center>
  </body>
</html>
