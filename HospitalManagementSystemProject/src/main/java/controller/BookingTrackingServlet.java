package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Patient;

@WebServlet("/BookingTrackingServlet")
public class BookingTrackingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			List<Patient> al=view();
			PrintWriter pw = response.getWriter();
			String htmlResponse = "<html><table border=1><tr><th>Booking_Id</th><th>PATIENT_NAME</th><th>DOCTOR_NAME</th><th>BookingDate</th></tr>";
			for(Patient books:al) {
			
				htmlResponse += "<tr><td>"+books.getBid()+"</td><td>"+books.getName()+"</td><td>"+books.getDoctor()+"</td><td>"+books.getLoginDate()+"</td></tr>";
			}
			htmlResponse +="</table></html>";
			pw.println(htmlResponse);
			
			
	
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	
	
	}


	private List<Patient> view() {
		List<Patient> al=new ArrayList<Patient>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "swamy");
		    PreparedStatement ps=con.prepareStatement("select * from booking order by bid");
		    ResultSet rs=ps.executeQuery();
		    while(rs.next()) {
		    	Patient b=new Patient();
				b.setBid(rs.getInt(1));
				b.setName(rs.getString(2));
				b.setDoctor(rs.getString(3));
				
				Timestamp timestamp = rs.getTimestamp(4);
				b.setLoginDate(timestamp);
				al.add(b);
		    }
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return al;
	}

}