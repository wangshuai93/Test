<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>民族:<h:selectOneMenu id="idaaaa" value="#{user.name}">
                 <f:selectItems value="#{getcode.ls}" />    <--后台bean-->      
        </h:selectOneMenu> <br>

</body>
</html>