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
  width:1115px;
  height:60px;
  background-color:black;
  border-radius: 10px;
}
.sub{
  position:absolute;
  left:200px;
  top:120px;
  height:500px;
  width:1100px;
  background-color: white;
  overflow:auto;
  padding: 8px;
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
/* table */

table { font-size: 95%; table-layout:auto; width: 600px; }
table { border-collapse: separate; border-spacing: 2px; }
th, td { border-width: 1px; padding: 0.5em; position: relative; text-align: left; }
th, td { border-radius: 0.25em; border-style: solid; }
th { background: #EEE; border-color: #BBB; }
td { border-color: #DDD; }

table.inventory { clear: both; margin:2px; width: 820px; }
table.inventory th { font-weight: bold; text-align: center; width: 10px;}

table.inventory td:nth-child(1) { width: 26%; }
table.inventory td:nth-child(2) { width: 38%; }
table.inventory td:nth-child(3) { text-align: right; width: 12%; }
table.inventory td:nth-child(4) { text-align: right; width: 12%; }
table.inventory td:nth-child(5) { text-align: right; width: 12%; }

/* aside */

aside h1 { border: none; border-width: 0 0 1px; margin: 0 0 1em; }
aside h1 { border-color: #999; border-bottom-style: solid; }
</style>
<body> 
<%
Connection conn;
PreparedStatement stat;
Statement stmt;
ResultSet rs;
ArrayList<String> a = new ArrayList<String>();
ArrayList<String> b = new ArrayList<String>();
ArrayList<String> c = new ArrayList<String>();
ArrayList<String> d = new ArrayList<String>();
ArrayList<String> e = new ArrayList<String>();
ArrayList<String> f = new ArrayList<String>();
ArrayList<String> g = new ArrayList<String>();
ArrayList<String> h = new ArrayList<String>();
ArrayList<String> n = new ArrayList<String>();
ArrayList<String> j = new ArrayList<String>();
ArrayList<String> k = new ArrayList<String>();
ArrayList<String> l = new ArrayList<String>();
ArrayList<String> m = new ArrayList<String>();
ArrayList<String> o = new ArrayList<String>();
ArrayList<String> p = new ArrayList<String>();
ArrayList<String> q = new ArrayList<String>();
ArrayList<String> r = new ArrayList<String>();
ArrayList<String> s = new ArrayList<String>();
%>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "select * from Req_completed";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String C_phone = rs.getString("C_phone");
        a.add(C_phone);
        String C_fname = rs.getString("C_fname");
        b.add(C_fname);
        String C_lname = rs.getString("C_lname");
        c.add(C_lname);
        String C_city = rs.getString("C_city");
        d.add(C_city);
        String C_district = rs.getString("C_district");
        e.add(C_district);
        String C_state = rs.getString("C_state");
        f.add(C_state);
        String C_address = rs.getString("C_address");
        g.add(C_address);
        String P_phone = rs.getString("P_phone");
        h.add(P_phone);
        String P_fname = rs.getString("P_fname");
        n.add(P_fname);
        String P_lname = rs.getString("P_lname");
        j.add(P_lname);
        String P_city = rs.getString("P_city");
        k.add(P_city);
        String P_district = rs.getString("P_district");
        l.add(P_district);
        String P_state = rs.getString("P_state");
        m.add(P_state);
        String P_address = rs.getString("P_address");
        o.add(P_address);
        String days = rs.getString("days");
        p.add(days);
        String times = rs.getString("times");
        q.add(times);
        String services = rs.getString("services");
        r.add(services);
        String Service_id = rs.getString("Service_id");
        s.add(Service_id);
    }
} catch (Exception e1) {
       out.print(e1);
}%>
<!--Background-->
<div id="background">
<!--Container-->
<div class="Head"><h2 style="color:white; text-align:center; position: relative; bottom: 5px;">Accomplished Services in SPMS</h2></div>
<div class="sub">
<table class="inventory">
  <thead>
      <tr>
          <th><span>Consumer Phone</span></th>
          <th><span>Con. First Name</span></th>
          <th><span>Con. Last Name</span></th>
          <th><span>Con. City</span></th>
          <th><span>Con. District</span></th>
          <th><span>Con. state</span></th>
          <th><span>Con. Address</span></th>
          <th><span>Provider Phone</span></th>
          <th><span>Pro. First Name</span></th>
          <th><span>Pro. Last Name</span></th>
          <th><span>Pro. City</span></th>
          <th><span>Pro. District</span></th>
          <th><span>Pro. State</span></th>
          <th><span>Pro. Address</span></th>
          <th><span>Date</span></th>
          <th><span>Time</span></th>
          <th><span>Service</span></th>
          <th><span>Transaction Id</span></th>
      </tr>
  </thead>
  <tbody>
  <% for(int i=0;i<f.size();i++) {%>
      <tr>
          <td><span><% out.println(a.get(i));%></span></td>
          <td><span><% out.println(b.get(i));%></span></td>
          <td><span><% out.println(c.get(i));%></span></td>
          <td><span><% out.println(d.get(i));%></span></td>
          <td><span><% out.println(e.get(i));%></span></td>
          <td><span><% out.println(f.get(i));%></span></td>
          <td><span><% out.println(g.get(i));%></span></td>
          <td><span><% out.println(h.get(i));%></span></td>
          <td><span><% out.println(n.get(i));%></span></td>
          <td><span><% out.println(j.get(i));%></span></td>
          <td><span><% out.println(k.get(i));%></span></td>
          <td><span><% out.println(l.get(i));%></span></td>
          <td><span><% out.println(m.get(i));%></span></td>
          <td><span><% out.println(o.get(i));%></span></td>
          <td><span><% out.println(p.get(i));%></span></td>
          <td><span><% out.println(q.get(i));%></span></td>
          <td><span><% out.println(r.get(i));%></span></td>
          <td><span><% out.println(s.get(i));%></span></td>
      </tr>
      <%}%>
  </tbody>
</table>        
</div>
</div>
</div>
</body>
</html>