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
  z-index: 2; /* Sit on top */
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
#divh{
    height:600px;
    width:1459px;
    position:relative;
    padding-top:90px;
    padding-bottom: 60px;
    padding-left: 30px;
    padding-right: 30px;
    background-color: whitesmoke;
}
.divh1{
    height:55px;
    width:400px;
    position:relative;
    background-color: #000;
    border-bottom-right-radius: 10px;
    z-index: 1;
}
.divh2{
    min-height:600px;
    max-height:600px;
    width:400px;
    position:absolute;
    left:70px;
    top:90px;
    background-color: #7b7b7b;
    border-radius: 10px;
    z-index: 0;
    padding-bottom: 20px;
    overflow-y: auto;
    overflow-x:hidden;
}
.divh3{
    height:55px;
    width:400px;
    position:relative;
    background-color: #000;
    border-bottom-right-radius: 10px;
    z-index: 1;
}
.divh4{
    min-height:620px;
    max-height:620px;
    width:400px;
    position:absolute;
    left:500px;
    top:90px;
    background-color: #7b7b7b;
    border-radius: 10px;
    z-index: 0;
    overflow-y: auto;
    overflow-x:hidden;
}
.divh5{
    height:50px;
    width:380px;
    position:relative;
    left:1110px;
    bottom: 90px;
    background-color: #7b7b7b;
    border-bottom-left-radius: 10px;
    z-index: 1;
}
.divh6{
    min-height:115px;
    max-height:90px;
    width:340px;
    position:relative;
    left:20px;
    margin-top: 10px;
    background-color: white;
    border-radius: 5px;
    padding-top:6px;
}
.divh7{
    position:relative;
    left:235px;
    bottom:90px;
    height:80px;
    width:90px;
    padding:4px;
}
.divh7_2{
    position:relative;
    left:235px;
    bottom:90px;
    height:80px;
    width:90px;
    padding:4px;
}
.divh7_1{
    position:relative;
    left:235px;
    bottom:90px;
    height:85px;
    width:90px;
    padding:4px;
    border-style: dashed;
}
.divh8{
    min-height:130px;
    max-height:110px;
    width:340px;
    position:relative;
    left:20px;
    background-color: white;
    border-radius: 5px;
    padding-top:6px;
    margin-top: 6px;
}
.divh9{
    min-height:620px;
    max-height:620px;
    width:520px;
    position:absolute;
    left:930px;
    top:90px;
    background-color: #7b7b7b;
    border-radius: 10px;
    z-index: 0;
    overflow-y: scroll;
    overflow-x:hidden;
}
.divh10{
    min-height:90px;
    max-height:110px;
    width:465px;
    position:relative;
    left:20px;
    background-color: white;
    border-radius: 5px;
    padding-top:6px;
    margin-top: 6px;
}
.divh10_1{
    position:relative;
    left:355px;
    bottom:65px;
    height:40px;
    width:100px;
}
.service_id{
    position:relative; 
    left:238px; 
    bottom:103px; 
    font-weight: bold; 
    font-size: 18px; 
    color:red
}
.btnh{
    background: #7b7b7b;
    font-size: 20px;
    width:90px;
    height:40px;
    font-weight: bold;
    margin-bottom: 4px;
    cursor: pointer;
    border-color: #000;
    border-radius: 6px;
}
.btnh:hover{
    background: black;
    border-color: red;
    border-width: 4px;
    color:white;
}
.btnh1{
    background: #7b7b7b;
    font-size: 20px;
    width:90px;
    height:40px;
    font-weight: bold;
    margin-bottom: 4px;
    cursor: pointer;
    border-color: #000;
    border-radius: 6px;
}
.btnh1:hover{
    background: black;
    border-color: green;
    border-width: 4px;
    color:white;
}
.btnh_1{
    background: #7b7b7b;
    font-size: 20px;
    width:90px;
    height:40px;
    font-weight: bold;
    margin-bottom: 4px;
    cursor: pointer;
    border-color: #000;
    border-radius: 6px;
}
.btnh_1:hover{
    background: black;
    border-color: #09ee17;
    border-width: 4px;
    color:white;

}
.btnh_2{
    background: #7b7b7b;
    font-size: 20px;
    width:100px;
    height:40px;
    font-weight: bold;
    margin-bottom: 4px;
    cursor: pointer;
    border-color: #000;
    border-radius: 6px;
    padding:4px;
}
.btnh_2:hover{
    background: black;
    border-color: whitesmoke;
    border-width: 4px;
    color:white;

}
.labelh{
    position:relative;
    top:10px;
    left:70px;
    color:#FFFFFF;
    font-size:30px;
    font-family: 'Ubuntu', sans-serif;
}
.labelh1{
    position:relative;
    top:10px;
    left:20px;
    color: black;
    font-weight: bold;
    font-size:25px;
    font-family: 'Ubuntu', sans-serif;
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
<%!
String P_Name;
String P_Lname;
%>
 <%String phone=request.getParameter("phone");
String user_type=request.getParameter("user_type");
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
ArrayList<String> c = new ArrayList<String>();
ArrayList<String> d = new ArrayList<String>();
ArrayList<String> s = new ArrayList<String>();
ArrayList<String> ad = new ArrayList<String>();
ArrayList<String> tr_id = new ArrayList<String>();
%>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Requests where P_phone = " + phone + " ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String C_fname = rs.getString("C_fname");
        f.add(C_fname);
        String C_lname = rs.getString("C_lname");
        l.add(C_lname);
        String C_phone = rs.getString("C_phone");
        p.add(C_phone);
        String P_phone = rs.getString("P_phone");
        String C_city = rs.getString("C_city");
        c.add(C_city);
        String C_district = rs.getString("C_district");
        d.add(C_district);
        String C_state = rs.getString("C_state");
        s.add(C_state);
        String C_address = rs.getString("C_address");
        ad.add(C_address);
        String Service_id = rs.getString("Service_id");
        tr_id.add(Service_id);
    }
} catch (Exception e) {
       out.print(e);
}
       try {
    	    Class.forName("com.mysql.cj.jdbc.Driver");
    	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    	    stmt = conn.createStatement();
    	    String display = "SELECT * FROM Pro_registration where phone = " + phone + " ";
    	    rs = stmt.executeQuery(display);
    	    while (rs.next()) {
    	        P_Name = rs.getString("fname");
    	        P_Lname = rs.getString("lname");
    	    }
    	} catch (Exception e) {
    	       out.print(e);
}%>
    <nav id="navbar">
        <div id="logo">
            <img src="https://drive.google.com/thumbnail?id=1rwzgOWxeqgaM5WXqIkOT8zTDu3n5l0ei" alt="SPMS">
        </div>
        <ul>
            <li class="item"><a href="#divh">Home</a></li>
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
        <div class="right">
        <ul>
            <li class="item">
            <a class="links-hidden" href="http://localhost:8080/Login_form/servlet/Profile?phone=<%= phone %>&user_type=<%= user_type %>">Profile</a>
           </li>
        </ul>   
        </div>
    </nav>
    <div id="divh">
    <label style=" position:absolute; left:70px; top:20px; color:black; font-weight: lighter; font-size: 35px;">Welcome, <%=P_Name %> <%=P_Lname %>. </label>
     <div class="divh5"><label class="labelh1">Total Revenue (in Rs.): 00.00 </label></div>
        <div class="divh2">
            <div class="divh1"><label class="labelh">Pending Requests</label></div>
            <% for(int i=0;i<p.size();i++) {%>
            <div class=divh6>
                <table style="width:210px; margin-left:8px;">
                    <tr>
                        <td style="font-weight: bold; font-size: 20px;"><% out.println(f.get(i));%> <% out.println(l.get(i));%></td>
                    </tr>
                    <tr>
                        <td style="color: blue; font-weight: bold; font-size: 16px;"><% out.println(p.get(i));%></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;"><% out.println(ad.get(i));%>, <% out.println(c.get(i));%>,</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;"><% out.println(d.get(i));%>, <% out.println(s.get(i));%></td>
                    </tr>
                </table>
                <div class="divh7_2">
 <a href="http://localhost:8080/Login_form/servlet/Req_accepted?Service_id=<%=tr_id.get(i)%>">
                     <button class="btnh_1">Accept</button>
</a>                     
<a href="http://localhost:8080/Login_form/servlet/Req_decline?Service_id=<%=tr_id.get(i)%>">
                    <button class="btnh">Decline</button>
</a>  
                </div>
            </div>
          <% }%>
        </div>
        
            <div class="divh4">
            <div style="height:56px; width:auto;">
            <div class="divh3"><label class="labelh">Accepted Services </label></div>
            </div>
