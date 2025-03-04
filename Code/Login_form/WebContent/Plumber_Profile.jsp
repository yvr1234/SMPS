<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Plumber's Profile</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="shortcut icon" href="https://drive.google.com/thumbnail?id=1FgxXQfCUS6_Jm0RZ8MqS8OU5mmTrh8Rr">
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
#background{
    height:100vh;
    background: #7b7b7b;
    background-repeat: no-repeat;
    padding-bottom: 280px;
    padding-top: 80px;
    padding-left: 80px;
    padding-right: 100px;
    
}
body{
    margin: 0%;
    background: #7b7b7b;
}

.div0{
    position: relative;
    bottom:20px;
    width: 920px;
    height: 460px;  
    border-radius: 10px;
    background-color: rgb(255, 255, 255, 1) ;
}
.div0_1{
  position: relative;
  left:960px;
  bottom:480px;
  width: 390px;
  height: 220px;  
  border-radius: 10px;
  background-color: rgb(255, 255, 255, 1) ;
  margin-bottom: 20px;
}
.div0_2{
  position: relative;
  left:960px;
  bottom:485px;
  width: 390px;
  height: 220px;  
  border-radius: 10px;
  background-color: rgb(255, 255, 255, 1) ;
}
.div0_3{
  position:relative;
  bottom:450px;
  width: 920px;
  height: 460px;  
  border-radius: 10px;
  background-color: rgb(255, 255, 255, 1) ;
}
.div0_4{
  position:relative;
  left:960px;
  bottom:910px;
  width: 390px;
  height: 460px;  
  border-radius: 10px;
  background-color: rgb(255, 255, 255, 1) ;
}
.div1{
    border-style:groove;
    border-radius: 10px;
    border-color: #2196F3;
    position:relative;
    left:60px;
    top: 63px;
    height:140px;
    width:140px;
    border-style: dashed;
}
.div2{
  position:relative;
  left:250px;
  bottom:80px;
  height:300px;
  width:600px;
}
.div00{
  position: relative;
  left:600px;
  bottom:526px;
  width: 465px;
  height: 765px;  
  border-radius: 10px;
  background-color: rgb(255, 255, 255, 1) ;
}
.div000{
  height:auto;
  width:150px;
}
.div0000{
  height:auto;
  width:400px;
  margin-bottom:20px;
}
.div01{
  position: relative;
  left:50px;
  top:50px;
  height:30px;
  width:360px;
}
.div02{
  position: relative;
  margin-top: 15px;
  left:450px;
  top:3px;
  height:50px;
  width:360px;
}
.div03{
  position: relative;
  margin-top: 15px;
  left:50px;
  top:42px;
  height:50px;
  width:360px;
}
.div04{
  position: relative;
  margin-top: 15px;
  left:450px;
  bottom:28px;
  height:70px;
  width:360px;
}
.div05{
  position: relative;
  margin-top: 15px;
  left:50px;
  bottom:6px;
  height:70px;
  width:360px;
}
.div06{
  position: relative;
  margin-top: 15px;
  left:450px;
  bottom:90px;
  height:50px;
  width:360px;
}
.div07{
  position: relative;
  margin-top: 15px;
  left:50px;
  top:90px;
  height:70px;
  width:360px;
}
.div08{
  position: relative;
  margin-top: 15px;
  left:50px;
  top:90px;
  height:40px;
  width:360px;
}
.div09{
  position:relative;
  left:255px;
  top:100px;
  height: 65px;
  width:160px;
}
.feedback{
  position:relative;
  left:40px;
  top:40px;
  height:350px;
  width:310px;
  border-style:inset;
  overflow-y: scroll;
  overflow-x: hidden;
}
.feedback1{
  min-height:70px;
  max-height: fit-content;
  width:275px;
  border-radius: 5px;
  background-color: #7b7b7b;
  padding:2px;
  margin:4px;
}

