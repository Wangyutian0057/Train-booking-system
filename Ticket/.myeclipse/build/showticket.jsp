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
    <h2>������Ϣ</h2>
    <s:form action="" method="post"> 
    	<table width="35%" border="0">
    		<tr>
    			<td>�г�����ID</td>
    			<td><s:textfield name="ticket.id" theme="simple" readonly="true" /></td>
    		</tr>
    		<tr>
    			<td>ʼ��վ</td>
    			<td><s:textfield name="ticket.start" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td>�յ�վ</td>
    			<td><s:textfield name="ticket.end" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td>Ʊ��</td>
    			<td><s:textfield name="ticket.price" theme="simple" /></td>
    		</tr>
    		<tr>
    			<td>�г�����</td>
    			<td><s:textfield name="ticket.model" theme="simple" />Ԫ</td>
    		</tr>
    		<tr>
    			<td>����ʱ��</td>
    			<td><s:textfield name="ticket.ticketFactory" theme="simple" /></td>
    		</tr>
    		<tr>
    		   <td>ʣ��Ʊ��</td>
    		    <td><s:textfield name="ticket.ticketnum" theme="simple" /></td>
    		</tr>
    		<tr>
    		   <td>ʼ��ʱ��</td>
    		    <td><s:textfield name="ticket.flytime" theme="simple" /></td>
    		</tr>
    	</table>
    </s:form>
  </center>
  </body>
</html>
