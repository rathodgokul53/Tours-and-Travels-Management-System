<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>

      <link rel="stylesheet" href="logincss/style.css">

  
</head>

<body>

    <div class="wrapper">
    <form action="login.html" method="post" class="form-signin">       
      
      <h2 class="form-signin-heading">Sign In</h2><a>
      </a>
      <div>
      <h5 style="color:red">${msg}</h5>
      </div>
      <input type="email" class="form-control" name="email" placeholder="Email Address" required="" autofocus="" />
      <input type="password" class="form-control" name="passWord" placeholder="Password" required=""/>      
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>  
      <br>
      <h5>        Not Registered ?<a href="custregister.jsp"> Click Here </a></h5>
      <h5>        <a href="forgetpass.jsp"> Click here for forget Password </a></h5> 
       
    </form>
  </div>
  
  

</body>

</html>
