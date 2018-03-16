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
<body>
 

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
  <br><br><br>  <br><br><br>
 <div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
     <p style="Colour:black"><h4><a href="agentProfile.jsp">View Profile</a></h4></p>
      -------------------------------
      <p style="Colour:black"><h4><a href="addpackage.jsp">ADD Package</a></h4></p>
      -------------------------------
      <p style="Colour:black"><h3><a href="showpack.html" >SHOW Package</a></h3></p>
      -------------------------------
      <p style="Colour:black"><h4><a href="showticket.html">SHOW Booking</a></h4></p>
      -------------------------------
     
       </div>
    <div class="col-sm-8 text-left"> 
      <h2>ADD Package</h2>

    <h3 style="color:red">${success}</h3>

<form action="insertPack.html">
<table id="myTable">

	<tr>
		<td><input type="text" placeholder="Package Name" name="pname" required="required"></td>
		<td><input type="text" placeholder="Source" name="source" required="required"></td>
	</tr>
	<tr>
		<td><input type="text" placeholder="Destination" name="dest" required="required"></td>
		<td><input type="number" placeholder="Duration" name="duration" required="required"></td>
	</tr>
	<tr>
		<td><input type="date" placeholder="Date of Departure" name="dod" required="required"></td>
		<td><input type="number" placeholder="Amount" name="amt" required="required"></td>
	</tr>
	<tr>
		<td><input type="file" placeholder="Image" name="img" required="required"></td>
		<td><input type="submit" class="btn btn-info" value="Insert" required="required"></td>
	</tr>
</table>
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
    