.label1{
    position: relative;
    left:55px;
    top:40px;
    font-family: "Lucida Console", Times, serif;
    font-weight: bold;
    color:#7b7b7b;
    font-size: 30px;
}
.label2{
  position: relative;
  left:40px;
  top:22px;
  font-family: "Lucida Console", Times, serif;
  font-weight: bold;
  color:#7b7b7b;
  font-size: 30px;
}
.label3{
  position: relative;
  left:30px;
  top:32px;
  font-family: "Lucida Console", Times, serif;
  font-weight: bold;
  color:#7b7b7b;
  font-size: 30px;
}
.label4{
  position: relative;
  left:20px;
  top:20px;
  font-family: "Lucida Console", Times, serif;
  font-weight: bold;
  color:black;
  font-size: 30px;
}
.textpane{
    position:relative;
    left:40px;
    top:12px;
    background-color: #F9f6f9;
    height:30px;
    width:230px;
    border-style: inset;
    border-radius: 5px;
}
.textpane1{
  position: relative;
  left:175px;
  bottom:25px;
  background-color: #F9f6f9;
  height:20px;
  width:180px;
  border-radius: 5px;
  font-size:20px;
  text-align: left;
}
.textarea{
    background-color: #F9f6f9;
    position:relative;
    left:40px;
    top:40px;
    height:105px;
    width:300px;
    border-style:inset;
    border-width:3px;
    border-radius: 5px;
    resize: none;
    font-size: 20px;
    padding-left:4px;
}
.textarea_2{
  background-color: #F9f6f9;
  position:relative;
  left:40px;
  top:40px;
  height:80px;
  width:300px;
  border-style:inset;
  border-width:3px;
  border-radius: 5px;
  resize: none;
}
.button {
    position:relative;
    left:130px;
    top:20px;
    border-radius: 4px;
    background:black;
    border: none;
    color: #FFFFFF;
    text-align: center;
    font-size: 28px;
    padding: 10px;
    width: 220px;
    transition: all 0.5s;
    cursor: pointer;
    margin-top: 30px;
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
  .button:hover{
    padding: 12px;
  
  }
</style>
<body>
<!--Background-->
<div id="background">
<!--Container-->
<div class="div0">

<label class="label1">Personal Information</label>
<div class="div1">
  <img src="https://ssl.gstatic.com/images/branding/product/1x/avatar_square_blue_512dp.png" alt="Avatar" style="width:140px; border-radius: 05%;">
</div>
<div class="div2">
  <label style="position: relative; left:20px; top:20px; font-family: Lucida Console, Times, serif; font-weight: bold; color:black; font-size: 30px;">Name</label>
  <input style="position:relative; left:95px; top:12px; background-color: #F9f6f9; height:30px; width:230px; border-style: inset; border-radius: 5px; font-size: 20px;" type="text" value="${fname} ${lname}" readonly/><br>
  <label style="position: relative; left:20px; top:38px; font-family: Lucida Console, Times, serif; font-weight: bold; color:black; font-size: 30px;">Gender</label>
  <input style="position:relative; left:58px; top:30px; background-color: #F9f6f9; height:30px; width:230px; border-style: inset; border-radius: 5px; font-size: 20px;" type="text" value="${gender}" readonly/><br>
  <label style="position: relative; left:20px; top:58px; font-family: Lucida Console, Times, serif; font-weight: bold; color:black; font-size: 30px;">Contact</label>
  <input style="position:relative; left:40px; top:52px; background-color: #F9f6f9; height:30px; width:230px; border-style: inset; border-radius: 5px; font-size: 20px;" type="text" value="${phone}" readonly/><br>
  <label style="position: relative; left:20px; top:78px; font-family: Lucida Console, Times, serif; font-weight: bold; color:black; font-size: 30px;">Service</label>
  <input style="position:relative; left:40px; top:72px; background-color: #F9f6f9; height:30px; width:230px; border-style: inset; border-radius: 5px; font-size: 20px;" type="text" value="${services}" readonly/><br>
  <label style="position: relative; left:20px; top:62px; font-family: Lucida Console, Times, serif; font-weight: bold; color:black; font-size: 30px;">Address</label>
  <textarea style="position:relative; left:40px; top:100px; background-color: #F9f6f9; min-height:58px; width:330px; border-style: inset; border-radius: 5px; resize: none; font-size: 20px; padding-left:6px;" type="text" value="9370712617" readonly>${address}, ${city}, ${district}, ${state}, ${pincode}</textarea><br>
  
</div>

</div>

<div class="div0_1">
  <label class="label2">Work In Detail</label>
  <textarea class="textarea" readonly>${work}</textarea>
</div>

<div class="div0_2">
  <textarea class="textarea_2" placeholder="Any Message..."></textarea>
  <%String CPhoneNo=request.getParameter("C_PhoneNo");
String PhoneNo=request.getParameter("phone");
int ID_g = (int)(Math.random()*(11111-99999+1)+11111); 
String string=Integer.toString(ID_g);
String Service_id="Trans"+string;
%>
  <a href="http://localhost:8080/Login_form/servlet/Sending_req?C_PhoneNo=<%=CPhoneNo %>&P_phone=<%=PhoneNo %>&Service_id=<%=Service_id %>">
    <button class="button">Send Request</button>
    </a>
</div>

<div class="div0_3">
  <label class="label1">Charges in(.Rs)</label>
  <div class="div01">
    <div class="div000">
    <label class="label4">Visit Only</label>
    </div>
    <input class="textpane1" name="charge1" type="number" value="${charge1}" readonly/>
  </div>
  <div class="div02">
    <div class="div000">
    <label class="label4">Minimum Work</label>
    </div>
    <input class="textpane1" name="charge2" type="number" value="${charge2}" readonly/>
  </div>
  <div class="div03">
    <div class="div000">
    <label class="label4">Amount 1/hr</label>
    </div>
    <input class="textpane1" name="charge3" type="number" value="${charge3}" readonly/>
  </div>
  <div class="div04">
    <div class="div0000">
    <label class="label4">Non-working hours or holidays</label>
    </div>
    &MediumSpace;
    <input class="textpane1" name="charge4" type="number" value="${charge4}" readonly/>
  </div>
  <div class="div05">
    <div class="div0000">
    <label class="label4">Distance more than 5km</label>
    </div>
    <input class="textpane1" name="charge5" type="number" value="${charge5}" readonly/>
  </div>
  <div class="div06">
    <div class="div0000">
    <label class="label4">If Extra Labor is Needed</label>
    </div>
    <input class="textpane1" name="charge6" type="number" value="${charge6}" readonly/>
  </div>
</div>

<div class="div0_4">
  <label class="label3">Feedbacks</label>
  <div class="feedback">
    <div class="feedback1">
      <table>
        <tr>
          <td style="font-weight: bold;">
          Raju Shrivastav
          </td>
        </tr>
        <tr>
          <td>
            <label style="font-size: 16px; font-weight: bold; color: black;">Rating: </label> 
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span> 
          </td>
        </tr>
        <tr>
          <td>
          It is very good and affordable Plumber.
          </td>
        </tr>
      </table>
    </div>  
    <div class="feedback1">
      <table>
        <tr>
          <td style="font-weight: bold;">
          Ram Sharma
          </td>
        </tr>
        <tr>
          <td>
            <label style="font-size: 16px; font-weight: bold; color: black;">Rating: </label> 
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span>
            <span class="fa fa-star"></span> 
          </td>
        </tr>
        <tr>
          <td>
          Good Plumber and service rate is cheaper than other plumber in my area.
          </td>
        </tr>
      </table>
    </div>  

  </div>
</div>



</div>
</body>
</html>