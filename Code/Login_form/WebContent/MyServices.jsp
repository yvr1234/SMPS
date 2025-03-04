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
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>My Services</title>
  <link rel="shortcut icon" href="https://drive.google.com/thumbnail?id=1FgxXQfCUS6_Jm0RZ8MqS8OU5mmTrh8Rr">
</head>
<style>
  
#background{
    height:100vh;
    background:#7b7b7b;
    background-repeat: no-repeat;
    padding-bottom: 40px;
    padding-top: 55px;
    padding-left: 358px;
    padding-right: 100px;
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
  width:800px;
  height:60px;
  background-color: black;
  border-top-left-radius: 15px;
}
.sub{
  position:relative;
  margin:5px;
  height:100px;
  background-color: rgb(236, 232, 232);
  border-style: inset;
  border-radius: 15px;
}
.divh10_1{
    position:relative;
    left:490px;
    bottom:65px;
    height:40px;
    width:105px;
}
.divh10_2{
    position:relative;
    left:590px;
    bottom:106px;
    height:40px;
    width:180px;
}
  .btnh_2{
    position: relative;
    background: #7b7b7b;
    font-size: 20px;
    width:fit-content;
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
    border-color: rgb(134, 133, 133);
    border-width: 4px;
    color:white;
}
  .service_id{
    position:relative; 
    left:538px; 
    bottom:90px; 
    font-weight: bold; 
    font-size: 18px; 
    color:red
}
</style>
<body> 
 <%String phone=request.getParameter("phone");
String user_type=request.getParameter("user_type");
Connection conn;
PreparedStatement stat;
Statement stmt;
ResultSet rs;
%>
<%
ArrayList<String> f3 = new ArrayList<String>();
ArrayList<String> l3 = new ArrayList<String>();
ArrayList<String> p3 = new ArrayList<String>();
ArrayList<String> c3 = new ArrayList<String>();
ArrayList<String> d3 = new ArrayList<String>();
ArrayList<String> C_p = new ArrayList<String>();
ArrayList<String> tr_id3 = new ArrayList<String>();
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Req_completed where C_phone = " + phone + " ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String P_fname = rs.getString("P_fname");
        f3.add(P_fname);
        String P_lname = rs.getString("P_lname");
        l3.add(P_lname);
        String P_phone = rs.getString("P_phone");
        p3.add(P_phone);
        String C_phone = rs.getString("C_phone");
        C_p.add(C_phone);
        String service = rs.getString("services");
        c3.add(service);
        String date = rs.getString("days");
        d3.add(date);
        String Service_id = rs.getString("Service_id");
        tr_id3.add(Service_id);
    }
} catch (Exception e) {
       out.print(e);
}

%> 
<!--Background-->
<div id="background">
<!--Container-->
<div class="Head"><h2 style="color:white; text-align:center; position: relative; bottom: 5px;">My Services</h2></div>
<div class="container">
<% for(int i=0;i<C_p.size();i++) {%>
  <div class="sub">

    <table style="width:210px; margin-left:12px;">
      <tr>
          <td style="font-weight: bold; font-size: 20px;"><% out.println(f3.get(i));%> <% out.println(l3.get(i));%></td>
      </tr>
      <tr>
          <td style="color: blue; font-weight: bold; font-size: 16px;"><% out.println(p3.get(i));%></td>
      </tr>
      <tr>
        <td style="font-weight: bold;">Service: <% out.println(c3.get(i));%></td>
    </tr>
      <tr>
          <td style="font-weight: bold;">Date: <% out.println(d3.get(i));%></td>
      </tr>
  </table>
  <label class="service_id">Transaction id: <% out.println(tr_id3.get(i));%> </label>
  <div class="divh10_1">
  <a href="http://localhost:8080/Login_form/Bill.jsp?Service_id='<%=tr_id3.get(i)%>'">   
      <button class="btnh_2">View Bill</button>
  </a>
  </div>
  <div class="divh10_2">
    <a href="">
        <button class="btnh_2">Repeat Request</button>
    </a>
    </div>


  </div>
 <%} %>
</div>

</div>
</div>
</body>
</html>