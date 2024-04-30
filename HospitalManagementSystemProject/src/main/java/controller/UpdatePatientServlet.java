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

@WebServlet("/UpdatePatientServlet")
public class UpdatePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String JDBC_USER = "system";
	private static final String JDBC_PASSWORD = "swamy";
	private static final String UPDATE_QUERY = "UPDATE patient SET name=?, age=?, address=?, datetime=TO_TIMESTAMP(?, 'YYYY-MM-DD HH24:MI:SS'),password=? WHERE id=?";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("no");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address");
		String logindate = request.getParameter("logindate");
		logindate = logindate.replace("T", " ") + ":00";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD)) {
				try (PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_QUERY)) {
					preparedStatement.setString(1, name);
					preparedStatement.setInt(2, age);
					preparedStatement.setString(3, address);
					preparedStatement.setString(4, logindate);
					preparedStatement.setString(5, name);
					preparedStatement.setString(6, id);
					int rowsAffected = preparedStatement.executeUpdate();

					if (rowsAffected > 0) {
						out.println("<h1>Patient Details Updated Successfully</h1>");
						response.sendRedirect("PatientDetailsServlet");

					} else {
						out.println("<h1>No records updated</h1>");
						response.sendRedirect("patientupdate.jsp");

					}
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			out.println("<h1>Error: " + e.getMessage() + "</h1>");
			response.sendRedirect("patientupdate.jsp");
		}
	}
}
