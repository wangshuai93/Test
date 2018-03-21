<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Using JavaBean</title>
</head>
<body>
<center>
<h2>Using JavaBean</h2>
<jsp:useBean id="test" class="action.TestBean"></jsp:useBean>
<jsp:setProperty name="test"    property="message"                      value="Hello JSP..." />
 <jsp:useBean id="date" class="java.util.Date"></jsp:useBean>
 <jsp:useBean id="students" class="com.test.StudentsBean">
 <jsp:setProperty property="firstName" name="students" value="Lucy"/>
 <jsp:setProperty property="lastName" name="students" value="Ray"/>
 <jsp:setProperty name="students" property="age"
                    value="10"/>
 </jsp:useBean>
 <p>学生的名字:<jsp:getProperty property="firstName" name="students"/>
 <p>学生的形式:<jsp:getProperty property="lastName" name="students"/>
 <p>年龄:<jsp:getProperty property="age" name="students"/>
<p>Got message....</p><br>
 <p><%=date %>
<jsp:getProperty name="test" property="message" />


</center>
</body>
</html>