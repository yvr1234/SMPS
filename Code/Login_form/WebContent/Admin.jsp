<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Admin</title>
  <link rel="shortcut icon" href="https://drive.google.com/thumbnail?id=1FgxXQfCUS6_Jm0RZ8MqS8OU5mmTrh8Rr">
</head>
<style>
  
#background{
    height:100vh;
    background:#7b7b7b;
    background-repeat: no-repeat;
    padding-bottom: 40px;
    padding-top: 55px;
    padding-left: 200px;
    padding-right: 200px;
}
body{
    margin: 0%;
    overflow-x: hidden;
    overflow-y: hidden;
    
}
.container{
  position:relative;
  top:60px;
  height:560px;
  width:800px;
  border-bottom-left-radius: 15px;
  background-color: white;
  overflow-y: auto;
  overflow-x: hidden;
}
.Head{
  position: absolute;
  width:1100px;
  height:60px;
  background-color:whitesmoke;
  border-radius: 10px;
}
.sub{
  position:absolute;
  left:380px;
}
.div1{
  position: absolute;
  top:120px;
  width:800px;
  height:60px;
  background-color: black;
  border-radius: 10px;
}
.div2{
  position: absolute;
  top:200px;
  width:395px;
  height:60px;
  background-color: black;
  border-radius: 10px;
}
.div3{
  position: absolute;
  top:200px;
  left:400px;
  width:395px;
  height:60px;
  background-color: black;
  border-radius: 10px;
}
.div4{
  position: absolute;
  top:280px;
  width:800px;
  height:60px;
  background-color: black;
  border-radius: 10px;
}
.div5{
  position: absolute;
  top:360px;
  width:800px;
  height:60px;
  background-color: black;
  border-radius: 10px;
}
  button span {
    cursor: pointer;
    display: inline-block;
    position: relative;
    transition: 0.5s;
  }
  button span:after {
    content: '\00bb';
    position: absolute;
    opacity: 0;
    top: 0;
    right: -20px;
    transition: 0.5s;
  }
  button:hover span {
    padding-right: 25px;
  
  }
  button:hover span:after {
    opacity: 1;
    right: 0; 
  }

</style>
<body> 
<!--Background-->
<div id="background">
<!--Container-->
<div class="Head"><h2 style="color:black; text-align:center; position: relative; bottom: 5px;">Administrator</h2></div>
<div class="sub">
<a href="http://localhost:8080/Login_form/SPMS_Users.jsp"><button class="div1"><h2 style="color:white; text-align:center; position: relative; bottom: 2px;"><span>SPMS Users Report</span></h2></button></a>
<a href="http://localhost:8080/Login_form/SPMS_Consumers.jsp"><button class="div2"><h2 style="color:white; text-align:center; position: relative; bottom: 2px;"><span>SPMS Customer Report</span></h2></button></a>
<a href="http://localhost:8080/Login_form/SPMS_Providers.jsp"><button class="div3"><h2 style="color:white; text-align:center; position: relative; bottom: 2px;"><span>SPMS Provider Report</span></h2></button></a>
<a href="http://localhost:8080/Login_form/SPMS_services.jsp"><button class="div4"><h2 style="color:white; text-align:center; position: relative; bottom: 2px;"><span>Services Report</span></h2></button></a>
<a href=""><button class="div5"><h2 style="color:white; text-align:center; position: relative; bottom: 2px;"><span>Earning Report</span></h2></button></a>
</div>
</div>
</div>
</body>
</html>