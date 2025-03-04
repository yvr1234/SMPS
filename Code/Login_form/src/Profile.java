import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Profile extends HttpServlet { 
	private static Connection conn;
    private static PreparedStatement stat;
    private static Statement stmt;
    private static ResultSet rs;
    private static String PhoneNo, UserType;

public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
PhoneNo=request.getParameter("phone");
UserType=request.getParameter("user_type");

if(UserType.equals("Consumer")) {
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stmt = conn.createStatement();
    String display = "SELECT * FROM Con_registration where phone = " + PhoneNo + " ";
    rs = stmt.executeQuery(display);
    while (rs.next()) {
        String fname = rs.getString("fname");
        String lname = rs.getString("lname");
        String dob = rs.getString("dob");
        String gender = rs.getString("gender");
        String email = rs.getString("email");
        String phone = rs.getString("phone");
        String user_type = rs.getString("user_type");
        String city = rs.getString("city");
        String district = rs.getString("district");
        String state = rs.getString("state");
        String pincode = rs.getString("pincode");
        String address = rs.getString("address");
        
        request.setAttribute("fname", fname);
        request.setAttribute("lname", lname);
        request.setAttribute("dob", dob);
        request.setAttribute("gender", gender);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("user_type", user_type);
        request.setAttribute("city", city);
        request.setAttribute("district", district);
        request.setAttribute("state", state);
        request.setAttribute("pincode", pincode);
        request.setAttribute("address", address);
        request.getRequestDispatcher("/Profile.jsp").forward(request, response);
    }
} catch (Exception e) {
       out.print(e);
}
out.close();
}
else {
	try {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
	    stmt = conn.createStatement();
	    String display = "SELECT * FROM Pro_registration where phone = " + PhoneNo + " ";
	    rs = stmt.executeQuery(display);
	    while (rs.next()) {
	        String fname = rs.getString("fname");
	        String lname = rs.getString("lname");
	        String dob = rs.getString("dob");
	        String gender = rs.getString("gender");
	        String email = rs.getString("email");
	        String phone = rs.getString("phone");
	        String user_type = rs.getString("user_type");
	        String city = rs.getString("city");
	        String district = rs.getString("district");
	        String state = rs.getString("state");
	        String pincode = rs.getString("pincode");
	        String address = rs.getString("address");
	        
	        request.setAttribute("fname", fname);
	        request.setAttribute("lname", lname);
	        request.setAttribute("dob", dob);
	        request.setAttribute("gender", gender);
	        request.setAttribute("email", email);
	        request.setAttribute("phone", phone);
	        request.setAttribute("user_type", user_type);
	        request.setAttribute("city", city);
	        request.setAttribute("district", district);
	        request.setAttribute("state", state);
	        request.setAttribute("pincode", pincode);
	        request.setAttribute("address", address);
	        request.getRequestDispatcher("/Profile.jsp").forward(request, response);
	    }
	} catch (Exception e) {
	       out.print(e);
	}
	out.close();  	
}

}
}

