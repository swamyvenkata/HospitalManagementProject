package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DoctorServlet")
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static final String JDBC_USER = "system";
	private static final String JDBC_PASSWORD = "swamy";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<Integer, String> map = getValues();

		System.out.println("hhsgdjsgdhghsghgdsh" + map);
		request.setAttribute("Object", map);
		request.getRequestDispatcher("fetch1.jsp").forward(request, response);

	}

	private Map<Integer, String> getValues() {
		Map<Integer, String> mp = new HashMap<>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
					PreparedStatement statement = conn.prepareStatement("SELECT CIRCD, CIRNAME FROM spdcl2");
					ResultSet resultSet = statement.executeQuery()) {

				while (resultSet.next()) {
					int cIRCD = resultSet.getInt(1);
					String cIRNAME = resultSet.getString(2);
					mp.put(cIRCD, cIRNAME);
				}
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return mp;
	}
}
