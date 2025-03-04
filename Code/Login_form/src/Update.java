import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Update extends HttpServlet { 
	   private static Connection conn;
	   private static PreparedStatement stat;
	   private static Statement stmt;
	   private static ResultSet rs;
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
            
String a=request.getParameter("fname");
String b=request.getParameter("lname");
String c=request.getParameter("dob");
String d=request.getParameter("gender");
String e=request.getParameter("email");
String f=request.getParameter("phone");
String g=request.getParameter("user_type");
String h=request.getParameter("city");
String i=request.getParameter("district");
String j=request.getParameter("state");
String k=request.getParameter("pincode");
String l=request.getParameter("address");
try {
     Class.forName("com.mysql.cj.jdbc.Driver");
     conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
     stmt=conn.createStatement();
     String display2 = "Update Con_registration set fname = '" + a + "', lname='" + b + "', dob='" + c + "', gender='" + d + "', email='" + e + "', phone='" + f + "', city='" + h + "',district='" + i + "', state='" + j + "', pincode='" + k + "', address='" + l + "' Where phone = '" + f + "';";
     String display1 = "Update Pro_registration set fname = '" + a + "', lname='" + b + "', dob='" + c + "', gender='" + d + "', email='" + e + "', phone='" + f + "', city='" + h + "',district='" + i + "', state='" + j + "', pincode='" + k + "', address='" + l + "' Where phone = '" + f + "';";
     if(g=="Consumer") {
     stmt.executeUpdate(display2);
     }
     else {
     stmt.executeUpdate(display1);
     }
     response.sendRedirect("http://localhost:8080/Login_form/Update_Successfull.html");
}catch(Exception e1) {
	out.println(e1);
} 
out.close();  
}}  
