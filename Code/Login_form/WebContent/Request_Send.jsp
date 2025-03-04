<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Update Successfully</title>
  <link rel="shortcut icon" href="https://drive.google.com/thumbnail?id=1FgxXQfCUS6_Jm0RZ8MqS8OU5mmTrh8Rr">
</head>
<style>
  
#background{
    height:100vh;
    background:#7b7b7b;
    background-repeat: no-repeat;
    padding-bottom: 100px;
    padding-top: 100px;
    padding-left: 420px;
    padding-right: 100px;
    
}
body{
    margin: 0%;
}

.div0{
    width: 700px;
    height: 700px;  
    border-radius: 10px;
    background-color: rgb(255, 255, 255, 1) ;

}
.div1{
  height:85px;
  width:595px;
  position: relative;
  left: 50px;
  top:90px;
}
.div2{
  height:85px;
  width:595px;
  position: relative;
  left: 50px;
  top:130px;
}
.div3{
  height:85px;
  width:595px;
  position: relative;
  left: 50px;
  top:170px;
}
.div4{
  height:85px;
  width:595px;
  position: relative;
  left: 50px;
  top:210px;
}
.div5{
  position:relative;
  left:500px;
  top:220px;
  height: 65px;
  width:160px;
}
.div6{
  position:relative;
  left:480px;
  top:270px;
  height: 65px;
  width:160px;
}
.column {
  float:left;
  width: 50%;
  height: 84px; 
}
.label1{
    position: relative;
    left:50px;
    top:50px;
    font-family: "Lucida Console", Times, serif;
    font-weight: bold;
    font-size: 30px;
}

.label2{
    font-family: "Lucida Console", Times, serif;
    font-weight: bold;
    font-size: 25px;
}
.textpane{
    background-color: #F9f6f9;
    height:30px;
    width:230px;
    border-style: inset;
    border-radius: 5px;
}
.textarea{
    background-color: #F9f6f9;
    height:80px;
    width:577px;
    border-style:inset;
    border-width:3px;
    border-radius: 5px;
}
.container {
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }
  .container input {
    position: relative;
    opacity: 0;
    cursor: pointer;
  }
  .checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
  }
  .container:hover input ~ .checkmark {
    background-color: #ccc;
  }
  .container input:checked ~ .checkmark {
    background-color: #2196F3;
  }
  .checkmark:after {
    content: "";
    position: absolute;
    display: none;
  }
  .container input:checked ~ .checkmark:after {
    display: block;
  }
  .container .checkmark:after {
       top: 9px;
      left: 9px;
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: white;
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
<%String phone=request.getParameter("phone"); %>
<!--Background-->
<div id="background">
<!--Container-->
<div style="width: 750px; height: 475px; border-radius: 10px; background-color: rgb(255, 255, 255, 1) ;">

<img src="https://cdn1.iconfinder.com/data/icons/formicons-premium/48/circle-tick-512.png" alt="Register Done" style="height: 150px; width:150px; position:relative; left: 300px; top:50px;">

<div style="position: relative; left:75px; top:80px; width:650px; font-size: 30px; text-align: left; font-family: Lucida Console, Times, serif;">
<label style="font-weight: bold;">Request send Successfully!</label>Plumber is Arriving as Early as Possible.
<img style="position:absolute; top:64px; left:230px; background-color: transparent; background-color: white; height:35px; width:35px; border-radius: 50%; border-style:solid; border-color: black; cursor: pointer;" src="https://image.flaticon.com/icons/png/512/3541/3541852.png">
<br>Check Status   
<label style="margin-left:50px;">at Home.</label>
</div>
<div style="position: relative; left:530px; top:120px;   height: 65px; width:160px;">

<a href="http://localhost:8080/Login_form/homepage.jsp?phone=<%= phone %>&user_type=Consumer">
    <button class="button" type="submit" ><span>Check it</span></button>
</a>
  
</div>

</div>
</div>
</body>
</html>