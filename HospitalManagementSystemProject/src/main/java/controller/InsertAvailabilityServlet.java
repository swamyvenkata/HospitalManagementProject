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
import javax.servlet.http.HttpSession;

@WebServlet("/InsertAvailabilityServlet")
public class InsertAvailabilityServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String doctor = request.getParameter("doctors");
       // String disease = request.getParameter("diseases");
       // String availability = request.getParameter("availability");
        HttpSession session = request.getSession();
        String username1 = (String) session.getAttribute("uname1");
        System.out.println("request parameters"+doctor+""+username1);

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            String url = "jdbc:oracle:thin:@localhost:1521:orcl";
            String username = "system";
            String password = "swamy";
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
		   conn = DriverManager.getConnection(url, username, password);

            String sql = "INSERT INTO booking (PATIENT_NAME, DOCTOR_NAME, TIMESTAMP) VALUES (?, ?, CURRENT_TIMESTAMP)";
           
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username1);
            pstmt.setString(2, doctor);
            
           
           // pstmt.setString(3, availability);

            int rowsInserted = pstmt.executeUpdate();
            System.out.println("values getting");
            if (rowsInserted > 0) {
                out.println("<p>Availability inserted successfully!</p>");
                response.sendRedirect("patientwelcome.jsp");
            } else {
                out.println("<p>Failed to insert availability.</p>");
                response.sendRedirect("BookSlot.jsp");
            }
        } catch (ClassNotFoundException | SQLException e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
            response.sendRedirect("BookSlot.jsp");
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                out.println("<p>Error closing resources: " + e.getMessage() + "</p>");
            }
        }
    }
}
