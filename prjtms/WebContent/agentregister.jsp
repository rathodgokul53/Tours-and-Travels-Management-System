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
    <form action="agentregister.html" method="post" class="form-signin">       
      
      <h2 class="form-signin-heading">Sign Up</h2><a>
      </a>
      <div>
      <h5 style="color:red">${msg}</h5>
      </div>
      <table>
      	<tr>
      		<td><input type="email" class="form-control" name="email" placeholder="Email Address" required="" autofocus="" /></td>
      		<td> <input type="password" class="form-control" name="pass" placeholder="Password" required=""/> </td>
      	</tr>
      	<tr>   
      		<td> <input placeholder="First Name" class="form-control" name="name" type="text" required=""></td>
      		<td> <input placeholder="Last Name" class="form-control" name="mobile" type="text" required=""></td>
      	</tr>
      	<tr>
      		<td> <button class="btn btn-lg btn-primary btn-block" type="submit">Sing Up</button> </td>
      	</tr>
      </table> 
      <br>
      <h5>        already registered ?<a href="agentlogin.jsp"> Click Here </a></h5>
      <h5>        <a href="agentForget.jsp"> Click here for forget Password </a></h5> 
       
    </form>
  </div>
  
  

</body>

</html>
