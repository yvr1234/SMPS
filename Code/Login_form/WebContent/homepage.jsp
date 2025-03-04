<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.Statement"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="ISO-8859-1">
    <title>SPMS</title>
    <link rel="shortcut icon" href="https://drive.google.com/thumbnail?id=1FgxXQfCUS6_Jm0RZ8MqS8OU5mmTrh8Rr">
    <link rel="preconnect" href="https://fonts.gstatic.com"> 
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap&family=Ubuntu&display=swap" rel="stylesheet" rel="stylesheet">
</head>
<style>

    html, body {
    max-width: 100%;
    overflow-x: hidden;
}
*{
    margin: 0;
    padding: 0;
}
:root{
    --navbar-height: 59px
}
/* Navigation Bar*/
#navbar{
    display: flex;
    align-items: center;
    position: relative;
}
#navbar::before{
    content: "";
    background-color: black;
    /* background: linear-gradient(to right top, rgb(252,44,119) 0%, rgb(108,64,121) 100%) no-repeat fixed center; */
    position: absolute;
    top: 0px;
    left: 0px;
    height: 100%;
    width: 100%;
    z-index: -1;
    opacity: 1;
}
/* Navigation Bar: logo and image */
#logo{
    margin: 10px 23px;                                                          
}

#logo img{
    margin: 3px 5px;
    height: 56px;
}
/* Navigation Bar: list style */
#navbar ul{
    display: flex;
    font-family: 'Oswald', sans-serif;
}
#navbar ul li{
    /* color: white; */
    list-style: none;
    font-size: 1.2rem;
}
#navbar ul li a{
    color: white;
    display: block;
    padding: 3px 22px;
    border-radius: 20px;
    text-decoration: none;
}
#navbar ul li a:hover{
    color: black;
    background-color: white;
}
.right{
    position: absolute;
    float: right;
    right: 6%;
}
.noti-btn{
    position:absolute;
    top:25px;
    left:1270px;
    background-color: transparent;
    background-color: white;
    height:35px;
    width:35px;
    border-radius: 50%;
    border-style:solid;
    border-color: black;
    cursor: pointer;
}
.noti-btn:hover{
    border-color: whitesmoke;
    background-color: red;
    box-shadow: 3px 2px 22px 1px rgb(252, 252, 252);

}
.menu-btn{
   background-color: transparent;
   color: white;
   padding: 10px;
   font-size: 20px;
   font-weight: bolder;
   font-family: 'Oswald', sans-serif;
   border: none;
   cursor: pointer;
}
.menu-content {
   display: none;
   position: absolute;
   min-width: 160px;
   z-index: 1;
}
.links-hidden{
   display: inline-block;
   color: white;
   padding: 12px 16px;
   text-decoration: none;
   font-size: 18px;
   font-weight: bold;
}
.links-hidden{
   display: block;
 
}
.links-hidden:hover {
   background-color: white;
   color: black;
   border-color: black;
   border-style:groove;
}
.dropdown-menu:hover .menu-content {
   display: block;
   background-color:black;
}
.dropdown-menu:hover .menu-btn {
   background-color: white;
   color: black;

}


/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  -webkit-animation-name: fadeIn; /* Fade in the background */
  -webkit-animation-duration: 0.4s;
  animation-name: fadeIn;
  animation-duration: 0.4s
}
/* Modal Content */
.modal-content {
  position: fixed;
  top:100px;
  left:350px;
  background-color: #fefefe;
  height:80%;
  width: 900px;
  -webkit-animation-name: slideIn;
  -webkit-animation-duration: 0.4s;
  animation-name: slideIn;
  animation-duration: 0.4s
}
/* The Close Button */
.close {
  color: #000;
  margin-top: none;
  margin-left: 860px;
  font-size: 50px;
  font-weight: bold;
}
.close:hover,
.close:focus {
  color: rgb(250, 7, 7);
  text-decoration: none;
  cursor: pointer;
}
.modal-body {padding: 2px 16px;}

