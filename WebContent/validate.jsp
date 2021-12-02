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
<%
try{
String emailId=request.getParameter("uname");
String pass=request.getParameter("psw");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root"); 
Statement st= con.createStatement(); 
PreparedStatement ps = con.prepareStatement("select * from logindetail where email=?");
ps.setString(1, emailId);
ResultSet i=ps.executeQuery();
while(i.next()){
	if(i.getString("password").equals(pass)){
		out.print("<script>alert('Login Successful...')</script>");
		session.setAttribute("userId", emailId);
		response.sendRedirect("index.jsp");
		break;
	}
}
if(!i.getString("password").equals(pass)){
	out.print("<script>alert('Invalid Password.!!Please Try Again...')</script>");
	response.sendRedirect("login.jsp");
}
}catch(Exception e){
	out.print("<script>alert('Please Try Again...')</script>");
	response.sendRedirect("login.jsp");
}
%>
</body>
</html>