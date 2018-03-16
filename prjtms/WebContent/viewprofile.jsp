<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<html lang="en">
<head>
  <title>Bootstrap Example</title> 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="a/js/jquery-3.2.1.min.js"></script>
  <script src="a/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
 
    }
    .navbar-header {
     
   min-height: 100px; 
   } 
    
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color:;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: ;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }

* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 85%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: center;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}


</style>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--js-->



    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>User profile form requirement</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha256-3dkvEK0WLHRJ7/Csr0BZjAWxERc5WH7bdeUya2aXxdU= sha512-+L4yy6FRcDGbXJ9mPG8MT/3UCDzwR9gPeyFNMCtInsol++5m3bk2bXWKdZjvybmohrAsn3Ua5x8gfLnbE1YkOg==" crossorigin="anonymous">
    <!-- Bootstrap Core CSS -->
<!--     <link href="css/bootstrap.min.css" rel="stylesheet"> -->
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha256-7s5uDGW3AHqw6xtJmNNtr+OBRJUlgkNJEo78P4b0yRw= sha512-nNo+yCHEyn0smMxSswnf/OnX6/KwJuZTlNZBjauKhTK0c+zT+q5JOCx0UFhXQ6rJR9jg6Es8gPuD2uZcYDLqSw==" crossorigin="anonymous">

    <!-- Custom CSS -->
    <style>
    body {
        padding-top: 0px;
        /* Required padding for .navbar-fixed-top. Remove if using .navbar-static-top. Change if height of navigation changes. */
    }

    .othertop{margin-top:10px;}
    </style>

<!--sticky-->
	 <div class="header-top">
		 <!--container-->
		  <div class="container">
			 <div class="top-nav">
						<div class="logo">
						<a href="#"><img src="images/logo.png" id="section-1" class="img-responsive" alt=""/></a>
						</div>
						 
						 <div class="menu">
						 <ul id="nav">
						 <li><a href="custHome.jsp">Home</a></li>
						 <li><a href="aboutus.jsp">About</a></li>
						  <li> <a href="agentlogout.jsp">Logout</a></li>
						 </ul>
						  
						  </div>
			 </div>
			  <div class="clearfix"> </div>
			

		 </div>
		 <!--/container-->
	 </div>
<!--/sticky-->
  <br><br><br>  <br><br><br>
 <div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
     <p style="Colour:black"><h4><a href="viewprofile.jsp">View Profile</a></h4></p>
      -------------------------------
          <p style="Colour:black"><h4><a href="custBooking.html">SHOW Booking</a></h4></p>
      -------------------------------
  
    </div>
    <div class="col-sm-8 text-left"> 
      
       
   



   <div class="container">
<div class="row">
<div class="col-md-10 ">
<fieldset>


<%
HttpSession se = request.getSession();
%>




<head>
  <meta charset="UTF-8">
  <title>Registration</title>
  
  
  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

      <link rel="stylesheet" href="registercss/style.css">

  
</head>

<body>
<center>
    <div class="wrapper">
    <form action="updatePro.html" method="post" class="form-signin">       
      
      <h2 class="form-signin-heading">User Profile</h2><a>
      </a>
      <div>
      <h5 style="color:red">${msg}</h5>
      </div>
      <table>
      	<tr>
      		<td><input type="email" class="form-control" value="<%out.println(se.getAttribute("email"));%>" name="email" placeholder="Email Address" readonly="readonly" required="" autofocus="" /></td>
      		<td> <input type="password" class="form-control" name="passWord" placeholder="Password" required=""/> </td>
      	</tr>
      	<tr>   
      		<td> <input placeholder="First Name" class="form-control"value="<%out.println(se.getAttribute("fname"));%>" name="fname" type="text" required=""></td>
      		<td> <input placeholder="Last Name" class="form-control"value="<%out.println(se.getAttribute("lname"));%>" name="lname" type="text" required=""></td>
      	</tr>
      	<tr>	
      		<td><input placeholder="City" class="form-control"value="<%out.println(se.getAttribute("city"));%>" name="city" type="text" required=""></td>
      		<td><input placeholder="Pin Code" class="form-control"value="<%out.println(se.getAttribute("pcode"));%>" name="pcode" type="text" required=""></td>
      	</tr>
      	<tr>
      		<td><input placeholder="Address" class="form-control"value="<%out.println(se.getAttribute("addr"));%>" name="addr" type="text" required=""></td>
      		<td><input placeholder="Contact No." class="form-control"value="<%out.println(se.getAttribute("contact"));%>" name="mobile" type="text" required=""></td>
      	</tr>
      	<tr>
      		<td> <button class="btn btn-lg btn-primary btn-block" type="submit">Update Profile</button> </td>
      	</tr>
      </table> 
      <br>
     
    </form>
  </div>
  
  </center>

</body>

</html>