/* The Modal (background) */
.modal2 {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    -webkit-animation-name: fadeIn; /* Fade in the background */
    -webkit-animation-duration: 0.4s;
    animation-name: fadeIn;
    animation-duration: 0.4s;
  }
  /* Modal Content */
  .modal-content2 {
    position: fixed;
    top:30px;
    left:860px;
    background-color: #fefefe;
    height:80%;
    width: 400px;
    -webkit-animation-name: slideIn;
    -webkit-animation-duration: 0.4s;
    animation-name: slideIn;
    animation-duration: 0.4s;
    border-radius: 10px;
    border: #000;
    padding-bottom: 4px;
    overflow-y: scroll;
    overflow-x:hidden;
  }
  /* The Close Button */
  .close2 {
    position: relative;
    left:125px;
    color: #7b7b7b;
    font-size: 50px;
    font-weight: bold;
  }
  .close2:hover,
  .close2:focus {
    color: rgb(250, 7, 7);
    text-decoration: none;
    cursor: pointer;
  }
  .divm_1{
    position:relative; 
    left:none; 
    height:60px; 
    width:396px; 
    background-color:black;  
    border-radius: 10px; 
    border-color: white; 
    border-style:inset;
  }
  .divm_2{
    background-color:#7b7b7b; 
    position:relative;
    border-radius: 10px;  
    height:90px; 
    width:376px; 
    margin-left:2px; 
    margin-top: 4px;
    padding-top:4px;
  }
  .divm_3{
    position:relative;
    left:220px;
    bottom:90px;
    height:84px; 
    width:140px; 
    margin-left:2px; 
    margin-top: 4px;
  }
.btnm_1{
    background: black;
    font-size: 16px;
    width:140px;
    height:40px;
    font-weight: bold;
    color:whitesmoke;
    margin-bottom: 4px;
    cursor: pointer;
    border-color: #000;
    border-radius: 6px;
    padding:2px;
}
.btnm_1:hover{
    background: whitesmoke;
    border-color: #09ee17;
    border-width: 4px;
    color:black;
}
.btnm_2{
    background: black;
    font-size: 16px;
    width:140px;
    height:40px;
    font-weight: bold;
    color:whitesmoke;
    margin-bottom: 4px;
    cursor: pointer;
    border-color: #000;
    border-radius: 6px;
    padding:2px;
}
.btnm_2:hover{
    background:whitesmoke;
    border-color: red;
    border-width: 4px;
    color:black;
}
  .labeln1{
    position:relative;
    bottom:8px;
    left:20px;
    color: whitesmoke;
    font-weight: lighter;
    font-size:25px;
    font-family: 'Ubuntu', sans-serif;
}
/* Add Animation */
@-webkit-keyframes slideIn {
  from {bottom: -300px; opacity: 0} 
  to {bottom: 0; opacity: 1}
}

@keyframes slideIn {
  from {bottom: -300px; opacity: 0}
  to {bottom: 0; opacity: 1}
}

@-webkit-keyframes fadeIn {
  from {opacity: 0} 
  to {opacity: 1}
}

@keyframes fadeIn {
  from {opacity: 0} 
  to {opacity: 1}
}


/*Home*/
#home{
    min-height:70px;
    width:1519px;
    z-index: 0;
}
.labelh1{
    position:absolute;
    top:300px;
    left:445px;
    color:black;
    font-weight: bold;
    font-size:50px;
    font-family: 'Ubuntu', sans-serif;
}
.labelh2{
    position:absolute;
    top:370px;
    left:575px;
    color:black;
    font-size:35px;
    font-family: 'Ubuntu', sans-serif;
}
.buttonh{
    position:absolute;
    top:440px;
    left:695px;
    color:whitesmoke;
    padding: 5px;
    border-radius: 10px;
    background-color: #1c1c1c;
    font-size:35px;
    font-family: 'Ubuntu', sans-serif;
    transition-delay: 4ms;
}
.buttonh:hover{
    padding:8px;
    cursor:pointer;
    z-index: 1;
}

