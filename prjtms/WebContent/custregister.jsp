<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Registration</title>
  
  
  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

      <link rel="stylesheet" href="registercss/style.css">

  
</head>

<body>

    <div class="wrapper">
    <form action="register.html" method="post" class="form-signin">       
      
      <h2 class="form-signin-heading">Sign Up</h2><a>
      </a>
      <div>
      <h5 style="color:red">${msg}</h5>
      </div>
      <table>
      	<tr>
      		<td><input type="email" class="form-control" name="email" placeholder="Email Address" required="" autofocus="" /></td>
      		<td> <input type="password" class="form-control" name="passWord" placeholder="Password" required=""/> </td>
      	</tr>
      	<tr>   
      		<td> <input placeholder="First Name" class="form-control" name="fname" type="text" required=""></td>
      		<td> <input placeholder="Last Name" class="form-control" name="lname" type="text" required=""></td>
      	</tr>
      	<tr>	
      		<td><input placeholder="City" class="form-control" name="city" type="text" required=""></td>
      		<td><input placeholder="Pin Code" class="form-control" name="pcode" type="text" required=""></td>
      	</tr>
      	<tr>
      		<td><input placeholder="Address" class="form-control" name="addr" type="text" required=""></td>
      		<td><input placeholder="Contact No." class="form-control" name="mobile" type="text" required=""></td>
      	</tr>
      	<tr>
      		<td> <button class="btn btn-lg btn-primary btn-block" type="submit">Sing Up</button> </td>
      	</tr>
      </table> 
      <br>
      <h5>        already registered ?<a href="customerlogin.jsp"> Click Here </a></h5>
      <h5>        <a href="forgetpass.jsp"> Click here for forget Password </a></h5> 
       
    </form>
  </div>
  
  

</body>

</html>
