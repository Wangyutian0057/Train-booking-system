<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>searchTicket</title>
  </head>
  
  <body>
  <center>
    <font size="6">��ַ����������Ϣ</font>
    <s:form action="searchTicketFuzzily" method="post">
    	<s:textfield name="ticket.start" label="�������복��������Ĺؼ���"/>
    	<s:submit value="��ʼ����" />
    </s:form>
  </center>
  </body>
</html>