#label{
    position:absolute;
    top:22px;
    left:660px;
    color:white;
    font-size:35px;
    font-weight: bold;
    font-family: "Arial", Sans-serif;
}
#divh{
    height:600px;
    width:1459px;
    position:relative;
    padding-top:90px;
    padding-bottom: 60px;
    padding-left: 30px;
    padding-right: 30px;
    background-color: #1c1c1c;
    filter: brightness(100%);
    filter:contrast(5%);
    filter:grayscale(5%);
}
/* Services Section */
#services-container{
    height: 637px;
}
#services{
    /* margin: 30px; */
    display: flex;
    overflow-x: auto;
    height: 100%; 
}
#services .box{
    border: 4px solid yellow;
    margin-right: 15px;
    /* flex: 0 1 calc(33% - 1em); */
    padding: 32px;
    background-color: #efefef;

}
#services .box img{
    height: 150px;
    margin: auto;
    display: block;
}
#services .box p{
    font-family: 'Bree Serif', serif;
}

.h-primary{
    font-size: 15px;
    padding: 8px;
    text-align:justify;
    font-family: 'Bree Serif', serif;
}

.h-secondary{
    font-size: 1.5rem;
    padding: 8px;
    font-family: 'Bree Serif', serif;
}
.center{
    text-align: center;
}

#services::-webkit-scrollbar{
display: none;
}


/*About us*/
#about{
    height:600px;
    width:1459px;
    position:relative;
    padding:30px;
    background-color: #7b7b7b;
    border-width: 50px;
}
.labela{
    position:relative;
    top:30px;
    left:660px;
    color:#FFFFFF;
    font-weight: bold;
    font-size:45px;
    font-family: 'Ubuntu', sans-serif;
}



/*Contact us*/
#divc{
background-color:black;
height:700px;
}
.divc1{
background-color:black;
height:490px;
width:650px;
position:relative;
left:60px;
top:60px;
}
.divc2{
background-color:black;
height:490px;
width:650px;
position:relative;
left:800px;
bottom:434px;
}
.labelc{
color:white;
font-size:35px;
font-family: "Arial", Sans-serif;
}
.pc{
position:relative;
top:22px;
color:white;
font-size:17.5px;
font-family: "Arial", Sans-serif;
}
.pc1{
position:relative;
top:32px;
color:white;
font-size:17.5px;
font-family: "Arial", Sans-serif;
}
.labelc1{
position:relative;
top:40px;
height:90px;
}
  .input {
color:white;
font-size:20px;
    width: 95%;
    padding: 20px;
    background: transparent;
    border: none;
    outline: none;
resize: none;
  }
  
  .line-box {
    position: relative;
    width: 100%;
    height: 1px;
    background: #BCBCBC;
  }
  
  .line {
    position: absolute;
    width: 0%;
    height: 2px;
    top: 0px;
    left: 50%;
    transform: translateX(-50%);
    background: white;
    transition: ease .6s;
  } 
  
  .input:focus + .line-box .line {
    width: 100%;
  }
.slideshow{
position:relative;
}
.mySlides {display:none;}

.button {
    position: relative;
    background-color: black;
    /* border-size: 6px; */
    /* border-size: 6px; */
    border-color: white;
    font-size: 20px;
    color: #FFFFFF;
    padding: 2px;
    width: 100px;
    border-radius:8px;
    text-align: center;
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
    cursor: pointer;
  }
  
  .button:after {
    content: "";
    background: #f1f1f1;
    display: block;
    position: absolute;
    padding-top: 300%;
    padding-left: 350%;
    border-radius:10px;
    margin-left: -20px !important;
    margin-top: -120%;
    opacity: 0;
    transition: all 0.8s
  }
  
  .button:active:after {
    padding: 0;
    margin: 0;
    opacity: 1;
    transition: 0s
  }
</style>
<body>
  <%String phone=request.getParameter("phone");
String user_type=request.getParameter("user_type");
%>
    <nav id="navbar">
        <div id="logo">
            <img src="https://drive.google.com/thumbnail?id=1rwzgOWxeqgaM5WXqIkOT8zTDu3n5l0ei" alt="SPMS">
        </div>
        <ul>
            <li class="item"><a href="#home">Home</a></li>
            <li class="item"><a href="#label">Services</a></li>
            <li class="item"><a href="#about">About Us</a></li>
            <li class="item"><a href="#divc">Contact Us</a></li>
            <li class="item" id="myBtn"><a href="#help">Help</a></li>
        </ul>
        <!-- The Modal -->
        <div id="myModal" class="modal">
          <div class="modal-content">
          <span class="close">&times;</span>
          <div class="modal-body">
          <p>Some text in the Modal Body</p>
          <p>Some other text...</p>
          </div>
          </div>
        </div>
        
