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

<style>
    body, html {
    height: 100%;
    width: 100%;
    margin: 0;
    box-sizing: border-box;
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
      
      .class for-text{
     margin-right: 10px 0;
     padding-right:8px;
     max-height : 20px;
     line-height: 15pt;
     max-width:100%;
     font-size: 20pt;
     box-sizing: border-box;
     font-size: 25pt;
     outline: none;
     border-radius: 4px;
     font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
      }
      .main{
        margin-top: 10px;
     }
     .input[type=text]{
       width: 100px;
     }
     
     
     .panel
     {
     background-color:#663399;
     height:100px;
     }
     .main
     {align-items: center;
     background-image: url(register.jpg);
     width: 900px;
     height: 600px;}
      .myform{
     margin-left: 55px;
     margin-top: 1%;
     margin-right: 75%;
     margin-bottom: 10px;
     background-color: dimgray;
     width: 300px;
         
      }
       .class for-label{
     margin-right: 10px;
     padding-right: 100px;
      }
      .container{
        margin-left: 30px;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
      }

/*Social Media Icons*/
.fa{
  font-size: large;
}
.fa:hover {
  opacity: 0.7;
}
.page-container{
    margin-top: 0px;
   
    height: 100%; 
    width: 100%;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
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
    width: 16.66%;
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
  .department{
    position: absolute; 
    top: 150px;
    width: 48%; 
    height: 70%;
    padding: 20px;
  }
  .content {
    position: absolute; 
    top: 150px;
    width: 48%; 
    height: 70%;
    padding: 20px;
    right: 20px;
  }
  *, *:before, *:after {
    box-sizing: inherit;
  }
  
/* Create two unequal columns that floats next to each other */
.section-column {
    float: left;
    padding: 10px;
    height: 300px; /* Should be removed. Only for demonstration */
  }
  
  .left {
    width: 30%;
  }
  
  .right {
    width: 70%;
  }
  
  /* Clear floats after the columns */
  .section-row:after {
    content: "";
    display: table;
    clear: both;
  }

  .row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}
.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (and change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
.image
{
padding:10px;
width:200px;
height: 100px;
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
String query=null;
String year=null,price=null,contact=null;
String name=request.getParameter("value");
String sellname=request.getParameter("seller");
String dept=request.getParameter("branch");
//out.println(name);
//out.println(sellname);
//out.println(dept);
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root");

if(dept.equals("CE")){
	query="SELECT * FROM CE";
}
if(dept.equals("CO")){
	query="SELECT * FROM CO";
}
if(dept.equals("EE")){
	query="SELECT * FROM EE";
}
if(dept.equals("ET")){
	query="SELECT * FROM ET";
}
if(dept.equals("IS")){
	query="SELECT * FROM instru";
}
if(dept.equals("ME")){
	query="SELECT * FROM ME";
}
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);
while(rs.next()){
	if(rs.getString("title").equals(name)&&rs.getString("sellername").equals(sellname)){
		year=rs.getString("year");
		price=rs.getString("price");
		contact=rs.getString("contact");
	}
}
%>
<!--First Menu Bar-->
<div class="topnav" id="home">
    <a style="margin-left: 30%;">Icon</a>
    <a href="#profile"><i class="fa fa-user"></i></a>
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
  <a href="seller_final.html">Sell</a>
  <a href="exchange.jsp">Exchange</a>
  <a href="COebook.html">E-Book</a>
  </div>  
    
<div class="section-row">
    <div class="page-container">
    <form name="payment_process" method="post" action="insertpayment.jsp">
    	<div class="section-column left">
      	<div class="department">
        	<div class="container">
        
            <div class="row">
              <div class="col-50">
                <h3>Book Details</h3>
                <label for="bname"> Book Name</label>
                <input type="text" name="bname" id="bname" value="<%=name%>"/>
                <label for="prc"> Price</label>
                <input type="text" id="prc" name="prc" placeholder="Rs.500/-" value="<%=price%>"/>
                <h3>Seller Details</h3>
                <label for="sname"> Seller Name</label>
                <input type="text" id="sname" name="sname" placeholder="John Watson" value="<%=sellname%>"/>
                <label for="contact"> Seller Contact No.</label>
                <input type="text" id="contact" name="contact" placeholder="+91 7098234509" value="<%=contact%>"/>
    
                <div class="row">
                  <div class="col-50">
                    <label for="branch">Branch</label>
                    <input type="text" id="branch" name="branch" placeholder="CO" value="<%=dept%>"/>
                  </div>
                  <div class="col-50">
                    <label for="year">Year</label>
                    <input type="text" id="year" name="year" placeholder="FY"value="<%=year%>"/>
                  </div>
                </div>
              </div>
        	</div>
      </div>
      </div>
    </div>
    <div class="section-column right">
            <div class="content"> 
                <div class="container">    
                <div class="col-50">
                    <h3>Payment</h3>
                    <label for="fname">Select Payment Mode</label>
                    <label>
                        <input type="radio"  name="mode" value="Net Banking"> Net Banking
                    </label>
                    <a href="https://www.bankofindia.co.in"><img src="boi.jpg" class="image"></a>
                    <a href="https://www.onlinesbi.com"><img src="sbi.jpg" class="image"></a>
                    <a href="https://www.bankofmaharashtra.in"><img src="bom.jpg" class="image"></a>
                    <a href="https://www.axisbank.com"><img src="axis.jpg" class="image"></a>
                    <a href="https://www.icicibank.com"><img src="icici.jpg" class="image"></a>
                    <a href="https://www.hdfcbank.com"><img src="hdfc.jpg" class="image"></a>
                    <br>
                    <br><h5>To pay with Internet Banking click on your bank from the above bank.</h5>
                    <label>
                        <input type="radio" checked="checked" name="mode" value="Cash on Meeting"> Cash On Meeting
                    </label>
                    
                    <input type="submit" value="Continue to Buying Process"class="btn">
                </div>   
        </div> 
    </form>
    </div>
    </div>
  </div>

</body>
</html>