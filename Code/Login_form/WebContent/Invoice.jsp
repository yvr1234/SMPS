<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>INVOICE</title>
    <script src="html2pdf.bundle.min.js"></script>

    <script>
      function generatePDF() {
        // Choose the element that our invoice is rendered in.
        const element = document.getElementById("invoice");
        // Choose the element and save the PDF for our user.
        html2pdf()
          .from(element)
          .save();
      }
    </script>
</head>
<style>
        body{
                background:#7b7b7b;
                padding-bottom: 150px;
        }
            .invoice-box {
                    font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
                    background-color: white;
                    height:930px;
                    width:900px;
                    position:relative;
                    left:300px;
                    top:50px;
            }
            .title{
                    font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
                    font-size: 45px;
                    font-weight: bold;
                    line-height: 45px;
                    color: black;
                    position:relative;
                    left:40px;
                    top:45px;
                    
            }
            .title2{
                    font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
                    font-size: 35px;
                    font-weight: lighter;
                    color:blue;
                    line-height: 45px;
                    position:relative;
                    left:570px;
                    top:40px;
          
            }
            label{
                font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
                color:black;
                line-height: 30px;
            }
            .l1{
                position:relative;
                left:440px;
                top:80px;
            }
            .l2{
                position:relative;
                left:640px;
                top:90px;      
            }
            .btns
            {
                background: transparent;
                width: 100px;
                height: 40px;
            }
            .btn{
                font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
                    background-color: white;
                    height:90px;
                    width:855px;
                    position:relative;
                    left:300px;
                    top:50px;
                    padding-left: 45px;
            }

/* table */

table { font-size: 95%; table-layout: fixed; width: 300px; }
table { border-collapse: separate; border-spacing: 2px; }
th, td { border-width: 1px; padding: 0.5em; position: relative; text-align: left; }
th, td { border-radius: 0.25em; border-style: solid; }
th { background: #EEE; border-color: #BBB; }
td { border-color: #DDD; }

/* table meta & balance */

table.meta, table.balance { float: right; width: 36%; }
table.meta:after, table.balance:after { clear: both; content: ""; display: table; }

/* table meta */

table.meta th { width: 40%; }
table.meta td { width: 60%; }

/* table items */

table.inventory { clear: both; margin-left:40px; width: 820px; }
table.inventory th { font-weight: bold; text-align: center; }

table.inventory td:nth-child(1) { width: 26%; }
table.inventory td:nth-child(2) { width: 38%; }
table.inventory td:nth-child(3) { text-align: right; width: 12%; }
table.inventory td:nth-child(4) { text-align: right; width: 12%; }
table.inventory td:nth-child(5) { text-align: right; width: 12%; }

/* table balance */
.balance{
    position:absolute;
    left:450px;
}
table.balance th, table.balance td { width: 50%; }
table.balance td { text-align: left;}

/* aside */

aside h1 { border: none; border-width: 0 0 1px; margin: 0 0 1em; }
aside h1 { border-color: #999; border-bottom-style: solid; }
</style>
<body>
    <% 
String Service_id = request.getParameter("Service_id");
%>
<%!
String fname; 
String lname; 
String phone; 
String city; 
String district; 
String state; 
String address; 
String services; 
String P_fname; 
String P_lname; 
String P_phone;
String Date; 
%>
<%
Connection conn;
PreparedStatement stat;
Statement stmt;
ResultSet rs;
%>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Req_completed where Service_id ='" + Service_id + "'; ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
    	fname = rs.getString("C_fname");
        lname = rs.getString("C_lname");
        phone = rs.getString("C_phone");
        city = rs.getString("C_city");
        district = rs.getString("C_district");
        state = rs.getString("C_state");
        address = rs.getString("C_address");
        services = rs.getString("services");
    	P_fname = rs.getString("P_fname");
        P_lname = rs.getString("P_lname");
        P_phone = rs.getString("P_phone");
        Date = rs.getString("Days");
    }
} catch (Exception e) {
       out.print(e);
}
%>
<div class="invoice-box" id="invoice">
        <label class="title">SPMS</label>
        <label class="title2">INVOICE</label>
        <label class="l1">Date: <%out.print(Date);%></label>
        <br><label class="l2">Transaction Id: <%out.print(Service_id);%></label>
        <br><br><br><br><br><br><br><hr>
        <label style="font-weight:bold; color:white; background-color: blue; padding:10px; position:relative; top:20px; left:35px;">CONSUMER</label>
        <label style="font-weight:bold; color:white; background-color: blue; padding:10px; position:relative; top:20px; left:635px;">PROVIDER</label>
        <div style="width: 400px; margin-left:35px; position:relative; top:40px;">
            <label>Name: <%out.print(fname);%> <%out.print(lname);%></label>
            <br><label>Phone: <%out.print(phone);%></label>
            <br><label>E-mail: sarthakgaribe60@gmail.com</label>   
            <br><label>Site Address: <%out.print(address);%></label> 
            <br><label style="margin-left:100px;"><%out.print(city);%>, <%out.print(district);%></label>             
        </div>
        <div style="width: 400px; position:relative; left:460px; bottom:110px;  text-align: right;">
                <label>Name: <%out.print(P_fname);%> <%out.print(P_lname);%></label>
                <br><label>Phone: <%out.print(P_phone);%></label>
                <br><label>Service: <%out.print(services);%></label>   
        </div>

        <table class="inventory">
            <thead>
                <tr>
                    <th><span contenteditable>Work Type</span></th>
                    <th><span contenteditable>Price</span></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><span contenteditable>Visit</span></td>
                    <td><span>150.00</span><span data-prefix>.Rs</span></td>
                </tr>
                <tr>
                    <td><span contenteditable>Per Hours</span></td>
                    <td><span>400.00</span><span data-prefix>.Rs</span></td>
                </tr>
                <tr>
                    <td><span contenteditable>Non-Working Day</span></td>
                    <td><span>00.00</span><span data-prefix>.Rs</span></td>
                </tr>
                <tr>
                    <td><span contenteditable>Extra Labor</span></td>
                    <td><span>00.00</span><span data-prefix>.Rs</span></td>
                </tr>
                <tr>
                    <td><span contenteditable>Distance > 5km</span></td>
                    <td><span>100.00</span><span data-prefix>.Rs</span></td>
                </tr>
                <tr>
                    <td><span contenteditable>Additional Tool</span></td>
                    <td><span>100.00</span><span data-prefix>.Rs</span></td>
                </tr>
            </tbody>
        </table>
        <table class="balance">
            <tr>
                <th><span contenteditable>Sub Total</span></th>
                <td><span>750.00</span><span data-prefix>.Rs</span></td>
            </tr>
            <tr>
                <th><span contenteditable>Tax</span></th>
                <td><span contenteditable>50.00</span><span data-prefix>.Rs</span></td>
            </tr>
            <tr>
                <th><span contenteditable>Total</span></th>
                <td><span>800.00</span><span data-prefix>.Rs</span></td>
            </tr>
        </table>
        <label style="font-size: 20px; position:relative; left:300px; top:130px;">Thank You For Choosing SPMS!!</label>
</div>
<div class="btn">
    <button class="btns" onclick="generatePDF()">Print</button>
    <a href="http://localhost:8080/Login_form/Pro_homepage.jsp?phone=<%=P_phone %>&user_type=Provider">
    <button class="btns">Home</button>
    </a>
</div>
</body>
</html>