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
  <style>
      
body {
    margin: 0;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            
  }
/*First Menu Bar*/
.topnav {
    list-style-type: none;
    margin-top: 0;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-image: repeating-linear-gradient(rgb(224, 224, 224),white);
    width: 100%;
    top:0;
  }
  
  .topnav a {
    float: left;
  }
  
  .topnav a {
    display: block;
    color: rgb(0, 0, 0);
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }
  
  .topnav a:hover {
    background-color: rgb(229, 229, 230);
  }
  .topnav input[type=text]{
    float:left;
    padding: 6px;
    margin-top: 8px;
    margin-right: 6px;
    margin-left: 10px;
    border: none;
    font-size: 17px;
  }
  @media screen and (max-width: 600px){
    .topnav a, .topnav input[type=text]{
      float:none;
      display: block;
      text-align: left;
      width: 100%;
      margin: 0;
      padding: 14px;
    }  
    .topnav input[type=text]{
      border: 1px solid #ccc;
    }
    .topnav button[type=submit]{
      float:none;
      display: block;
      text-align: left;
      width: 100%;
      margin: 0;
      padding: 14px;
    }
  }
  .topnav button[type=submit]{
    float: left;
    padding: 5px;
    margin-top: 8px;
    margin-right: 10px;
    width: 30px;
    background: #2196f3;
    color: white;
    font-size: 17px;
    border: 1px solid grey;
    border-left: none;
    cursor: pointer;
  }
  .topnav button:hover{
    background: #0b7dda;
  }
  /*Second Menu Bar*/
  .navbar {
    overflow: hidden;
    background-image: linear-gradient(rgb(29, 28, 28),rgb(109, 107, 107));
    font-family: Arial, Helvetica, sans-serif;
    width: 100%;
    
  }
  
  .navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }
  
  .dropdown {
    float: left;
    overflow: hidden;
  }
  
  .dropdown .dropbtn {
    font-size: 16px;  
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font: inherit;
    margin: 0;
  }
  
  .navbar a:hover, .dropdown:hover .dropbtn {
    background-color: rgb(70, 68, 68);
  }
  
  .dropdown-content {
    display: none;
    position: absolute;
    width: 100%;
    left: 0;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }
  
  .dropdown-content .header {
    background-image: linear-gradient(rgb(85, 84, 84),rgb(170, 165, 165));
    padding: 16px;
    color: white;
  }
  
  .dropdown:hover .dropdown-content {
    display: block;
  }
  
  /* Create six equal columns that floats next to each other */
  .column {
    float: left;
    width: 16%;
    padding: 4px;
    background-image: linear-gradient(white,rgb(238, 234, 234));
    height: 250px;
    border-left: 1px dotted black;
  }
  
  .column a {
    float: none;
    color: black;
    padding: 16px;
    text-decoration: none;
    display: block;
    text-align: left;
  }
  
  .column a:hover {
    background-color: rgb(227, 216, 228);
  }
  
  /* Clear floats after the columns */
  .row:after {
    content: "";
    display: table;
    clear: both;
  }
            .sidenav{
            width: 230px;
            position: fixed;;
            z-index: 1;
            height: 465px;
            top: 20px;
            left: 4px;
            background: #eee;
             
             padding: 10px 0; 
            }
            .modal
           {
            display:none;
            position:absolute;
            z-index: 41;
            left: 30%;
            right: 40%;
            top: 20%;

            width: 500px;
            height: 400px;
  
            overflow: auto;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0,0,0,0.4);
            padding-top:60px;
            padding: 30px;


           }
          .modal-content{
          background-color: #fefefe;
          margin: 5% auto 15% auto;
          width:80%;
          }
          .close{
          position: absolute;
          right:25px ;
          top:0;
          color:#000;
          font-size: 35px;
          font-weight: bold;
          }
  .close:hover,
  .close:focus{
    color: red;
    cursor: pointer;
  }
  .animate{
    -webkit-animation: animatezoom o.6s;
    animation: animatezoom 0.6s

  }
            .sidenav a{
                padding: 6px 8px 6px 16px;
                text-decoration: none;
                font-size: 25px;
                color: #2196F3;
                display: block;
            }
            .sidenav a:hover{
                color: #064579;

            }
            .container2
            {
            padding: 20px;
             }
            .main{
                margin-left: 140px;
                font-size: 28px;
                padding: 0px 10px;
            }
            @media screen and (max-height:450px){
                .sidenav{padding-top: 20px;}
                .sidenav a{font-size: 18px;}
            }
            
  </style>

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
          <a href="ce.jsp">FY CE</a>
          <a href="ce.jsp">SY CE</a>
          <a href="ce.jsp">TY CE</a>
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


<h2>Computer Engineering</h2>
   <%
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root");
    Statement st=con.createStatement();
    byte[] imgdata=null;
    int count=1;
    //OutputStream o=response.getOutputStream();
    ResultSet rs=st.executeQuery("select * from co where mode='exchange'");	
    	%>
    	<div class="dept-row">
    	<%
    		while(rs.next()){
    			Blob image=null;
    			image=rs.getBlob("bookimage");
    			imgdata=image.getBytes(1, (int)image.length());
    			String path=image.toString();
    		%>
    		<div class="dept-column">
			<div class="card">
                      <img src="<%=rs.getString("imagepath") %>" alt="Book" width="100px" height="100px"/>         
                      <h2><%= rs.getString("title") %></h2>
                      <p class="price"><i class="fa fa-rupee"></i><%= rs.getString("price") %></p>
                      <p><%= rs.getString("description") %></p>
                      <p>Seller: <%= rs.getString("sellername") %> Year:<%= rs.getString("year") %></p>
                      <p><a><button>Contact to Exchange</button></a></p>
             </div>
         </div>
    	<%
    }
    	//con.close();
    %>
        
    </div>
