import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;  
import javax.servlet.http.*;  
  
public class Service_completed extends HttpServlet { 
	private static Connection conn;
	private static PreparedStatement stmt ;
	private static Statement stat ;
    private static ResultSet rs;
	private static String C_PhoneNo;
	private static String P_phone;
	private static String C_fname;
	private static String C_lname;
	private static String C_city; 
	private static String C_district; 
	private static String C_state; 
	private static String C_address; 
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
Service_id=request.getParameter("Service_id");
  
PrintWriter out = response.getWriter();  
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stat = conn.createStatement();
    String display = "SELECT * FROM Req_accepted where Service_id = '" + Service_id + "'; ";
    rs = stat.executeQuery(display);
    while (rs.next()) {
    	C_PhoneNo= rs.getString("C_phone");
    	C_fname = rs.getString("C_fname");
    	C_lname = rs.getString("C_lname");
    	C_city = rs.getString("C_city");
    	C_district = rs.getString("C_district");
    	C_state = rs.getString("C_state");
    	C_address = rs.getString("C_address");
    	P_phone= rs.getString("P_phone");
        P_fname = rs.getString("P_fname");
        P_lname = rs.getString("P_lname");
        P_city = rs.getString("P_city");
        P_district = rs.getString("P_district");
        P_state = rs.getString("P_state");
        P_address = rs.getString("P_address");
        services = rs.getString("services");
    }
} catch (Exception e) {
       out.print(e);
}
try {	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
		stmt = conn.prepareStatement("INSERT INTO Req_completed Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW(),NOW(),?,?)", ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		stmt.setString(1, C_PhoneNo); 
		stmt.setString(2, C_fname);
		stmt.setString(3, C_lname);
		stmt.setString(4, C_city);
		stmt.setString(5, C_district);
		stmt.setString(6, C_state); 
		stmt.setString(7, C_address);
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
		response.sendRedirect("http://localhost:8080/Login_form/Bill.jsp?Service_id= '"+ Service_id +"'"); 
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

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/SPMS", "root", "root");
    stat = conn.createStatement();
    String display = "Delete FROM Req_accepted where Service_id = '" + Service_id + "'; ";
    stat.executeUpdate(display);
} catch (Exception e) {
       out.print(e);
}

}
}  