<%
ArrayList<String> f2 = new ArrayList<String>();
ArrayList<String> l2 = new ArrayList<String>();
ArrayList<String> p2 = new ArrayList<String>();
ArrayList<String> c2 = new ArrayList<String>();
ArrayList<String> d2 = new ArrayList<String>();
ArrayList<String> s2 = new ArrayList<String>();
ArrayList<String> ad2 = new ArrayList<String>();
ArrayList<String> tr_id2 = new ArrayList<String>();
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Req_accepted where P_phone = " + phone + " ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String C_fname = rs.getString("C_fname");
        f2.add(C_fname);
        String C_lname = rs.getString("C_lname");
        l2.add(C_lname);
        String C_phone = rs.getString("C_phone");
        p2.add(C_phone);
        String P_phone = rs.getString("P_phone");
        String C_city = rs.getString("C_city");
        c2.add(C_city);
        String C_district = rs.getString("C_district");
        d2.add(C_district);
        String C_state = rs.getString("C_state");
        s2.add(C_state);
        String C_address = rs.getString("C_address");
        ad2.add(C_address);
        String Service_id = rs.getString("Service_id");
        tr_id2.add(Service_id);
    }
} catch (Exception e) {
       out.print(e);
}

%>            
            <% for(int i=0;i<p2.size();i++) {%>
            <div class=divh8>
                <table style="width:210px; margin-left:12px;">
                    <tr>
                        <td style="font-weight: bold; font-size: 20px;"><% out.println(f2.get(i));%> <% out.println(l2.get(i));%></td>
                    </tr>
                    <tr>
                        <td style="color: blue; font-weight: bold; font-size: 16px;"><% out.println(p2.get(i));%>,</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;"><% out.println(ad2.get(i));%>, <% out.println(c2.get(i));%>,</td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;"><% out.println(d2.get(i));%>, <% out.println(s2.get(i));%></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; color:red; font-size:16px;">Transaction id: <% out.println(tr_id2.get(i));%></td>
                    </tr>
                </table>
                <div class="divh7">
<a href="http://localhost:8080/Login_form/servlet/Req_pending?Service_id=<%=tr_id2.get(i)%>">                     
                    <button class="btnh_1">Pending</button>
</a>                    
<a href="http://localhost:8080/Login_form/servlet/Req_abort?Service_id=<%=tr_id2.get(i)%>">             
                    <button class="btnh">Abort</button>
</a>                    
                </div>
            </div>
            <% }%>
        </div>
