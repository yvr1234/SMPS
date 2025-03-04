import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
@SuppressWarnings("serial")
public class Plumbers extends HttpServlet { 
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
String C_PhoneNo=request.getParameter("C_PhoneNo");
try {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
	    stmt = conn.createStatement();
	    String display = "SELECT * FROM Pro_registration where phone = " + PhoneNo + " ";
	    rs = stmt.executeQuery(display);
	    while (rs.next()) {
	        String fname = rs.getString("fname");
	        String lname = rs.getString("lname"); 
	        String gender = rs.getString("gender");
	        String email = rs.getString("email");
	        String phone = rs.getString("phone");
	        String city = rs.getString("city");
	        String district = rs.getString("district");
	        String state = rs.getString("state");
	        String pincode = rs.getString("pincode");
	        String address = rs.getString("address");
	        String services= rs.getString("services");
	        String qualification= rs.getString("qualification");
	        String work= rs.getString("work");
	        String charge1= rs.getString("charge1");
	        String charge2= rs.getString("charge2");
	        String charge3= rs.getString("charge3");
	        String charge4= rs.getString("charge4");
	        String charge5= rs.getString("charge5");
	        String charge6= rs.getString("charge6");
	        
	        request.setAttribute("fname", fname);
	        request.setAttribute("lname", lname);
	        request.setAttribute("gender", gender);
	        request.setAttribute("email", email);
	        request.setAttribute("phone", phone);
	        request.setAttribute("city", city);
	        request.setAttribute("district", district);
	        request.setAttribute("state", state);
	        request.setAttribute("pincode", pincode);
	        request.setAttribute("address", address);
	        request.setAttribute("services", services);
	        request.setAttribute("qualification", qualification);
	        request.setAttribute("work", work);
	        request.setAttribute("charge1", charge1);
	        request.setAttribute("charge2", charge2);
	        request.setAttribute("charge3", charge3);
	        request.setAttribute("charge4", charge4);
	        request.setAttribute("charge5", charge5);
	        request.setAttribute("charge6", charge6);
	        request.setAttribute("C_PhoneNo", C_PhoneNo);
	        request.getRequestDispatcher("/Plumber_Profile.jsp").forward(request, response);
	    }
	} catch (Exception e) {
	       out.print(e);
	}
	out.close();  	
}

}


