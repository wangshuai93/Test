<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTTP Header Request Example</title>
</head>
<body>
<h2>HTTP Header Request Example</h2>
<table width="100%" border="1" align="center">
<tr bgcolor="#949494">
<th>Name<th>Value
</tr>
<tr>
<% Enumeration paramNames=request.getParameterNames();while(paramNames.hasMoreElements()){
	String name=paramNames.nextElement().toString();
	String value=request.getParameter(name);
	out.print("<tr><td>"+name+"\n");
	out.print("<td>"+value+"\n");
}
	%>
</tr>
</table>
</body>
</html>