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
  <link rel="stylesheet" type="text/css" href="HomeStyle.css">
  <script src="scripting.js"></script>
<style>
body {
    margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    box-sizing: border-box;
}
/* The Modal (background) */
.reg-modal {
  display: none; 
  position: fixed; 
  z-index: 1; 
  padding-top: 100px; 
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%; 
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
}

/* Modal Content */
.reg-modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 30%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}

/* The Close Button */
.reg-close {
  color: white;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.reg-close:hover,
.reg-close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.reg-modal-header {
  padding: 2px 16px;
  background-color: #5cb85c;
  color: white;
}

.reg-modal-body {padding: 2px 16px;}
.reg-modal-body button{
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
.reg-modal-body button:hover{
  background-color: rgb(102, 202, 105); /* Green */
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
  color: white;	
}

.modal-row {
    display: -ms-flexbox; /* IE10 */
    display: flex;
    -ms-flex-wrap: wrap; /* IE10 */
    flex-wrap: wrap;
    padding: 0 4px;
  }
  .modal-column {
    -ms-flex: 50%; /* IE10 */
    flex: 50%;
    max-width: 50%;
    padding: 10px;
  }
  
  @media screen and (max-width: 650px) {
    .modal-column {
      width: 100%;
      display: block;
    }
  }
  .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}
  .price {
    color: rgb(185, 180, 180);
    font-size: 22px;
  }
  .fa-star{
    font-size: small;
  }
  .checked {
    color: orange;
  }
  .modal-column button {
    border: none;
    outline: 0;
    padding: 12px;
    color: white;
    background-color: rgb(74, 240, 24);
    text-align: center;
    cursor: pointer;
    width: 100%;
    font-size: 18px;
  }
  
  .modal-column button:hover {
    opacity: 0.7;
  }
  .modal-column img{
      width: 100%;
      height: fit-content;
  }
  .dept-row {
  display: flex;
}

/* Create two equal columns that sits next to each other */
.dept-column {
  flex: 25%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}
</style>
</head>
<body>
<body onload="showSlides()">
  <!--Floating Top Button-->
  <button onclick="topFunction()" id="floatBtn" title="Go to top">Top</button>
  <!--First Menu Bar-->
<div style="background-color:white;height: 2500px;">
  <!--Script to add the floating top button-->
  <script>
    var btn = document.getElementById("myBtn-reg");
    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("reg-close")[0];
    //Floating top button
    var mybutton = document.getElementById("floatBtn");
    window.onscroll = function() {scrollFunction()};
    function scrollFunction() {
      if (document.body.scrollTop > 0 || document.documentElement.scrollTop > 0) {
        mybutton.style.display = "block";
      } else {
        mybutton.style.display = "none";
      }
    }
    function topFunction() {
      document.body.scrollTop = 0;
      document.documentElement.scrollTop = 0;
    }
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      RegModal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == RegModal) {
        RegModal.style.display = "none";
      }
    }
    </script>
<div class="topnav" id="home">
    <a style="margin-left: 30%;">Icon</a>
    <input type="text" placeholder="Search..." name="search"/> 
    <button type="submit"><i class="fa fa-search"></i></button>
    <a href="login.jsp">Login</a>
    <a href="user_register.html">Register</a>
    <a href="#profile"><i class="fa fa-user"></i></a>
</div>
  <!--Second Menu Bar-->
<div class="navbar">
  <a href="#home" style="margin-left: 27%;">Home</a>
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
  <a href="COebook.html">E-Books</a>
  <a href="#about">About</a>
  <a href="#team">Team</a>
  <a href="#contact"><i class="fa fa-envelope" style="margin-right: 5px;"></i> Contact</a>
</div>
<!--SlideShow-->
<div class="slideshow-container">

  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="img8.jpg" style="width:100%">
    <div class="titles">
      <div class="quotes">
        <p>A Room without</p>
        <p>Books is like a Body</p>
        <p>without Soul</p>
        </div>
      <div class="text">
      <i class="fa fa-facebook-official"></i>
      <i class="fa fa-instagram"></i>
      <i class="fa fa-snapchat"></i>
      <i class="fa fa-pinterest-p"></i>
      <i class="fa fa-twitter"></i>
      <i class="fa fa-linkedin"></i>
      </div>
    </div>
  </div>
  
  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="img9.jpg" style="width:100%">
    <div class="titles">
      <div class="quotes">
      <p>A Room without</p>
      <p>Books is like a Body</p>
      <p>without Soul</p>
      </div>
      <div class="text">
      <i class="fa fa-facebook-official"></i>
      <i class="fa fa-instagram"></i>
      <i class="fa fa-snapchat"></i>
      <i class="fa fa-pinterest-p"></i>
      <i class="fa fa-twitter"></i>
      <i class="fa fa-linkedin"></i>
      </div>
    </div>
  </div>
  
  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="img10.jpg" style="width:100%">
    <div class="titles">
      <div class="quotes">
        <p>A Room without</p>
        <p>Books is like a Body</p>
        <p>without Soul</p>
        </div>
      <div class="text">
      <i class="fa fa-facebook-official"></i>
      <i class="fa fa-instagram"></i>
      <i class="fa fa-snapchat"></i>
      <i class="fa fa-pinterest-p"></i>
      <i class="fa fa-twitter"></i>
      <i class="fa fa-linkedin"></i>
      </div>
    </div>
  </div>
  
  </div>
  <br>
  
  <div style="text-align:center">
    <span class="dot"></span> 
    <span class="dot"></span> 
    <span class="dot"></span> 
  </div>
