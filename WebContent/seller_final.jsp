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
  <script language="javascript" type="text/javascript">
  function discount()
  {
    with(document.forms.form1){
    discount=(txtDiscount.value/100)*txtOri.value
    new_price=txtOri.value-discount
    txtPrice.value=new_price
  }}
  </script>
  <style>
      
body {
    margin: 0;
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
  .dropbtn{
  	background-image: linear-gradient(rgb(29, 28, 28),rgb(109, 107, 107));
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
  </style>
  

</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
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
  <a href="calculator.html">Calculator</a>
</div>
<div class="header" style="background-color: darkcyan; height: 40px; width:100% ">
  <center><h1>Sell Your Book</h1></center>
</div>
<div class="sub" style="margin-left: 50px; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif ">
<form name="form1" method="post" action="sellerinsert.jsp">
  <br><br><br>
  <%
  Class.forName("com.mysql.jdbc.Driver"); 
  java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root"); 
  //Statement st= con.createStatement();
  //String user=request.getParameter("eamil");
  String user="";
  try{
  user=session.getAttribute("userId").toString();
  out.println(user);
  }catch(Exception e){
	  out.print("<script>alert('Login into the System first...!')</script>");
	  response.sendRedirect("login.jsp");
  }
  PreparedStatement ps = con.prepareStatement("select * from users where email=?");
  ps.setString(1, user);
  ResultSet rs=ps.executeQuery();
  while(rs.next()){
  %>
   <h2>Check Your Details</h2><hr>
   <table>
    <tr><td><h3><label>Name</label></h3></td><td></td><td></td><td><input type="text" id="txtName" name="txtName" style="width: 500px; height:40px ; border-radius: 5px;font-size: 20px" value="<%=rs.getString("name") %>"/></td></tr><br>
    <tr><td><h3><label>Address</label></h3></td><td></td><td></td><td><input type="text" id="txtAdd" name="txtAdd" style="width: 500px; height:80px ; border-radius: 5px;font-size: 20px" value="<%=rs.getString("address") %>"/></td></tr><br>
    <tr><td><h3><label>Email-Id</label></h3></td><td></td><td></td><td><input type="text" id="txtEmail" name="txtEmail" style="width: 500px; height:40px ; border-radius: 5px;font-size: 20px " value="<%=rs.getString("email") %>"/></td></tr><br>
    <br><tr><td><h3><label> Mobile Number </label></h3></td><td></td><td></td><td><input type="text" value="+91" style="width: 40px;height:40px ; border-radius: 5px;font-size: 20px" ><input type="text" id="txtMob" name="txtMob" style="width: 460px; height:40px ; border-radius: 5px; font-size: 20px"  value="<%=rs.getString("phone") %>"/></td></tr></table><br><hr><br><br><br>
  <%
  }
  %>
  
  <h2>  Enter Book Details</h2><hr><br>
  <table><tr><td><h3>Select Branch:</h3></td><td></td><td></td><td>
  <select name="branch" id="branch" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size: 17px;border-radius: 5px">
      <option value="CE">Civil Engineering</option>
      <option value="CO">Computer Engineering</option>
      <option value="EE">Electrical Engineering</option>
      <option value="ET">Electronics & Telecommunication</option>
      <option value="IS">Instrumentation</option>
      <option value="ME">Mechanical Engineering</option>
  </select></td></tr></table>
     <br>
     <table><tr><td><h3>Select Year:</h3></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
     <select name="year" id="year" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size: 17px;border-radius: 5px">
          <option value="FY">First Year</option>
          <option value="SY">Second Year</option>
          <option value="TY">Third Year</option>
          </select></td></tr></table><br><br>
  
  <table><tr><td><h3>Select Mode:</h3></td><td></td><td></td><td>
  <select name="mode" id="mode" style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size: 17px;border-radius: 5px">
      <option value="sell">Sell</option>
      <option value="exchange">Exchange</option>
  </select></td></tr></table>
     <br>
     
  <table><tr><td><h3> Book Count:</h3></td><td></td><td></td><td></td><td></td><td></td><td>
  <input type="text" name="txtCount" id="txtCount" style="width: 500px; height: 40px;border-radius: 5px;font-size: 20px"  ></td></tr></table><br>
  <table><tr><td><h3> Add Title:</h3></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
  <input type="text" id="txtTitle" name="txtTitle"style="width: 500px; height: 100px;border-radius: 5px;font-size: 20px"  ></td></tr></table><br>
  <table><tr><td><h3>Discription:</h3></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
  <input type="text" id="txtDis" name="txtDis"style="width: 500px; height: 100px;border-radius: 5px;font-size: 20px"  ></td></tr></table><br>
  <table><tr><td><h3>Original Price:</h3></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
  </td><td><i class="fa fa-rupee"></i></td><td><input type="number" id="txtOri" name="txtOri" style="width: 450px; height: 50px;border-radius: 5px;font-size: 20px"></td></tr></table><br>
  <table><tr><td><h3>Set Discount:</h3></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
  </td><td></td><td></td><td></td><td><input type="number" onblur="discount()" placeholder="In Percentage" id="txtDiscount" name="txtDiscount" style=" width: 450px; height: 50px;border-radius: 5px; font-size: 20px"></td></tr></table><br>
  <table><tr><td><h3>Price:</h3></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
  </td><td><i class="fa fa-rupee"></i></td><td><input type="text" id="txtPrice" name="txtPrice" style="width: 450px; height: 50px;border-radius: 5px;font-size: 20px"></td></tr></table><br><hr><br>

  <br><h2>Upload images</h2><hr><br>

<input type="file" name="img1" id="img1"/>
<br><br><hr><br>
  <input type="submit" id="btnSell" name="btnSell" text="SELL" Value="SELL" style="height: 40px;width: 100px;background-color: green;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size: 20px;border-radius: 5px;">
  <input type="reset" id="btnReset" name="btnReset" text="RESET" Value="RESET" style="height: 40px;width: 100px;background-color:grey;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size: 20px;border-radius: 5px;  margin-left: 30px">
  <input type="button" id="btn" namCancele="btnCancel" text="CANCEL" Value="CANCEL" style="height: 40px;width: 100px;background-color: red;font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size: 20px;border-radius: 5px;  margin-left: 30px"><hr><br><br>

</form>

</body>
</html>