<%!
String Service_id;
String P_Name;
String P_Lname;
String P_phone;
%>
<%
Connection conn;
PreparedStatement stat;
Statement stmt;
ResultSet rs;
String PhoneNo, UserType, Services;
ArrayList<String> f = new ArrayList<String>();
ArrayList<String> l = new ArrayList<String>();
ArrayList<String> p = new ArrayList<String>();
ArrayList<String> s = new ArrayList<String>();
ArrayList<String> tr_id = new ArrayList<String>();

%>
<%

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Req_accepted where C_phone = " + phone + " ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String C_phone = rs.getString("C_phone");
        P_Name= rs.getString("P_fname");
        f.add(P_Name);
        P_Lname= rs.getString("P_lname");
        l.add(P_Lname);
        P_phone = rs.getString("P_phone");
        p.add(P_phone);
        String services = rs.getString("services");
        s.add(services);
        Service_id = rs.getString("Service_id");
        tr_id.add(Service_id);
    }
} catch (Exception e) {
       out.print(e);
}

%>
        <a href="#help"><img id="myBtn2" class="noti-btn" src="https://cdn-icons.flaticon.com/png/512/3541/premium/3541852.png?token=exp=1651921867~hmac=cb67c9087b1913a96625a14a101693dd"></a>
        <div id="myModal2" class="modal2">
          <div class="modal-content2">
            <div class="modal-body2">
              <div class="divm_1">
                <label class="labeln1">Request Status</label>
                <span class="close2">&times;</span>
              </div>
              <% for(int i=0;i<p.size();i++) {%>
              <div class="divm_2">
                <table style="width:210px; margin-left:8px;">
                  <tr>
                      <td style="font-weight: bold; font-size: 20px;"><% out.println(f.get(i));%> <% out.println(l.get(i));%></td>
                  </tr>
                  <tr>
                      <td style="font-weight: bold; font-size: 16px;"><% out.println(p.get(i));%></td>
                  </tr>
                  <tr>
                      <td style="font-weight: bold;">Service: <% out.println(s.get(i));%></td>
                  </tr>
                  <tr>
                      <td style="color: white; font-weight: bold;">Transaction id: <% out.println(tr_id.get(i));%></td>
                  </tr>
                </table>
                <div class="divm_3">
<a href="http://localhost:8080/Login_form/servlet/Service_completed?Service_id=<%=tr_id.get(i)%>">                
                  <button class="btnm_1">Completed</button>
</a>                  
<a href="http://localhost:8080/Login_form/Soory.jsp?phone=<%=phone %>&user_type=<%=user_type %>&P_phone=<%=p.get(i)%>">   
                  <button class="btnm_2">Not Completed</button>
</a>                         
                </div>
              </div>  
              <% }%>
            </div>
          </div>
        </div>
        
        <div class="right">
            <div class="dropdown-menu">
                <button class="menu-btn">Menu>> </button>
                <div class="menu-content">
                
               <a class="links-hidden" href="http://localhost:8080/Login_form/servlet/Profile?phone=<%= phone %>&user_type=<%= user_type %>">Profile</a>
                <a class="links-hidden" href="http://localhost:8080/Login_form/MyServices.jsp?phone=<%= phone %>&user_type=<%= user_type %>">My Service</a>
                </div>
                </div>
        </div>
    </nav>
        <video autoplay muted loop id="home">
            <source src="http://localhost:8080/Login_form/video3.mp4" type="video/mp4">
        </video>
            <label class="labelh1">WE ARE SERVICE PROVIDERS</label>
            <label class="labelh2">Book Your Services Now</label>
            <button class="buttonh">Hit It!!</button>
    <div id="divh">
        <label id="label">Our Services</label>
        <div id="services">
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1kGhFzjIarh4i9XtckRLm4uSsY9fsxOAl" alt="Mechanical">
                <h2 class="h-secondary center">Mechanical</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
                <div class="box">
                <a href="http://localhost:8080/Login_form/Plumbing_Services.jsp?phone=<%= phone %>&user_type=<%=user_type %>&services='Plumber'">
                
                <img src="https://drive.google.com/thumbnail?id=1e0op-4A0XBsMDbdXpi29oRTJ7N-dKRVJ" alt="Plumbing Services">
                
                </a>
                <h2 class="h-secondary center">Plumber</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            
            <div class="box"><img src="https://drive.google.com/thumbnail?id=1TtrqGdjFXVIqixmG9E31Y8Z_5TN_Ov1V" alt="Designer">
                <h2 class="h-secondary center">Designer</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block.Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1uOs3Fiv0Gm3of7SflstL9x2i7o4atiOi" alt="Carpenter">
                <h2 class="h-secondary center">Carpenter</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writer's block.Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1PsrjxEVQtkbeygU7cJ5Ae4TSEONyCe4c" alt="Chef">
                <h2 class="h-secondary center">Chef</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block.Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=17MfoG1LulFOhnBMXhzVZMbC8yLbx3laT" alt="Styler">
                <h2 class="h-secondary center">Styler</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block.Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1vqiabYUBLz-Q-NVb4Ler-zc1F-_jpcBm" alt="Sweeper">
                <h2 class="h-secondary center">Sweeper</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers'block.Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1gdlDWqZPRonatMvv3iZP6MgDoYogR3MN" alt="Bike Repair">
                <h2 class="h-secondary center">Bike Repair</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block.Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1FTjsIdsyPCqWcQEoFsCoxVl4kEq0qalP" alt="Technician">
                <h2 class="h-secondary center">Technician</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block.Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1VYTRl2CIGQdlKmhrG0kn8FBfoo2CjhqS" alt="Photographer">
                <h2 class="h-secondary center">Photographer</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1QOXhG98zu3pJnLiLlQf2DzsQpUH594-s" alt="Painter">
                <h2 class="h-secondary center">Painter</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
            </div>
            <div class="box">
                <img src="https://drive.google.com/thumbnail?id=1Ty-nv_NNw3BlMLqgS3TK03bs4qQXFTEc" alt="More Services">
                <h2 class="h-secondary center">More Services</h2>
                <p class="h-primary">A random paragraph can also be an excellent way for a writer to tackle writers' block.</p>
            </div>
        </div>
    </div>
    </div>
    <section id="about">
        <label class="labela">About Us</label>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        <p style="position:relative; left:120px; top:100px;">A random paragraph can also be an excellent way for a writer to tackle writers' block. Writing block can often happen due to being stuck with a current project that the writer is trying to complete.</p>
        
    </section>
    <section class="contact-container">
        <div id="divc">
	<div class="divc1">
	<label class="labelc">LET'S CONNECT</label>
	<p class="pc">When there are great ideas at stake, it’s always a good idea to share. Tell us how can we make it happen for you!!</p>
	<p class="pc1">Fill the form below or mail us at <a style="color:blue;" href="business@example.in">business@example.in</a></p>