<br><br><br><br><br><br>
<h2>Mechanical Engineering</h2>
   <%
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from me where mode='exchange'");	
    	%>
    	<div class="dept-row">
    	<%
    		while(rs.next()){
    			Blob image=null;
    			image=rs.getBlob("bookimage");
    			imgdata=image.getBytes(1, (int)image.length());
    			String path=image.toString();
    		%>
    		<div class="dept-column">
			<div class="card">
                      <img src="<%=rs.getString("imagepath") %>" alt="Book" width="100px" height="100px"/>         
                      <h1><%= rs.getString("title") %></h1>
                      <p class="price"><i class="fa fa-rupee"></i><%= rs.getString("price") %></p>
                      <p><%= rs.getString("description") %></p>
                      <p>Seller: <%= rs.getString("sellername") %> Year:<%= rs.getString("year") %></p>
                      <p><a><button>Contact to Exchange</button></a></p>
             </div>
         </div>
    	<%
    }
    	//con.close();
    %>
        
    </div>
<br><br><br><br><br><br>
<h2>Civil Engineering</h2>
   <%
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from ce where mode='exchange'");	
    	%>
    	<div class="dept-row">
    	<%
    		while(rs.next()){
    			Blob image=null;
    			image=rs.getBlob("bookimage");
    			imgdata=image.getBytes(1, (int)image.length());
    			String path=image.toString();
    		%>
    		<div class="dept-column">
			<div class="card">
                      <img src="<%=rs.getString("imagepath") %>" alt="Book" width="100px" height="100px"/>         
                      <h1><%= rs.getString("title") %></h1>
                      <p class="price"><i class="fa fa-rupee"></i><%= rs.getString("price") %></p>
                      <p><%= rs.getString("description") %></p>
                      <p>Seller: <%= rs.getString("sellername") %> Year:<%= rs.getString("year") %></p>
                      <p><a><button>Contact to Exchange</button></a></p>
             </div>
         </div>
    	<%
    }
    	//con.close();
    %>
        
    </div>
<br><br><br><br><br><br>
<h2>Electrical Engineering</h2>
   <%
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from ee where mode='exchange'");	
    	%>
    	<div class="dept-row">
    	<%
    		while(rs.next()){
    			Blob image=null;
    			image=rs.getBlob("bookimage");
    			imgdata=image.getBytes(1, (int)image.length());
    			String path=image.toString();
    		%>
    		<div class="dept-column">
			<div class="card">
                      <img src="<%=rs.getString("imagepath") %>" alt="Book" width="100px" height="100px"/>         
                      <h1><%= rs.getString("title") %></h1>
                      <p class="price"><i class="fa fa-rupee"></i><%= rs.getString("price") %></p>
                      <p><%= rs.getString("description") %></p>
                      <p>Seller: <%= rs.getString("sellername") %> Year:<%= rs.getString("year") %></p>
                      <p><a><button>Contact to Exchange</button></a></p>
             </div>
         </div>
    	<%
    }
    	//con.close();
    %>
        
    </div>
<br><br><br><br><br><br>
<h2>Electronics and Telecommunication Engineering</h2>
   <%
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from et where mode='exchange'");	
    	%>
    	<div class="dept-row">
    	<%
    		while(rs.next()){
    			Blob image=null;
    			image=rs.getBlob("bookimage");
    			imgdata=image.getBytes(1, (int)image.length());
    			String path=image.toString();
    		%>
    		<div class="dept-column">
			<div class="card">
                      <img src="<%=rs.getString("imagepath") %>" alt="Book" width="100px" height="100px"/>         
                      <h1><%= rs.getString("title") %></h1>
                      <p class="price"><i class="fa fa-rupee"></i><%= rs.getString("price") %></p>
                      <p><%= rs.getString("description") %></p>
                      <p>Seller: <%= rs.getString("sellername") %> Year:<%= rs.getString("year") %></p>
                      <p><a><button>Contact to Exchange</button></a></p>
             </div>
         </div>
    	<%
    }
    	//con.close();
    %>
        
    </div>
<br><br><br><br><br><br>
<h2>Instrumentation Engineering</h2>
   <%
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from instru where mode='exchange'");	
    	%>
    	<div class="dept-row">
    	<%
    		while(rs.next()){
    			Blob image=null;
    			image=rs.getBlob("bookimage");
    			imgdata=image.getBytes(1, (int)image.length());
    			String path=image.toString();
    		%>
    		<div class="dept-column">
			<div class="card">
                      <img src="<%=rs.getString("imagepath") %>" alt="Book" width="100px" height="100px"/>         
                      <h1><%= rs.getString("title") %></h1>
                      <p class="price"><i class="fa fa-rupee"></i><%= rs.getString("price") %></p>
                      <p><%= rs.getString("description") %></p>
                      <p>Seller: <%= rs.getString("sellername") %> Year:<%= rs.getString("year") %></p>
                      <p><a><button>Contact to Exchange<</button></a></p>
             </div>
         </div>
    	<%
    }
    	//con.close();
    %>
        
    </div>
<br><br><br><br><br><br>
</body>
</html>