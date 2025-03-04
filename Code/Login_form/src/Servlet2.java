import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Servlet2 extends HttpServlet { 
	private static Connection conn;
	private static PreparedStatement stmt ;
	private static Statement stat;
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@SuppressWarnings("resource")
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
            
String phone=request.getParameter("phone");
String old_password=request.getParameter("old_password");
String new_password=request.getParameter("new_password");
String c_password=request.getParameter("c_password");
try {
	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
     stat = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_SCROLL_SENSITIVE);
     String UserCheck="SELECT Phone FROM Login";
	 String DbUserName="";
	 ResultSet rst=stat.executeQuery(UserCheck);
	 while(rst.next()){
	 DbUserName=rst.getString("Phone");
     if (phone.equals(DbUserName)) {
    	 String Old="SELECT Password FROM Login where Phone= '" + DbUserName + "';";
    	 String DbOld="";
    	 rst=stat.executeQuery(Old);
    	 while(rst.next()){
    		 DbOld=rst.getString("Password");
    		 if (old_password.equals(DbOld)) {
    			 if(new_password.equals(c_password)) {
    			 stat=conn.createStatement();
    		     String display2 = "Update Login set Password = '" + new_password + "', C_Password = '" + c_password + "'  Where Phone = '" + phone + "';";
    		     stat.executeUpdate(display2);
    		     response.sendRedirect("http://localhost:8080/Login_form/index4.html");
    			 }
    			 else {
                	 response.sendRedirect("http://localhost:8080/Login_form/index6.html");
                 }
    		 }
    		 else {
            	 response.sendRedirect("http://localhost:8080/Login_form/index5.html");
             }
    	 }
	 }
     else {
    	 response.sendRedirect("http://localhost:8080/Login_form/index5.html");
     }
	 }
}catch(Exception e1) {
	out.println(e1);
} 
out.close();  
}}  
