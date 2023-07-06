<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*" %> 
<%@page import="java.text.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="sun.io.*"%>
<%request.setCharacterEncoding("gb2312");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>车票预订</title>
<style type="text/css">
<!--
#apDiv3{
position:absolute;
top:60px;
left: 500px;
}
-->
body{
background-repeat: no-repeat;
background-position: center;
}
</style>
<body background="image/0.JPG" id="apDiv3">
<table><tr  align="center">
<td><a href="first.jsp">首页</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><a href="booktick.jsp">订票</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><a href="index.jsp">留言</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><a href="login.jsp">退出</a></td>
</tr>
</table>
<center>
    <form name="form1" action="book.action" method="post">
        <table width="777" height="378" cellpadding=0 cellspacing=0 border="0">
          <tr>
            <td width="142" height="56"></td>
            <td width="106">&nbsp;</td>
            <td width="242">&nbsp;</td>
            <td width="287">&nbsp;</td>
          </tr>
          <tr>
            <td height="29">&nbsp;</td>
            <td>*车次Id ：</td>
            <td>
<!-- <input type="text" name="bookticket.ticketid" > -->
<%
  out.print(request.getParameter("aaa"));
 %>
                         </input>
             
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="29">&nbsp;</td>
            <td>姓 名 ：</td>
            <td>
              <input type="text" name="bookticket.travelname">
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="28">&nbsp;</td>
            <td>性 别 ：</td>
            <td><p>
              <label>
              <input name="bookticket.gender" type="radio" value="male" checked>
  男</label>
              <label>
              <input type="radio" name="bookticket.gender" value="female">
  女</label>
              <br>
            </p>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="30">&nbsp;</td>
            <td>身份证号码：</td>
            <td>
              <input name="bookticket.Id" type="text">
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="28">&nbsp;</td>
            <td>联系电话：</td>
            <td>
              <input type="text" name="bookticket.Telephone">
</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="22">&nbsp;</td>
            <td>车票张数：</td>
            <td><input type="text" name="bookticket.neednum"></td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="22">&nbsp;</td>
            <td><input type="submit" name="Submit" value="预订确认"></td>
            <td><div align="center">
              <input type="reset" name="Submit2" value="重新预订">
            </div></td>
            <td>&nbsp;</td>
          </tr>
        </table>
    </form>
</center>
</body>
</html>
