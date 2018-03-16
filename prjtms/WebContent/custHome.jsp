<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Journey</title>
<meta charset="utf-8">
<link rel="stylesheet" href="custHome/css/style.css">

<script src="custHome/js/jquery.js"></script>
<script src="custHome/js/jquery-migrate-1.1.1.js"></script>

<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'random',
        pagination: false, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    });
    $("#tabs").tabs();
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->


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


</head>
<body class="">
<!--/js-->
<!--animated-css-->

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
						 <li><a href="custHome.jsp">Home</a></li>
						 <li><a href="bookingcancel.jsp">Tours</a></li>
						  <li> <a href="agentlogout.jsp">Logout</a></li>
						 </ul>
						  
						  </div>
			 </div>
			  <div class="clearfix"> </div>
			

		 </div>
		 <!--/container-->
	 </div>
<br><br>
<br><br>
<br><br>
     
          
     
          
  <%
  
String s=session.getAttribute("size").toString();
	int i=Integer.parseInt(s);
	for(int j=1;j<i;j++)
	{
%>
          <div class="clear"></div>
          <div class="tab_cont" id="tabs-1"><img alt="img not found" src="packageimg/<%out.println(session.getAttribute("image"+j));%>" height="200" width="300">
            <div class="extra_wrapper">
            
              <h1 style="color:orange"><%out.println(session.getAttribute("pname"+j));%></h1>
              <p class="style1"> <strong>Pickup Location :</strong><h3><%out.println(session.getAttribute("source"+j));%></h3> 
							<strong>Destination :</strong><h3><%out.println(session.getAttribute("dest"+j));%></h3>
   		                        <strong>Date of Departure : </strong><%out.println(session.getAttribute("dod"+j));%><br>
   								<strong>Total Days : </strong><%out.println(session.getAttribute("duration"+j));%> <br>
    						<strong> Amount :</strong><%out.println(session.getAttribute("amt"+j));%></p>
              
              <a href="booking.jsp?name='<%out.println(session.getAttribute("book"+j));%>'&siz=<%=j%>" class="btn" >Book Ticket</a>
             
          </div>
    
      </div>
      
       <%
       }
	    %>
     
      
      </div>
          <div class="clear"></div>
    </div>

      
   <div>   
  
  <div class="bottom_block">
    
</div>
<footer>
  <div class="container_12">
    <div class="grid_12">
      <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
      <div class="copy"> Journey &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a> </div>
    </div>
    <div class="clear"></div>
  </div>
</footer>
</div>
</body>
</html>