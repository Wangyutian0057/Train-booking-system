<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>searchTicketAccuratly</title>
  </head>
  
  <body>
  <center>
    <font size="6">列车车次ID搜索车次信息</font>
    <s:form action="searchTicketAccuratly" method="post">
    	<s:textfield name="ticket.id" label="请输入列车车次ID"/>
    	<s:submit value="开始搜索" />
    </s:form>
  </center>
  </body>
</html>
