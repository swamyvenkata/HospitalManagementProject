package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddDoctorsServlet")
public class AddDoctorsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String JDBC_USER = "system";
	private static final String JDBC_PASSWORD = "swamy";
	private static final String INSERT_QUERY = "INSERT INTO availability (DOCTOR, DISEASE, AVAILABILITY) VALUES (?, ?, ?)";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String doctorName = request.getParameter("dname");
		String diseaseSpecialization = request.getParameter("diseases");
		String availability = request.getParameter("availability");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
				try (PreparedStatement preparedStatement = connection.prepareStatement(INSERT_QUERY)) {
					preparedStatement.setString(1, doctorName);
					preparedStatement.setString(2, diseaseSpecialization);
					preparedStatement.setString(3, availability);
					int rowsAffected = preparedStatement.executeUpdate();
					if (rowsAffected > 0) {
						out.println("<h1>Doctor Details Added Successfully</h1>");
						response.sendRedirect("adminwelcome.jsp");

					} else {
						out.println("<h1>No records inserted</h1>");
						response.sendRedirect("addDoctorPage.jsp");

					}
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			out.println("<h1>Error: " + e.getMessage() + "</h1>");
			response.sendRedirect("addDoctorPage.jsp");

		}
	}
}
