package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PatientsDeleteServlet")
public class PatientsDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String result = "";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pId = request.getParameter("no");
		try {
			result = delete(pId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		if (result.equalsIgnoreCase("SUCCESFULLY VALUES DELETED")) {
			out.println("Deleted successfully");
			RequestDispatcher rd = request.getRequestDispatcher("PatientDetailsServlet");
			rd.forward(request, response);
		} else {
			out.println("It's Faild");
			RequestDispatcher rd = request.getRequestDispatcher("adminwelcome.jsp");
			rd.forward(request, response);
		}
	}

	private String delete(String pId) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "system";
		String pwd = "swamy";
		String qwery = "delete from patient where id=?";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, pwd);
			ps = con.prepareStatement(qwery);
			ps.setString(1, pId);
			rs = ps.executeQuery();
			if (rs.next()) {
				return "SUCCESFULLY VALUES DELETED";
			} else {
				return "FAILED";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "Error during authentication";
		} finally {
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (con != null)
					con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