<label class="labelc1">
      <input type="text" class="input" name="email" placeholder="NAME"/>
        <div class="line-box">
          <div class="line"></div>
        </div>
</label>	
<label class="labelc1">
      <input type="text" class="input" name="email" placeholder="E-MAIL"/>
        <div class="line-box">
          <div class="line"></div>
        </div>
</label>	
<label class="labelc1">
      <input type="text" class="input" name="email" placeholder="PHONE"/>
        <div class="line-box">
          <div class="line"></div>
        </div>
</label>
<label class="labelc1">
      <textarea type="text" class="input" name="email" placeholder="MESSAGE"></textarea>
        <div class="line-box">
          <div class="line"></div>
        </div>
</label>	
<br><br><br><br><button class="button">Submit</button>
</div>
	<div class="divc2">
<div class="slideshow">
  <img class="mySlides" style="width:640px; height:312px;background: #99FFCC ">
  <img class="mySlides" style="width:640px; height:312px;background: #2596be ">
  <img class="mySlides" style="width:640px; height:312px;background: #fabe00">
</div>
	</div>
        </div>
    </section>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
// Get the modal
var modal = document.getElementById("myModal");
var modal2 = document.getElementById("myModal2");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");
var btn2 = document.getElementById("myBtn2");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
var span2 = document.getElementsByClassName("close2")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}
btn2.onclick = function() {
  modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}
span2.onclick = function() {
  modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal2) {
    modal2.style.display = "none";
  }
}
</script>
</body>
</html>
