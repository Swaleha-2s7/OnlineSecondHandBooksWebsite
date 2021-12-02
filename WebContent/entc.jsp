<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Second Hand Books</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="DeptStyles.css">
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%@ page import ="java.io.File" %>
<%@ page import ="java.io.FileOutputStream" %>
<%
try{
	  String user=session.getAttribute("userId").toString();
	  //out.println(user);
	  }catch(Exception e){
		  out.print("<script>alert('Login into the System first...!')</script>");
		  response.sendRedirect("login.jsp");
	  }
%>
<!--First Menu Bar-->
<div class="topnav" id="home">
    <a style="margin-left: 30%;">Icon</a>
    <input type="text" placeholder="Search..." name="search"/> 
    <button type="submit"><i class="fa fa-search"></i></button>
</div>
  <!--Second Menu Bar-->
<div class="navbar">
  <a href="index.jsp" style="margin-left: 27%;">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Books 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header">
        <h2>Diploma Books Categories</h2>
      </div>   
      <div class="row">
        <div class="column">
            <h4>Computer Engineering</h4>
            <a href="co.jsp">FY CO</a>
            <a href="co.jsp">SY CO</a>
            <a href="co.jsp">TY CO</a>
          </div>
          <div class="column">
            <h4>Mechanical Engineering</h4>
            <a href="me.jsp">FY ME</a>
            <a href="me.jsp">SY ME</a>
            <a href="me.jsp">TY ME</a>
          </div>
          <div class="column">
            <h4>Civil Engineering</h4>
            <a href="ce.jsp">FY EE</a>
            <a href="ce.jsp">SY EE</a>
            <a href="ce.jsp">TY EE</a>
          </div>
          <div class="column">
            <h4>Electrical Engineering</h4>
            <a href="ee.jsp">FY EE</a>
            <a href="ee.jsp">SY EE</a>
            <a href="ee.jsp">TY EE</a>
          </div>
          <div class="column">
            <h4>ENTC Engineering</h4>
            <a href="entc.jsp">FY EJ</a>
            <a href="entc.jsp">SY EJ</a>
            <a href="entc.jsp">TY EJ</a>
          </div>
          <div class="column">
            <h4>Instrumentation Engineering</h4>
            <a href="is.jsp">FY IS</a>
            <a href="is.jsp">SY IS</a>
            <a href="is.jsp">TY IS</a>
          </div>
      </div>
    </div>
  </div> 
  <a href="seller_final.jsp">Sell</a>
  <a href="exchange.jsp">Exchange</a>
  <a href="COebook.html">E-Book</a>
  </div>


<div class="section-row">
    <div class="page-container">
    <div class="section-column left">
      <div class="department">
        <br>
        <h1 style="font-size: xx-large;">Electronics and Telecommunication Engineering</h1><br>
        <center><h2><a href="#fy" style="color: white;text-decoration: none;">First Year</a></h2>
        <h2><a href="#sy" style="color: white;text-decoration: none;">Second Year</a></h2>
        <h2><a href="#ty" style="color: white;text-decoration: none;">Third Year</a></h2></center>
      </div>
    </div>
 <div class="section-column right">
    <div class="content">
    <%
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root");
    Statement st=con.createStatement();
    byte[] imgdata=null;
    //OutputStream o=response.getOutputStream();
    ResultSet rs=st.executeQuery("select * from et");	
    	%>
    	<div class="dept-row">
    	<%
    		while(rs.next()){
    			Blob image=null;
    			image=rs.getBlob("bookimage");
    			imgdata=image.getBytes(1, (int)image.length());
    			String path=image.toString();
    			
    			//o.write(imgdata);
    			//o.flush();
    			//out.println("<img src='"+image.toString()+".jpeg'>");
    		%>
    		<div class="dept-column">
			<div class="card">
                      <img src="<%=rs.getString("imagepath") %>" alt="Book" width="100px" height="100px"/>         
                      <h1><%= rs.getString("title") %></h1>
                      <p class="price"><i class="fa fa-rupee"></i><%= rs.getString("price") %></p>
                      <p><%= rs.getString("description") %></p>
                       <p><a href="payment.jsp?value=<%= rs.getString("title")%>&seller=<%= rs.getString("sellername")%>&branch=<%= rs.getString("branch")%>"><button>Buy Now</button></a></p>
             </div>
         </div>
    	<%
    }
    %>
    </div>
  </div>
 </div>  
</body>
</html>