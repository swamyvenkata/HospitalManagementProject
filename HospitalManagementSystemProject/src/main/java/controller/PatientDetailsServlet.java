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

@WebServlet("/PatientDetailsServlet")
public class PatientDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				
				List<Patient> al=view();
				PrintWriter pw = response.getWriter();
				pw.println("<a href='Registration1.html' style='color: green;'>ADD Patients</a>");
				pw.println();
				String htmlResponse = "<html><table border=1><tr><th>Id</th><th>Name</th><th>age</th><th>address</th><th>date&time</th><th>Update</th><th>Delete</th></tr>";
				for(Patient books:al) {
				
					htmlResponse += "<tr><td>"+books.getId()+"</td><td>"+books.getName()+"</td><td>"+books.getAge()+"</td><td>"+books.getAddress()+"</td><td>"+books.getLoginDate()+"</td>";
					htmlResponse+= "<td><a href = 'patientupdate.jsp?no=" + books.getId() + "&name=" +books.getName()+"&age=" +books.getAge() +"&address=" +books.getAddress() +"&logindate=" +books.getLoginDate()  + "' style='color: red;'>Update</td>";
	                htmlResponse+="<td><a href = 'PatientsDeleteServlet?no=" +books.getId()+"' style='color: red;'>Delete</td></tr>";

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
			    PreparedStatement ps=con.prepareStatement("select ID,NAME,AGE,ADDRESS,DATETIME from patient order by id");
			    ResultSet rs=ps.executeQuery();
			    while(rs.next()) {
			    	Patient b=new Patient();
					b.setId(rs.getInt(1));
					b.setName(rs.getString(2));
					b.setAge(rs.getInt(3));
					b.setAddress(rs.getString(4));
					Timestamp timestamp = rs.getTimestamp(5);
					b.setLoginDate(timestamp);
					al.add(b);
			    }
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return al;
		}

	}