<%
ArrayList<String> f3 = new ArrayList<String>();
ArrayList<String> l3 = new ArrayList<String>();
ArrayList<String> p3 = new ArrayList<String>();
ArrayList<String> c3 = new ArrayList<String>();
ArrayList<String> d3 = new ArrayList<String>();
ArrayList<String> s3 = new ArrayList<String>();
ArrayList<String> ad3 = new ArrayList<String>();
ArrayList<String> tr_id3 = new ArrayList<String>();
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Req_completed where P_phone = " + phone + " ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String C_fname = rs.getString("C_fname");
        f3.add(C_fname);
        String C_lname = rs.getString("C_lname");
        l3.add(C_lname);
        String C_phone = rs.getString("C_phone");
        p3.add(C_phone);
        String P_phone = rs.getString("P_phone");
        String C_city = rs.getString("C_city");
        c3.add(C_city);
        String C_district = rs.getString("C_district");
        d3.add(C_district);
        String C_state = rs.getString("C_state");
        s3.add(C_state);
        String C_address = rs.getString("C_address");
        ad3.add(C_address);
        String Service_id = rs.getString("Service_id");
        tr_id3.add(Service_id);
    }
} catch (Exception e) {
       out.print(e);
}

%>            
        <div class="divh9">
          <div style="height:56px; width:auto;">
          <div class="divh3"><label class="labelh">Completed Services </label></div>
          </div>
          <% for(int i=0;i<p3.size();i++) {%>
          <div class=divh10>
              <table style="width:210px; margin-left:12px;">
                  <tr>
                      <td style="font-weight: bold; font-size: 20px;"><% out.println(f3.get(i));%> <% out.println(l3.get(i));%></td>
                  </tr>
                  <tr>
                      <td style="color: blue; font-weight: bold; font-size: 16px;"><% out.println(p3.get(i));%>,</td>
                  </tr>
                  <tr>
                      <td style="font-weight: bold;"><% out.println(ad3.get(i));%>, <% out.println(c3.get(i));%>,</td>
                  </tr>
                  <tr>
                      <td style="font-weight: bold;"><% out.println(s3.get(i));%>, <% out.println(d3.get(i));%></td>
                  </tr>
              </table>
              <label class="service_id">Transaction id: <% out.println(tr_id3.get(i));%> </label>
              <div class="divh10_1">
              <a href="http://localhost:8080/Login_form/Invoice.jsp?Service_id=<%=tr_id3.get(i)%>">
                  <button class="btnh_2">View Bill</button>
              </a>
              </div>
          </div>
          <% }%>  
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

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html>
