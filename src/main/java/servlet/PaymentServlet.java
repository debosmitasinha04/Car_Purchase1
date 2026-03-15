package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/PaymentServlet") // This must match the <form action="..."> in your JSP
public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Capture the data from payment.jsp
        String cardName = request.getParameter("cardName");
        // We aren't processing real money, just simulating a successful bank response
        
        // 2. Set a success message for the next page
        request.setAttribute("payer", cardName);
        
        // 3. Send the user to a success page
        //request.getRequestDispatcher("paymentSuccess.jsp").forward(request, response);
     // Inside PaymentServlet.java, change this line:
        request.getRequestDispatcher("PaymentSuccess.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // This prevents the 405 error if the user tries to access the URL directly
        doPost(request, response);
    }
}