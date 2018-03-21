<%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="javax.servlet.*,javax.servlet.http.* "%>
<%@ page import="java.text.DateFormat,java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ page import="java.text.NumberFormat,java.util.Date" %>
<%    //获取客户端本地化信息  
Locale locale = request.getLocale();  
String language = locale.getLanguage();  
String country = locale.getCountry();

// Set response content type    
response.setContentType("text/html");  
// Set spanish language code.     
response.setHeader("Content-Language", "es");   
String title = "En Espa?ol";

String date = DateFormat.getDateTimeInstance(DateFormat.FULL,    DateFormat.SHORT,locale).format(new Date( ));
//
NumberFormat nft = NumberFormat.getCurrencyInstance(locale);     String formattedCurr = nft.format(1000000); 

NumberFormat nft1 = NumberFormat.getPercentInstance(locale);     String formattedPerc = nft1.format(0.51);
%>
<html>
<head>
<title>Detecting Locale</title>
</head>
<body>
<center>
<h1>Detecting Locale</h1>
</center>
<p align="center">
<%     out.println("Language : " + language  + "<br />");
   out.println("Country  : " + country   + "<br />");
%>
</p>
<div align="center">
<p>En Espa?ol</p>
<p>?Hola Mundo!</p>
<p><%out.print(date); %></p>
<p><%out.print(formattedCurr); %></p>
<P><%out.print(formattedPerc); %></P>
</div>
</body>
</html>