<br> 
<!--Departments-->
<div><p style="text-align: center;font-size:xx-large">CHOOSE BOOK BY YOUR DEPARTMENTS</p><br><p style="text-align: center">Select the books related to your departments</p></div>

<br>

<h2>Computer Engineering</h2>
<div style="text-align: right;"><a href="co.jsp">View more...</a></div>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.io.*" %>
<%@ page import ="java.io.File" %>
<%@ page import ="java.io.FileOutputStream" %>
    <%
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cpe","root","root");
    Statement st=con.createStatement();
    byte[] imgdata=null;
    int count=1;
    //OutputStream o=response.getOutputStream();
    ResultSet rs=st.executeQuery("select * from co");	
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
                      <p><a href="payment.jsp?value=<%= rs.getString("title")%>&price=<%= rs.getString("price")%>"><button>Buy Now</button></a></p>
             </div>
         </div>
    	<%
    	if(count==3){
    		break;
    	}
    	count++;
    }
    	//con.close();
    %>
        
    </div>
<br><br><br><br><br><br>
<h2>Mechanical Engineering</h2>
<div style="text-align: right;"><a href="me.jsp">View more...</a></div>
<%
    count=0;
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from me");	
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
                      <p><a href="payment.jsp?value=<%= rs.getString("title")%>&price=<%= rs.getString("price")%>"><button>Buy Now</button></a></p>
             </div>
         </div>
    	<%
    	if(count==3){
    		break;
    	}
    	count++;
    }
    	//con.close();
    %>
    </div>
    <br><br><br><br><br><br>
<h2>Electrical Engineering</h2>
<div style="text-align: right;"><a href="ee.jsp">View more...</a></div>
<%
    count=0;
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from ee");	
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
                      <p><a href="payment.jsp?value=<%= rs.getString("title")%>&price=<%= rs.getString("price")%>"><button>Buy Now</button></a></p>
             </div>
         </div>
    	<%
    	if(count==3){
    		break;
    	}
    	count++;
    }
    	//con.close();
    %>
    </div>
    <br><br><br><br><br><br>
<h2>Civil Engineering</h2>
<div style="text-align: right;"><a href="ce.jsp">View more...</a></div>
<%
    count=0;
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from ce");	
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
                      <p><a href="payment.jsp?value=<%= rs.getString("title")%>&price=<%= rs.getString("price")%>"><button>Buy Now</button></a></p>
             </div>
         </div>
    	<%
    	if(count==3){
    		break;
    	}
    	count++;
    }
    	//con.close();
    %>
    </div>
    <br><br><br><br><br><br>
<h2>ENTC Engineering</h2>
<div style="text-align: right;"><a href="entc.jsp">View more...</a></div>
<%
    count=0;
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from et");	
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
                      <p><a href="payment.jsp?value=<%= rs.getString("title")%>&price=<%= rs.getString("price")%>"><button>Buy Now</button></a></p>
             </div>
         </div>
    	<%
    	if(count==3){
    		break;
    	}
    	count++;
    }
    	//con.close();
    %>
    </div>
    <br><br><br><br><br><br>
<h2>Instrumentation Engineering</h2>
<div style="text-align: right;"><a href="is.jsp">View more...</a></div>
<%
    count=0;
    //OutputStream o=response.getOutputStream();
    rs=st.executeQuery("select * from instru");	
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
                      <p><a href="payment.jsp?value=<%= rs.getString("title")%>&price=<%= rs.getString("price")%>"><button>Buy Now</button></a></p>
             </div>
         </div>
    	<%
    	if(count==3){
    		break;
    	}
    	count++;
    }
    	//con.close();
    %>
    </div>
<br><br><br><br><br><br><br>
<!--About Section-->
<div class="About-container" style="padding:110px 8px" id="about">
  <h3 style="text-align: center;font-size: xx-large;color: whitesmoke;">ABOUT</h3>
  <p style="text-align: center;font-size: x-large;color: whitesmoke;">Key features of the Website</p>
  <div class="grid-container" style="margin-top:64px">
    <div class="grid-item">
      <img src="sell.jpg" style="border-radius: 50%;size: 50px;">
      <p class="subtitle">Sell</p>
      <p>The buyer of your old books can be a person from your neighbourhood, workplace, school, college,hostel or even playground...Show your books collection in our used bookstore to the whole world.</p>
    </div>
    <div class="grid-item">
      <img src="buy.jpg" style="size: 50px;border-radius: 50%;">
      <p class="subtitle">Buy</p>
      <p>The books selled by the seller can be purchase by buyer in half price or in affordable price with better quality books to read and use...So you can buy the books on your choice with quality and in minimum cost.</p>
    </div>
    <div class="grid-item">
      <img src="exchange.jpg" style="size: 50px;border-radius: 50%;">
      <p class="subtitle">Exchange</p>
      <p>The books are also exchanged between two users if both are ready for this deal. This website will provide you the platform to find out such users and give their information with their own permissions to exchnage the books.</p>
    </div>
  </div>
