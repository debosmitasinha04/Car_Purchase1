package servlet;
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

@WebServlet("/ForgotPassword")
public class forgotPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String newPassword = request.getParameter("newPassword");

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");

            // Check if email exists
            PreparedStatement ps = con.prepareStatement("SELECT * FROM forgotpassword WHERE email=?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Update password
                PreparedStatement ps2 = con.prepareStatement("UPDATE forgotpassword SET password=? WHERE email=?");
                ps2.setString(1, newPassword);
                ps2.setString(2, email);
                int i = ps2.executeUpdate();

                if (i > 0) {
                    out.println("<h3>Password updated successfully. <a href='login.jsp'>Login</a></h3>");
                } else {
                    out.println("<h3>Error updating password.</h3>");
                }
            } else {
                out.println("<h3>Email not found.</h3>");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}

