package servlet;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class PaymentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Collect form data
        String cardName = request.getParameter("cardName");
        String cardNumber = request.getParameter("cardNumber");
        String expiry = request.getParameter("expiry");
        String cvv = request.getParameter("cvv");

        try {
            // Load Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Connect to Oracle DB
            Connection con = DriverManager.getConnection(
                "jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");

            // SQL insert statement
            String sql = "INSERT INTO payment (cardName, cardNumber, expiry, cvv) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            // Set parameters (1 to 5)
            ps.setString(1, cardName);
            ps.setString(2, cardNumber);
            ps.setString(3, expiry);
            ps.setString(4, cvv);

            // Execute and close
            int rows = ps.executeUpdate();
            con.close();

            // Set message based on result
            if (rows > 0) {
                request.setAttribute("message", "Payment Successful! Thank you for booking.");
            } else {
                request.setAttribute("message", "Payment failed. Please try again.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("message", "Error processing payment: " + e.getMessage());
        }

        // Forward to confirmation page
        RequestDispatcher rd = request.getRequestDispatcher("PaymentSuccess.jsp");
        rd.forward(request, response);
    }
}
