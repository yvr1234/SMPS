import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Servlet1 extends HttpServlet { 
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
String password=request.getParameter("password");
String user_type=request.getParameter("user_type");
if(user_type.equals("Provider")) {
	try {
		 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
	     stat = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_SCROLL_SENSITIVE);
	     String UserCheck="SELECT Phone FROM Pro_registration";
		 String DbUserName="";
		 ResultSet rst=stat.executeQuery(UserCheck);
		 while(rst.next()){
		 DbUserName=rst.getString("Phone");
	     if (phone.equals(DbUserName)) {
	    	 String PassCheck="SELECT Password FROM Pro_registration where Phone= '" + DbUserName + "';" ;
	    	 String DbPassword="";
	    	 rst=stat.executeQuery(PassCheck);
	    	 while(rst.next()){
	    		 DbPassword=rst.getString("Password");
	    		 if (password.equals(DbPassword)) {
	    			 try {
	    					Class.forName("com.mysql.cj.jdbc.Driver");
	    					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
	    					stmt = conn.prepareStatement("INSERT INTO login Values(?,?,NOW())", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
	    					stmt.setString(1, phone); 
	    					stmt.setString(2, user_type);
	    					stmt.executeUpdate(); 
	    				}
	    				catch(Exception e1){
	    					out.print(e1);
	    				}
	    			 request.getRequestDispatcher("/Pro_homepage.jsp").forward(request, response);
	    		 }
	    		 else {
	    			 response.sendRedirect("http://localhost:8080/Login_form/index6.jsp");
	    		 }
	    	 }
	     }
	     /*else {
	    	 request.getRequestDispatcher("/index5.jsp").forward(request, response);
	     }*/
		 }
	}catch(Exception e1) {
		out.println(e1);
	} 

}
else {
try {
	 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
     stat = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
     String UserCheck="SELECT Phone FROM Con_registration";
	 String DbUserName="";
	 ResultSet rst=stat.executeQuery(UserCheck);
	 while(rst.next()){
	 DbUserName=rst.getString("Phone");
     if (phone.equals(DbUserName)) {
    	 String PassCheck="SELECT Password FROM Con_registration where Phone= '" + DbUserName + "';" ;
    	 String DbPassword="";
    	 rst=stat.executeQuery(PassCheck);
    	 while(rst.next()){
    		 DbPassword=rst.getString("Password");
    		 if (password.equals(DbPassword)) {
    			 try {
 					Class.forName("com.mysql.cj.jdbc.Driver");
 					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
 					stmt = conn.prepareStatement("INSERT INTO login Values(?,?,NOW())", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
 					stmt.setString(1, phone); 
 					stmt.setString(2, user_type);
 					stmt.executeUpdate(); 
 				}
 				catch(Exception e1){
 					out.print(e1);
 				}
    			 request.getRequestDispatcher("/homepage.jsp").forward(request, response);
    		 }
    		 else {
    			 response.sendRedirect("http://localhost:8080/Login_form/index6.jsp");
    		 }
    	 }
     }
     /*else {
    	 request.getRequestDispatcher("/index5.jsp").forward(request, response);
     }*/
    
	 }
	 
	 
}catch(Exception e1) {
	out.println(e1);
} 
}

out.close();  
}}  
