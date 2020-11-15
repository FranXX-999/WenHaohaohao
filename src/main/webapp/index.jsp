<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/23
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    hello
</h1>

<%!
    String i ="world";
%>

<%
    out.print("hello " + i);
%>

<p>
当前时间: <%
        out.print(new Date().toLocaleString());

        %>
<jsp:forward page="header.jsp" />
</body>
</html>
