<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% Cookie firstName = new Cookie("first_name",request.getParameter("first_name"));
   Cookie lastName = new Cookie("last_name",request.getParameter("last_name"));
   firstName.setMaxAge(60*60*24);
   lastName.setMaxAge(60*60*24);
   response.addCookie(firstName);
   response.addCookie(lastName);%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Using GET Method to Read Form Data</title>
</head>
<body>
<h2>Using GET Method to Read Form Data</h2>
<ul>
<li><p>First Name:<%= request.getParameter("first_name")%></p>
</li>
<li><p>Last Name:<%= request.getParameter("last_name") %><p></li>


</ul>

</body>
</html>