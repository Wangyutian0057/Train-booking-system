<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>showSelectedTicket</title>
  </head>
  
  <body>
  	<center>
    <font size="5">���Ĺ��ﳵ:</font><br/>
    <s:form action="" method="post">
    	<table width="80%" border="0">
    		<tr bgcolor="yellow">
    			<th>�г�����ID</th>
    			<th>ʼ��վ</th>
    			<th>�յ�վ</th>
    			<th>Ʊ��</th>
    			<th>�г�����</th>
    			<th>����ʱ��</th>
    			<th>ʣ��Ʊ��</th>
    			<th>ʼ��ʱ��</th>
    		</tr>
    		<s:iterator value="#request.selectTicket" id="ticket" status="st" >
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
    			</td>
    				<td align="center">
    				<s:property value="#ticket.ticketnum"/>
    			</td>
    			<td align="center">
    				<s:property value="#ticket.flytime"/>
    			</td>
    		</tr>
    		</s:iterator>
    		<tr>
    			<td>�ܼ�</td>
    			<td colspan="3" align="right"><s:property value="#request.priceSum" />Ԫ</td>
    		</tr>
    	</table>
    	��<font color="red"><s:property value="#request.ticketSum"/></font>��&nbsp;
    	<s:property value="#request.pageSize"/>��/ҳ&nbsp;
    	��<font color="red"><s:property value="#request.showPage"/></font>ҳ/
    	��<font color="red"><s:property value="#request.pageSum"/></font>ҳ&nbsp;
    	<s:a href="showFirstPageList.action?showPage=%{#request.showPage}">��ҳ</s:a>&nbsp;
    	<s:a href="showBeforePageList.action?showPage=%{#request.showPage}">��һҳ</s:a>&nbsp;
    	<s:a href="showNextPageList.action?showPage=%{#request.showPage}">��һҳ</s:a>&nbsp;
    	<s:a href="showLastPageList.action?showPage=%{#request.showPage}">βҳ</s:a>
    </s:form>
	</center>
  </body>
</html>
