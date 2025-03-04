<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>
  <link rel="shortcut icon" href="https://drive.google.com/thumbnail?id=1FgxXQfCUS6_Jm0RZ8MqS8OU5mmTrh8Rr">
</head>
<style>
body{
    margin: 0%;
}
.background{
    height:100vh;
    background: #7b7b7b;
    background-repeat: no-repeat;
    padding-bottom: 100px;
    padding-top: 100px;
    padding-left: 360px;
    padding-right: 100px;
    
}
.button {
    display: inline-block;
    border-radius: 4px;
    background:black;
    border: none;
    color: #FFFFFF;
    text-align: center;
    font-size: 28px;
    padding: 10px;
    width: 150px;
    transition: all 0.5s;
    cursor: pointer;
    margin: 5px;
  }
  .button span {
    cursor: pointer;
    display: inline-block;
    position: relative;
    transition: 0.5s;
  }
  .button span:after {
    content: '\00bb';
    position: absolute;
    opacity: 0;
    top: 0;
    right: -20px;
    transition: 0.5s;
  }
  .button:hover span {
    padding-right: 25px;
  
  }
  .button:hover span:after {
    opacity: 1;
    right: 0;
    
  }
</style>
<body> 
<form action="http://localhost:8080/Login_form/index1.html" method="post">  
<% String phone = request.getParameter("phone"); %>
<!--Background-->
<div class="background">
<!--Container-->
<div style="width: 800px; height: 440px; border-radius: 10px; background-color: rgb(255, 255, 255, 1) ;">

<img src="https://cdn1.iconfinder.com/data/icons/warnings-and-dangers/400/Warning-01-512.png" alt="Not Registered" style="height: 150px; width:150px; position:relative; left: 300px; top:50px;">

<div style="position: relative; left:50px; top:100px;">
   
    <label style="font-family: 'Lucida Console', Times, serif; font-weight: bold; font-size: 30px; " >Wrong password.Login again or click </label><br>
    <label style="font-family: 'Lucida Console', Times, serif; font-weight: bold; font-size: 30px; " >Forgot password to reset it. </label>
    
</div>
<div style="position: relative; left:50px; top:145px; height: 20px; width:170px;">

    <a href="http://localhost:8080/Login_form/index3.html"><label style="font-family: 'Lucida Console', Times, serif; font-weight: bold; font-size: 18px; " >Forget Password</label></a>
  
</div>
<div style="position: relative; left:600px; top:100px; height: 65px; width:160px;">

    <button class="button" type="submit" style="vertical-align:middle"><span>Login </span></button>
  
</div>
</div>
</div>
</form>
</body>
</html>