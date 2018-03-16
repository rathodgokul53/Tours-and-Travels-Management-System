<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Page</title>

<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Stylish Creative Forms Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link href="login/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="login/css/font-awesome.css" rel="stylesheet"> <!-- Font-Awesome-Icons-CSS -->
<!-- css files -->

<!-- Online-fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<!-- //Online-fonts -->
</head>
<body>
<!-- main -->
<div class="main">
		<canvas id="myCanvas"></canvas>
		<div class="main-w3l">
			<h1 class="logo-w3">Welcome </h1>
			<div class="w3layouts-main">
				<h2>Login Now</h2>
					<form action="login.html" method="post">
						<input placeholder="Email-Id" name="email" type="text" required="">
						<span class="icons i1"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
						<input placeholder="PASSWORD" name="passWord" type="password" required="">
						<span class="icons i2"><i class="fa fa-key" aria-hidden="true"></i></span>
						<input type="submit" value="Login" name="login">
					</form><br>
				<h3 style="color:red">${msg}</h3>
				
							<br>
					<h6><a href="forgetpass.jsp">Forgot Password?</a></h6>
			</div>
			<div class="w3layouts-main2">
				<h3>Register Now</h3><br>
										<h3 style="color:red">${key}</h3><br>
				
					<form action="register.html" method="get">
						
						<input placeholder="E-mail" name="email" type="email" required="">
						<span class="icons i5"><i class="fa fa-key" aria-hidden="true"></i></span>
						
						<input placeholder="PASSWORD" name="passWord" type="password" required="">
						<span class="icons i5"><i class="fa fa-key" aria-hidden="true"></i></span>
						
						
						<input placeholder="First Name" name="fname" type="text" required="">
						<span class="icons i5"><i class="fa fa-key" aria-hidden="true"></i></span>
						
						<input placeholder="Last Name" name="lname" type="text" required="">
						<span class="icons i5"><i class="fa fa-key" aria-hidden="true"></i></span>
						
						
						<input placeholder="City" name="city" type="text" required="">
						<span class="icons i4"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
						
						<input placeholder="Pin Code" name="pcode" type="text" required="">
						<span class="icons i4"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
						
						<input placeholder="Address" name="addr" type="text" required="">
						<span class="icons i5"><i class="fa fa-key" aria-hidden="true"></i></span>
						
						<input placeholder="Contact No." name="mobile" type="text" required="">
						<span class="icons i5"><i class="fa fa-key" aria-hidden="true"></i></span>
						
							<input type="submit" value="Register" name="register"><br>
							
					</form>
						<h3 style="color:red">${key}</h3>
			</div>
			<div class="clear"></div>
			<!-- //main -->
			
			<!--footer-->
			<div class="footer-w3l">
				<p>&copy; 2017 Stylish Creative Forms. All rights reserved | Design by <a href="http://w3layouts.com">Gokul Rathod</a></p>
			</div>
			<!--//footer-->
		</div>
</div>


<!--scripts--> 

		<!-- js -->
			<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<!-- //js -->
		<!-- particles-JavaScript -->
			<script src="js/particles.min.js"></script>
				<script>
				  window.onload = function() {
					Particles.init({
					  selector: '#myCanvas',
					  color: '#eba7a7',
					  connectParticles: true,
					  minDistance: 90
					});
				  };
				</script>
	
		<!-- //particles-JavaScript -->
<!--//scripts--> 


</body>
</html>

    