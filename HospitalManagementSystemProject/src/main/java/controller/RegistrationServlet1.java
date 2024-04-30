package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet1")
public class RegistrationServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("no"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address");
		String logindate = request.getParameter("logindate");
		logindate = logindate.replace("T", " ") + ":00";
		String password = request.getParameter("password");
		System.out.println("request params " + " " + name + " " + logindate + " " + " " + password);
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String sname = "system";
		String spwd = "swamy";
		String sql = " INSERT INTO patient (id,name, age, address, datetime, password) VALUES (?,?, ?, ?, TO_TIMESTAMP(?, 'YYYY-MM-DD HH24:MI:SS'), ?)";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, sname, spwd);

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setInt(3, age);
			ps.setString(4, address);
			ps.setString(5, logindate);
			ps.setString(6, password);

			int rowsAffected = ps.executeUpdate();
			System.out.println("rowsAffected:" + rowsAffected);
			if (rowsAffected > 0) {
				response.sendRedirect("PatientDetailsServlet");
			} else {
				response.sendRedirect("Registration1.html");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("Registration1.html");
		}
	}
}
