<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reading Checkbox Data</title>
</head>
<body>
<h1>Reading Checkbox Data</h1>
<ul>
<li>
<p>
Math Flag:<%=request.getParameter("maths") %>
</p>

</li>
<li><p>English Flag:<%=request.getParameter("english") %>

</li>
<li>
<p>Chinese Flag:<%=request.getParameter("chinese") %>
</li>


</ul>
</body>
</html>