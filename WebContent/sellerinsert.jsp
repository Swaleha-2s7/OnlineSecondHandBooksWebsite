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
FileInputStream fs=null;
File file=null;
String query=null;
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String bookcount=request.getParameter("txtCount");
String title=request.getParameter("txtTitle");
String description =request.getParameter("txtDis"); 
String originalprice=request.getParameter("txtOri");
String discount=request.getParameter("txtDiscount");
String price=request.getParameter("txtPrice");
String myimg=request.getParameter("img1");
String mode=request.getParameter("mode");
String seller=request.getParameter("txtName");
String contact=request.getParameter("txtMob");
//out.print(branch);
//out.print(myimg);
 Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root");

if(branch.equals("CE")){
	query="INSERT INTO CE VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
}
if(branch.equals("CO")){
	query="INSERT INTO CO VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
}
if(branch.equals("EE")){
	query="INSERT INTO EE VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
}
if(branch.equals("ET")){
	query="INSERT INTO ET VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
}
if(branch.equals("IS")){
	query="INSERT INTO instru VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
}
if(branch.equals("ME")){
	query="INSERT INTO ME VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
}
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,branch);
ps.setString(2,year);
ps.setString(3,mode);
ps.setString(4,bookcount);
ps.setString(5,title);
ps.setString(6,description);
ps.setString(7,originalprice);
ps.setString(8,discount);
ps.setString(9,price);
String path="C:/Users/MAHESH/Pictures/"+myimg;
file = new File(path);
//out.print(file);
fs = new FileInputStream(file);
//ps.setBlob(9,fs,fs.available());
ps.setBinaryStream(10, (InputStream)fs, (int)(file.length()));
ps.setString(11,path);
ps.setString(12,seller);
ps.setString(13,contact);
int i = ps.executeUpdate();
response.sendRedirect("index.jsp");
//out.print("Congratulations...!!!");
//out.print(myimg);
%>
</body>
</html>