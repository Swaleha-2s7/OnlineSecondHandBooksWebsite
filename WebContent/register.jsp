<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%
String email=request.getParameter("email");
String name=request.getParameter("name");
String pass=request.getParameter("password");
String address=request.getParameter("address");
String pincode=request.getParameter("pincode");
String state=request.getParameter("state");
String postalcode=request.getParameter("postalcode");
String phone =request.getParameter("phone"); 
//Integer id=1;

//String connectionURL = "jdbc:mysql://localhost:3306/cpe"; 
//Connection connection = null; 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root"); 
Statement st= con.createStatement(); 
int i=st.executeUpdate("insert into users values ('"+email+"','"+name+"','"+pass+"','"+address+"','"+pincode+"','"+state+"','"+postalcode+"','"+phone+"')"); 
int j=st.executeUpdate("insert into logindetail values ('"+email+"','"+pass+"')"); 
response.sendRedirect("login.jsp");
//out.println("<h1>Congratulation!!!<h1><br/>");


%>
</body>
</html>