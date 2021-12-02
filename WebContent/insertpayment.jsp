<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%@ page import ="java.io.File" %>
<%@ page import ="java.io.FileInputStream" %>
<%
String user=session.getAttribute("userId").toString();
String book=request.getParameter("bname");
String price=request.getParameter("prc");
String seller=request.getParameter("sname");
String phone=request.getParameter("contact");
String branch =request.getParameter("branch"); 
String year=request.getParameter("year");
String paymode=request.getParameter("mode");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into soldbooks values ('"+user+"','"+book+"','"+price+"','"+seller+"','"+phone+"','"+branch+"','"+year+"','"+paymode+"')");
out.print("<script>alert('Book Sold Successfully..!!')<script>");
int j=st.executeUpdate("DELETE FROM "+branch+" where title='"+book+"'");
response.sendRedirect("index.jsp");
//out.println("Congratulations...!!!");
%>

</body>
</html>