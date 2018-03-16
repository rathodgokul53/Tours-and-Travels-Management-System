<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Book Ticket</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Classy Hotel Booking Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- js -->
<script src="booking/js/jquery-2.1.3.min.js" type="text/javascript"></script>
<!-- //js -->
<link href="booking/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Poppins:400,300,500,600,700' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="main">
		<h1 class="w3layouts_head">Classy Travel Booking Widget</h1>
		<div class="w3layouts_main_grid">
			<form action="billing.jsp" method="post" class="w3_form_post">
				<div class="w3_agileits_main_grid w3l_main_grid">
					<div class="agileits_grid">
					
<%
HttpSession se = request.getSession();
%>
					<h5>Name * </h5>
						<div class="nam">
							<input type="text"  value="<%out.println(se.getAttribute("fname"));%>" readonly="readonly">
						</div>
						<div class="nam1">
							<input type="text" value="<%out.println(se.getAttribute("lname"));%>" readonly="readonly">
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="w3_agileits_main_grid w3l_main_grid">
					<div class="agileits_grid">
						<h5>E-mail </h5>
							<input type="email" value="<%out.println(se.getAttribute("email"));%>" readonly="readonly">
					</div>
				</div>
				<div class="agileits_main_grid w3_agileits_main_grid">
					
					<div class="agileits_main_grid w3_agileits_main_grid">
					<div class="wthree_grid">
						<h5>Contact no.</h5>
					<input type="text" value="<%out.println(se.getAttribute("contact"));%>" readonly="readonly">
					</div>
				
				
				
				<div class="agileinfo_main_grid">
					<div class="agileits_w3layouts_grid">
						<h5>Number of People *</h5>
					<input type="number" name="nop" min=0 required="required">
					</div>
				</div>
				</div>
				<div class="w3_agileits_main_grid w3l_main_grid">
				<div class="agileits_grid">
				
	  <%
HttpSession sess = request.getSession();
	
   String str =request.getParameter("name");
   String k =request.getParameter("siz");
sess.setAttribute("size2", k);
   
				if(str !=null)
				{
					
%>		<div class="wthree_grid">
						<h5>Amount</h5>
						
						
					<input type="text" value="<%out.println(se.getAttribute("amt"+k));%>" readonly="readonly">
					</div>
					
		<h5>Source        &         Destinaton       </h5>
						<div class="nam">
							<input type="text" value="<%out.println(sess.getAttribute("source"+k));%>" readonly="readonly" >
						</div>
	
						<div class="nam1">
							<input type="text" value="<%out.println(sess.getAttribute("dest"+k));%>" readonly="readonly">
						</div>
						<% 
						}
						%>
	
	
						<div class="clear"></div>
					</div>
				</div>
				<div class="w3_main_grid">
					
					<div class="w3_main_grid_right">
						<input type="submit" value="Book Now">
					</div>
					<div class="clear"> </div>
				</div>
			</form>
		</div>
		<!-- Calendar -->
			<link rel="stylesheet" href="booking/css/jquery-ui.css" />
			<script src="booking/js/jquery-ui.js"></script>
			  <script>
					  $(function() {
						$( "#datepicker,#datepicker1" ).datepicker();
					  });
			  </script>
		<!-- //Calendar -->
		<div class="agileits_copyright">
		</div>
	</div>
</body>
</html>