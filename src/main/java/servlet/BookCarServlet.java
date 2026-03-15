package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/bookCar")
public class BookCarServlet extends HttpServlet {

    /*protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String carName = request.getParameter("carName");

        // Send car name to booking.jsp
        request.setAttribute("carName", carName);

        // Forward to booking.jsp
        request.getRequestDispatcher("booking.jsp").forward(request, response);
     // Inside BookCarServlet.java
        //request.getRequestDispatcher("bookingResult.jsp").forward(request, response);
    }*/
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Redirect GET requests to the POST logic so it doesn't crash
        doPost(request, response);
    }

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String userName = request.getParameter("name");
	    String carName = request.getParameter("carName");
	    String variant = request.getParameter("variant");

	    if (userName != null && !userName.isEmpty()) {
	        // Form was submitted -> Go to Result Page
	        request.setAttribute("uName", userName);
	        request.setAttribute("cName", carName);
	        request.setAttribute("vName", variant);
	        request.getRequestDispatcher("bookingResult.jsp").forward(request, response);
	    } else {
	        // Coming from home page -> Show the Form
	        request.setAttribute("carName", carName);
	        request.getRequestDispatcher("booking.jsp").forward(request, response);
	    }
	}
}
