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
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plumbers</title>
<link rel="shortcut icon" href="https://drive.google.com/thumbnail?id=1FgxXQfCUS6_Jm0RZ8MqS8OU5mmTrh8Rr">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
@charset "ISO-8859-1";
#background{
    background:#7b7b7b;
    background-repeat: no-repeat;
    padding-bottom: 120px;
    padding-top: 100px;
    padding-left: 335px;
    height:100%;
}
body{
    margin: 0%;
}
.div{
  position: relative;
  width: 800px;
  height:10px;
  padding-left: 40px;
  padding-top: 30px;
  padding-bottom: 20px;
  background-color: rgb(255, 255, 255) ;
}
.div0{
    position: relative;
    width: 800px;
    height: 800px;
    max-height: fit-content;
    overflow-x: hidden;
    overflow-y:scroll;
    padding-left: 40px;
    padding-top: 30px;
    padding-bottom: 20px;
    background-color: rgb(255, 255, 255) ;
    border-radius:10px;
}
.div1{
  border-style:inset;
  border-radius: 5px;
  height:110px;
  max-height: 200px;
  width:750px;
  position:relative;
  margin-bottom: 10px;
  transition: all 0.5s;
  cursor: pointer;
}
.div2{
  height:fit-content;
  width:430px;
  position:relative;
  left:110px;
  bottom:102px;
  
}
.div3{
  position:relative;
  left:600px;
  bottom:188px;
  height:50px;
  width:138px;
}
.checked {
  color: orange;
}
.Profile_img{
  height:94px;
  width:auto;
  position:relative;
  left:7px;
  top:7px;
  }
.label1{
    position: relative;
    bottom:30px;
    font-family: "Lucida Console", Times, serif;
    font-weight: bold;
    font-size: 40px;
}
.button {
    display: inline-block;
    border-radius: 4px;
    background:black;
    border: none;
    color: #FFFFFF;
    text-align: center;
    font-size: 20px;
    padding: 10px;
    width: 130px;
    transition: all 0.5s;
    cursor: pointer;
    margin: 5px;
  }
  .button:hover{
    padding: 12px; 
  
  }
</style>
<body>
<%
Connection conn;
PreparedStatement stat;
Statement stmt;
ResultSet rs;
String PhoneNo, UserType, Services;
ArrayList<String> a = new ArrayList<String>();
ArrayList<String> l = new ArrayList<String>();
ArrayList<String> p = new ArrayList<String>();
ArrayList<String> u = new ArrayList<String>();
ArrayList<String> c = new ArrayList<String>();
ArrayList<String> d = new ArrayList<String>();
ArrayList<String> s = new ArrayList<String>();
ArrayList<String> pc = new ArrayList<String>();
ArrayList<String> ad = new ArrayList<String>();


%>
<%
PhoneNo=request.getParameter("phone");
Services=request.getParameter("services");
%>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Pro_registration where services = " + Services + " ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String fname = rs.getString("fname");
        a.add(fname);
        String lname = rs.getString("lname");
        l.add(lname);
        String phone = rs.getString("phone");
        p.add(phone);
        String user_type = rs.getString("user_type");
        u.add(user_type);
        String city = rs.getString("city");
        c.add(city);
        String district = rs.getString("district");
        d.add(district);
        String state = rs.getString("state");
        s.add(state);
        String pincode = rs.getString("pincode");
        pc.add(pincode);
        String address = rs.getString("address");
        ad.add(address);
        
        request.setAttribute("lname", lname);
        request.setAttribute("phone", phone);
        request.setAttribute("user_type", user_type);
        request.setAttribute("city", city);
        request.setAttribute("district", district);
        request.setAttribute("state", state);
        request.setAttribute("pincode", pincode);
        request.setAttribute("address", address);
        //request.getRequestDispatcher("/Plumbing_Services.jsp").forward(request, response);
    }
} catch (Exception e) {
       out.print(e);
}%>
<!--Background-->
<div id="background">
<!--Container-->
<div class="div">
  <h1 class="label1">Plumbers</h1>
</div>
<div class="div0">

<% for(int i=0;i<a.size();i++) {%>

<div class="div1">

  <img class="Profile_img" src="https://ssl.gstatic.com/images/branding/product/1x/avatar_square_blue_512dp.png" alt="Profile">

  <div class="div2">

    <table>
      <tr>
        <td style=" font-size: 25px; font-weight: bold;">
        <% out.println(a.get(i));%>
        </td>
        <td style="font-size: 25px; font-weight: bold;">
        <% out.println(l.get(i));%>
        </td>
        <td>
         <label style="font-size: 16px; font-weight: bold; color: blue;">Rating: </label> 
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star checked"></span>
          <span class="fa fa-star"></span>
          <span class="fa fa-star"></span> 
        </td>
      </tr>
    </table>
  </div>
    <div class="div2">
    <table>
      <tr>
        <td style=" font-size: 20px; font-weight: bold; color: blue;"">
        Contact: <% out.println(p.get(i));%>
        </td>
      </tr>
    </table>
  </div>
  <div class="div2">
    <table>
      <tr>
        <td style=" font-size: 20px;">
        <% out.println(ad.get(i));%>, <% out.println(c.get(i));%>, <% out.println(pc.get(i));%>,
        </td>
      </tr>
    </table>
  </div>
  <div class="div2">
    <table>
      <tr>
        <td style=" font-size: 20px;">
        <% out.println(d.get(i));%>,
        </td>
        <td style="font-size: 20px;">
        <% out.println(s.get(i));%>.
        </td>
      </tr>
    </table>
  </div>
  <div class="div3">
    <a href="http://localhost:8080/Login_form/servlet/Plumbers?phone=<%= p.get(i)%>&C_PhoneNo=<%=PhoneNo%>"><button class="button">View Profile</button></a>
  </div>
</div>

<% }%>
</div>

</div>
</body>
</html>