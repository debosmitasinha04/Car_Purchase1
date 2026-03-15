package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/bookCar")
public class BookCarServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String carName = request.getParameter("carName");

        // Send car name to booking.jsp
        request.setAttribute("carName", carName);

        // Forward to booking.jsp
        request.getRequestDispatcher("booking.jsp").forward(request, response);
    }
}
