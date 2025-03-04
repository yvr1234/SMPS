import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Sending_req extends HttpServlet { 
	private static Connection conn;
	private static PreparedStatement stmt ;
	private static Statement stat ;
    private static ResultSet rs;
	private static String C_PhoneNo;
	private static String P_phone;
	private static String fname;
	private static String lname;
	private static String city; 
	private static String district; 
	private static String state; 
	private static String address; 
	private static String P_fname; 
	private static String P_lname; 
	private static String P_city; 
	private static String P_district; 
	private static String P_state; 
	private static String P_address; 
	private static String services; 
	private static String Service_id;
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
public void doGet(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {              
C_PhoneNo=request.getParameter("C_PhoneNo");
P_phone=request.getParameter("P_phone");
Service_id=request.getParameter("Service_id");
PrintWriter out = response.getWriter();
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stat = conn.createStatement();
    String display = "SELECT * FROM Con_registration where phone = " + C_PhoneNo + " ";
    rs = stat.executeQuery(display);
    while (rs.next()) {
        fname = rs.getString("fname");
        lname = rs.getString("lname");
        city = rs.getString("city");
        district = rs.getString("district");
        state = rs.getString("state");
        address = rs.getString("address");
    }
} catch (Exception e) {
       out.print(e);
}
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stat = conn.createStatement();
    String display2 = "SELECT * FROM Pro_registration where phone = " + P_phone + " ";
    rs = stat.executeQuery(display2);
    while (rs.next()) {
        P_fname = rs.getString("fname");
        P_lname = rs.getString("lname");
        P_city = rs.getString("city");
        P_district = rs.getString("district");
        P_state = rs.getString("state");
        P_address = rs.getString("address");
        services = rs.getString("services");
    }
} catch (Exception e) {
       out.print(e);
}
try {	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
		stmt = conn.prepareStatement("INSERT INTO Requests Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW(),NOW(),?,?)", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		stmt.setString(1, C_PhoneNo); 
		stmt.setString(2, fname);
		stmt.setString(3, lname);
		stmt.setString(4, city);
		stmt.setString(5, district);
		stmt.setString(6, state); 
		stmt.setString(7, address);
		stmt.setString(8, P_phone); 
		stmt.setString(9, P_fname);
		stmt.setString(10, P_lname);
		stmt.setString(11, P_city);
		stmt.setString(12, P_district);
		stmt.setString(13, P_state); 
		stmt.setString(14, P_address);
		stmt.setString(15, services);
		stmt.setString(16, Service_id);
		stmt.executeUpdate();
		response.sendRedirect("http://localhost:8080/Login_form/Request_Send.jsp?phone=" + C_PhoneNo); 
	}
	catch(SQLException e1){
	    if(e1.getErrorCode() == 1062 ){
	    	response.sendRedirect("http://localhost:8080/Sample2/Primarykey_Error.jsp");  
	    }
	}
}
	catch(Exception e1) {
		out.println(e1);
	} 

}
}  
