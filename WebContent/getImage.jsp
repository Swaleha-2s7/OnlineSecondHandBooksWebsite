<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.Blob"  %>
<%@page import="java.io.OutputStream"  %>
<%@page import="java.sql.ResultSet"  %>
<%@page import="java.sql.PreparedStatement"  %>
<%@page import="java.sql.DriverManager"  %>
<%@page import="java.sql.Connection"  %>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root");
PreparedStatement ps = con.prepareStatement("Select * from ");
%>
</body>
</html>