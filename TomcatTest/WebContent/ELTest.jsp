<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*" %>
<% String title = "Accessing Request param";%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%out.print(title); %></title>
</head>
<body>
<h1>${2*3+8 }<h1>
<h2><%out.print(title); %></h2>	
<p>${param["username"]}</p>
<h1>User agent</h1>
<p>${header["user-agent"]}</p>

	
</body>
</html>