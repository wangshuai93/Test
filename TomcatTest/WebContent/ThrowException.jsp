<%@page import="javax.management.RuntimeErrorException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ShowError.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%    try{     
	int i = 1;  
	i = i / 0;  
	out.println("The answer is " + i); 
	}    catch (Exception e){ 
		out.println("An exception occurred: " + e.getMessage());    } 
%>
<%
int x =1;
if(x == 1){
	
	throw new RuntimeException("Error Condition!");
}

%>
</body>
</html>