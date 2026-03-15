package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import dao.UsersDAO;

@WebServlet("/signup")
public class signupServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UsersDAO dao = new UsersDAO();
        boolean status = dao.registerUser(name, email, password);

        if (status) {
            response.getWriter().println("Registration Successful ✅");
        } else {
            response.getWriter().println("Registration Failed ❌");
        }
    }
}
