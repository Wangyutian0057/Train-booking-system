<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="GB18030"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>deleteGoodsInfo</title>
  </head>
  
  <body>
  <center>
  	<font><s:actionerror/></font>
    <h2 style="font-weight: normal;"><font face="����">ɾ��������Ϣ</font></h2>
    <s:form action="" method="post">
    	<table width="80%" border="0">
    		<tr>
    			<th style="font-weight: normal;"><font face="����" size="4">����ID</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">ʼ��վ</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">�յ�վ</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">Ʊ��</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">�г�����</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">����ʱ��</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">ʣ��Ʊ��</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">ʼ��ʱ��</font></th>
    			<th style="font-weight: normal;"><font face="����" size="4">ɾ��</font></th>
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
    				<s:a href="deleteTicket.action?tid=%{#ticket.id}" >ɾ��</s:a>
    			</td>
    		</tr>
    		</s:iterator>
    	</table>
    	��<font color="red"><s:property value="#request.ticketSum"/></font>��&nbsp;
    	<s:property value="#request.pageSize"/>��/ҳ&nbsp;
    	��<font color="red"><s:property value="#request.showPage"/></font>ҳ/
    	��<font color="red"><s:property value="#request.pageSum"/></font>ҳ&nbsp;
    	<s:a href="showFirstPageList_delete.action?showPage=%{#request.showPage}">��ҳ</s:a>&nbsp;
    	<s:a href="showBeforePageList_delete.action?showPage=%{#request.showPage}">��һҳ</s:a>&nbsp;
    	<s:a href="showNextPageList_delete.action?showPage=%{#request.showPage}">��һҳ</s:a>&nbsp;
    	<s:a href="showLastPageList_delete.action?showPage=%{#request.showPage}">βҳ</s:a>
    </s:form>
  </center>
  </body>
</html>
