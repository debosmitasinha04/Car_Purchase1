package servlet;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class BookCarServlet extends HttpServlet {

    /*String jdbcURL = "jdbc:oracle:thin:@localhost:1521:xe";
    String jdbcUsername = "system";
    String jdbcPassword = "manager";*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");

        String message ;

        try {
            // Load Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Connect to Oracle DB
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");

            // Prepare SQL statement
            String sql = "INSERT INTO carbooking (name, email, phone) VALUES (?, ?, ?)";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, phone);

            // Execute update
            int rows = stmt.executeUpdate();
            message = (rows > 0) ? "Booking successful!" : "Booking failed.";

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            message = "Error: " + e.getMessage();
        }

        // Forward message to JSP
        request.setAttribute("message", message);
        RequestDispatcher rd = request.getRequestDispatcher("bookingResult.jsp");
        rd.forward(request, response);
    }
}