</div>
<br><br><br><br><br><br>
<br id="team"><br>
<!--Team Members-->
<div>
  <center><h1>THE TEAM</h1></center>
  <center><p>The one who develop this Website.</p></center>
  <br>
  
  <div class="team-row">
    <div class="team-column">
      <div class="card">
        <img src="img2.jpg" alt="Shruti">
        <div class="container">
          <h2>Shruti Gatkal</h2>
          <p class="title">Designer & Developer</p>
          <p><i class="fa fa-phone " style="padding-right: 8px;"></i>+91 9146998572</p>
          <p>shrutigatkal2000@gmail.com</p>
          <p><button class="button"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
  
    <div class="team-column">
      <div class="card">
        <img src="swaleha.jpg" alt="Swaleha">
        <div class="container">
          <h2>Swaleha Shaikh</h2>
          <p class="title">Designer & Developer</p>
          <p><i class="fa fa-phone " style="padding-right: 8px;"></i>+91 9067574526</p>
          <p>swalehashaikh722@gmail.com</p>
          <p><button class="button"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="team-column">
      <div class="card">
        <img src="anushka2.jpg" alt="Anushka">
        <div class="container">
          <h2>Anushka Nande</h2>
          <p class="title">Designer & Developer</p>
          <p><i class="fa fa-phone " style="padding-right: 8px;"></i>+91 9075895734</p>
          <p>anushkanande123@gmail.com</p>
          <p><button class="button"> <i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
    <div class="team-column">
      <div class="card">
        <img src="img2.jpg" alt="Snehal">
        <div class="container">
          <h2>Snehal Tele</h2>
          <p class="title">Designer & Developer</p>
          <p><i class="fa fa-phone " style="padding-right: 8px;"></i>+91 8390375684</p>
          <p>snehaltele2000@gmail.com</p>
          <p><button class="button"><i class="fa fa-envelope"></i> Contact</button></p>
        </div>
      </div>
    </div>
  </div>
  </div>
  <br>
  <br><br><br><br><br><br>
  <!--Contact Section-->
<div class="Contact-container" style="padding:128px 16px;margin-top: 550px;" id="contact">
  <h3 align="center" style="font-size:xx-large;color: whitesmoke;">CONTACT</h3>
  <p align="center">Lets get in touch. Send us a message:</p>
  <div style="margin-top:48px">
    <p style="padding-left: 20px;"><i class="fa fa-map-marker" style="padding-right: 8px;"></i> Karad, Maharashtra</p>
    <p style="padding-left: 20px;"><i class="fa fa-phone " style="padding-right: 8px;"></i>  Phone: +00 151515</p>
    <p style="padding-left: 20px;"><i class="fa fa-envelope " style="padding-right: 8px;"> </i> Email: gpkarad@gmail.com</p>
    <br>
    <div class="contact-row">
      <div class="contact-column">
        <img src="location.png" style="width:500px;border-radius: 10%;">
      </div>
      <div class="conatct-column">
        <form class="contact_form" action="/action_page.php" target="_blank">
          <p><input type="text" placeholder="Name" required name="Name"></p>
          <p><input type="text" placeholder="Email" required name="Email"></p>
          <p><input type="text" placeholder="Subject" required name="Subject"></p>
          <p><input type="text" placeholder="Message" required name="Message"></p>
          <p>
            <button class="sendMsg" type="submit">
              <i class="fa fa-paper-plane"></i> SEND MESSAGE
            </button>
          </p>
        </form>
      </div>
    </div>
  </div> 
</div>
<!--Popup Registration-->
<div id="reg-myModal" class="reg-modal">

  <!-- Modal content -->
  <div class="reg-modal-content">
    <div class="reg-modal-header">
      <span class="reg-close">&times;</span>
      <h2>Login As</h2>
    </div>
    <div class="reg-modal-body">
    <br><br>
      <a href="seller_final.html"><button>Seller</button></a>
      <a><button>Buyer</button></a>
    <br><br>
    </div>
  </div>

</div>
<!--Footer-->
<div class="footer">
  <br><br>
  <a href="#home" class="top-button" style="text-decoration: none;"><i class="fa fa-arrow-up"></i> To the top</a>
  <br><br><br>
  <div style="font-size:x-large;">
      <i class="fa fa-facebook-official"></i>
      <i class="fa fa-instagram"></i>
      <i class="fa fa-snapchat"></i>
      <i class="fa fa-pinterest-p"></i>
      <i class="fa fa-twitter"></i>
      <i class="fa fa-linkedin"></i>
    </div>
</div>
</div>
</body>
</html>