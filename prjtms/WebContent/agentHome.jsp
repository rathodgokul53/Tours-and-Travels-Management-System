<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
      background-color: ;
      height: 120%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: aqua;
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

<!--/js-->
<!--animated-css-->
</head>
<body>

<!--header-->
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
						 <li><a href="agentHome.jsp">Home</a></li>
						 <li><a href="#section-2">About</a></li>
						  <li> <a href="agentlogout.jsp">Logout</a></li>
						 </ul>
						  
						  </div>
			 </div>
			  <div class="clearfix"> </div>
			

		 </div>
		 <!--/container-->
	 </div>
<!--/sticky-->





<%-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <p></p>
      <h1><a class="navbar-brand" href="#">Go Clean...</a></h1>
    </div>
    <p></p>
    
    
    
    <ul class="nav navbar-nav navbar-right">
    <li><a href="#">TOUR</a></li>
      <li><a href="new.jsp">Home</a></li>
      
      <%
      HttpSession ses=request.getSession();
      String name=(String)ses.getAttribute("vendorName");
      %>
      
     
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
<!--        <li><a href="login_user.jsp"><span class="glyphicon glyphicon-user"></span> User </a></li> -->
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>Welcome <%=name %></a></li>
      <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
      <li><a href="faq.jsp"><span class="glyphicon glyphicon-question-sign"></span> FAQ</a></li>
    </ul>
   
					
				 
			
  </div>
</nav> --%>
  <br><br><br><br><br><br>
 <div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
     <p style="Colour:blue"><h4><a href="agentProfile.jsp">View Profile</a></h4></p>
      -------------------------------<br>
      <p style="Colour:blue"><h4><a href="addpackage.jsp">ADDPackage</a></h4></p>
      -------------------------------<br>
      <p style="Colour:blue"><h4><a href="showpack.html">SHOW Package</a></h4></p>
      -------------------------------
     <p style="Colour:blue"><h3><a href="showticket.html" >SHOW Booking</a></h3></p>
      -------------------------------<br>
    </div>
    

</form>
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
<!--     </div> -->
<!--     <div class="col-sm-2 sidenav"> -->
<!--       <div class="well"> -->
<!--         <p>ADS</p> -->
<!--       </div> -->
<!--       <div class="well"> -->
<!--         <p>ADS</p> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </div> -->



</body>
</html>
    




<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<title>My-tour bootstrap Design website | Home :: w3layouts</title>
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--js--> 
<script src="js/jquery.min.js"></script>

<!--/js-->
<!--animated-css-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!--/animated-css-->
</head>
<body>
<!--header-->
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
							 <li><a href="agentHome.jsp">Home</a></li>
							 <li><a href="agentlogout.jsp">Logout</a></li>
							
							 
			
							 <div class="clearfix"></div>
						 </ul>
						 </div>
						 
						 <div class="menu">
						 <ul id="nav">
						  <li> <a href="login.jsp">Sign In</a></li>
						 </ul>
						  <ul id="nav">
						  <li> <a href="agentlogin.jsp">Agent Login</a></li>
						 </ul>
						  </div>
			 </div>
			  <div class="clearfix"> </div>
			

		 </div>
		 <!--/container-->
	 </div>
 
 
 
               	  <a href="#1">Add Package</a><br>
               	   <a href="#1">Show Package</a><br>
               	    <a href="#1">Update Package</a><br>
               	   <a href="agentlogout.jsp">LogOut</a>
               	     
               <div>
							 <form action="insertPack.html">
							  <table>
							  
							  	<tr> 
							  	   <td><input type="text" name="pname" placeholder="Package Name" required="required"></td>
			                    	<td><input type="text" name="duration" placeholder="Duration"></td>
			                    </tr>
			                    <tr>
			                    	<td><input type="date" name="dod" placeholder="Date of Departure" required="required"></td>
			                    	<td><input type="text" name="amt" placeholder="Packge Amount" required="required"></td>
			                    </tr>
			                    <tr>
							 	   	<td><input type="text" name="source" placeholder="Source" required="required"></td>
							 	   	<td><input type="text" name="dest" placeholder="Destination" required="required"></td>
							 	</tr>
							 	<tr>
							 		<td><input type="file" placeholder="Image" name="img" required="required"></td>
							 		<td><input type="submit" value="insert"></td>
							 	</tr>
						
							  </table> 
							 </form>
						 </div>
						 
						 
						 
		           <div>
		           
							 <form action="showPack.html">
							<input type="submit" value="show">
							  
							 </form>
						 </div>
		</div> 				  --%>