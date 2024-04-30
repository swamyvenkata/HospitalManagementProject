package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String username = request.getParameter("aName");
		String password = request.getParameter("aPwd");
		HttpSession session = request.getSession();
		session.setAttribute("uname1", username);

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "system", "swamy");

			PreparedStatement adminps = con.prepareStatement("SELECT * FROM admin WHERE ANAME=? AND APWD=?");
			adminps.setString(1, username);
			adminps.setString(2, password);
			ResultSet adminResult = adminps.executeQuery();
			boolean ifAdmin = adminResult.next();

			PreparedStatement studentps = con
					.prepareStatement("SELECT NAME,PASSWORD FROM patient WHERE NAME=? AND PASSWORD=?");
			studentps.setString(1, username);
			studentps.setString(2, password);
			ResultSet studentResult = studentps.executeQuery();
			boolean ifStudent = studentResult.next();

			if (ifAdmin) {
				request.getRequestDispatcher("adminwelcome.jsp").forward(request, response);
			} else if (ifStudent) {
				request.getRequestDispatcher("patientwelcome.jsp").forward(request, response);
			} else {
				out.println("Invalid username or password");
			}

			con.close();
		} catch (Exception e) {
			out.println(e);
		}
	}
}
