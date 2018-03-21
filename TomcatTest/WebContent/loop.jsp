<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%! int fontSize; %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% for(fontSize = 1;fontSize<4;fontSize++){ %>
<font color="green" size="<%=fontSize%>">JSP fudao</font><br/>
<%} %>
<% fontSize=1;%>
<% while(fontSize <5){ fontSize++;%>
<font size="<%=fontSize%>">你好</font>
<% } %>

</body>
</html>