import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Admin extends HttpServlet { 
	private static Connection conn;
	private static PreparedStatement stmt ;
	private static Statement stat;
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
            
String phone=request.getParameter("phone");
String password=request.getParameter("password");
	try {
		 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
	     stat = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.TYPE_SCROLL_SENSITIVE);
	     String UserCheck="SELECT phone FROM Admins";
		 String DbUserName="";
		 ResultSet rst=stat.executeQuery(UserCheck);
		 while(rst.next()){
		 DbUserName=rst.getString("Phone");
	     if (phone.equals(DbUserName)) {
	    	 String PassCheck="SELECT password FROM Admins where phone= '" + DbUserName + "';" ;
	    	 String DbPassword="";
	    	 rst=stat.executeQuery(PassCheck);
	    	 while(rst.next()){
	    		 DbPassword=rst.getString("Password");
	    		 if (password.equals(DbPassword)) {
	    			 request.getRequestDispatcher("/Admin.jsp").forward(request, response);
	    		 }
	    		 else {
	    			 response.sendRedirect("http://localhost:8080/Login_form/index6.jsp");
	    		 }
	    	 }
	     }
	     else {
	    	 request.getRequestDispatcher("/Soory.jsp").forward(request, response);
	     }
		 }
	}catch(Exception e1) {
		out.println(e1);
	} 
out.close();  
}}  
