<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<html>
<head>
<title>显示当前时间与日期</title>
</head>
<body>

<h1>显示当前时间与日期</h1>

<%
   Date date = new Date();
SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
   out.print( "<h2 align=\"center\">" +ft.format(date)+"</h2>");

%>
</body>
</html>