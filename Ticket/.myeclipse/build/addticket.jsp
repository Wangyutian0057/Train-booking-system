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
    <h2>��ӳ�����Ϣ</h2>
    <s:form action="addTicket" method="post">
    	<table width="320" border="0" bordercolor="purple" height="300">
    		<tr>
    			<td>����id</td>
    			<td><input type="text" name="ticket.id" /></td>
    		</tr>
    		<tr>
    			<td>ʼ��վ</td>
    			<td><input type="text" name="ticket.start" /></td>
    		</tr>
    		<tr>
    			<td>�յ�վ</td>
    			<td><input type="text" name="ticket.end" /></td>
    		</tr>
    		<tr>
    			<td>Ʊ��</td>
    			<td><input type="text" name="ticket.price" />Ԫ</td>
    		</tr>
    		<tr>
    			<td>�г�����</td>
    			<td><input type="text" name="ticket.model" /></td>
    		</tr>
    		<tr>
    			<td>����ʱ��</td>
    			<td><input type="text" name="ticket.ticketFactory" /></td>
    		</tr>
    		<tr>
    			<td>ʣ��Ʊ��</td>
    			<td><input type="text" name="ticket.ticketnum" /></td>
    		</tr>
    		<tr>
    			<td>ʼ��ʱ��</td>
    			<td><input type="text" name="ticket.flytime" /></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center"><input type="reset" value="����" />
    			<input type="submit" value="���" /></td>
    		</tr>
    	</table>
    </s:form>
  </center>
  </body>
</html>
