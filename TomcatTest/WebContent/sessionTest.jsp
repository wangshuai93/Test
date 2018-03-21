<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*,java.util.*" %>
<% Date createTime = new Date(session.getCreationTime());
Date lastAccessTime= new Date(session.getLastAccessedTime());
String title = "Welcome back to my website";
Integer visitCount= new Integer(0);
String visitCountKey = new String("visitCount");
String userIDKey = new String("userID");  
String userID = new String("ABCD"); 
if(session.isNew()){
	title = "Welcome to my website";      
	session.setAttribute(userIDKey, userID); 
	session.setAttribute(visitCountKey,  visitCount); 
}
visitCount = (Integer)session.getAttribute(visitCountKey);
visitCount= visitCount+1;
userID=(String)session.getAttribute(userIDKey);
session.setAttribute(visitCountKey, visitCount);

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session Tracking</title>
</head>
<body>
<h1>Session Tracking</h1>
<table border="1" align="center">
<tr bgcolor="#949494">
<th>Session Info
<th>Value
</tr>
<tr>
<td>id
<td><%out.print(session.getId()); %>
</tr>
<tr>
   <td>Creation Time</td>
   <td><% out.print(createTime); %></td>
</tr> 
<tr>
   <td>Time of Last Access</td>
   <td><% out.print(lastAccessTime); %></td>
</tr> 
<tr>
   <td>User ID</td>
   <td><%= userID %></td>
</tr> 
<tr>
   <td>Number of visits</td>
   <td><%= visitCount %></td>
</tr> 
</table>
</body>
</html>