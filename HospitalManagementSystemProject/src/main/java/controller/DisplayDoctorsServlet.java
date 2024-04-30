package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Patient;

@WebServlet("/DisplayDoctorsServlet")
public class DisplayDoctorsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			List<Patient> al = view();
			PrintWriter pw = response.getWriter();
			String htmlResponse = "<html><head><title>Display Doctors</title>";
			htmlResponse += "<style>";
			htmlResponse += "table {border-collapse: collapse; width: 100%;}";
			htmlResponse += "th, td {border: 1px solid #dddddd; text-align: left; padding: 8px;}";
			htmlResponse += "th {background-color: #f2f2f2;}";
			htmlResponse += "</style>";
			htmlResponse += "</head><body>";
			htmlResponse += "<h2>Doctors List</h2>";
			htmlResponse += "<table border=1><tr><th>Doctor Name</th><th>Specialization</th><th>Availability</th></tr>";
			for (Patient books : al) {

				htmlResponse += "<tr><td>" + books.getDoctor() + "</td><td>" + books.getDisease() + "</td><td>"
						+ books.getAvailability() + "</td>";

			}
			htmlResponse += "</table></html>";
			pw.println(htmlResponse);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	private List<Patient> view() {
		List<Patient> al = new ArrayList<Patient>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "swamy");
			PreparedStatement ps = con.prepareStatement("select DOCTOR,DISEASE,AVAILABILITY from availability");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Patient b = new Patient();
				b.setDoctor(rs.getString(1));
				b.setDisease(rs.getString(2));
				b.setAvailability(rs.getString(3));

				al.add(b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return al;
	}

}
