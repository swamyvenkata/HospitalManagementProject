
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
import javax.servlet.http.HttpSession;

import model.Patient;

@WebServlet("/PatientViewServlet")
public class PatientViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uname1 = (String) session.getAttribute("uname1");

		try {

			List<Patient> al = view(uname1);
			PrintWriter pw = response.getWriter();
			String htmlResponse = "<html><table border=1><tr><th>Id</th><th>Name</th><th>age</th><th>address</th><th>date&time</th></tr>";
			for (Patient books : al) {

				htmlResponse += "<tr><td>" + books.getId() + "</td><td>" + books.getName() + "</td><td>"
						+ books.getAge() + "</td><td>" + books.getAddress() + "</td><td>" + books.getLoginDate()
						+ "</td></tr>";

			}
			htmlResponse += "</table></html>";
			pw.println(htmlResponse);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private List<Patient> view(String uname1) {
		List<Patient> al = new ArrayList<Patient>();
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "swamy");
			PreparedStatement ps = con
					.prepareStatement("select ID,NAME,AGE,ADDRESS,DATETIME from patient where name=?");
			ps.setString(1, uname1);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Patient b = new Patient();
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
