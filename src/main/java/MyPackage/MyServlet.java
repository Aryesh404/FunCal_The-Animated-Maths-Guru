package MyPackage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private String[] jokes = {
            "Why do Java developers wear glasses? Because they don't C#!",
            "I told my computer I needed a break, and now it won't stop sending me Kit Kat bars.",
            "Why don't programmers like nature? It has too many bugs.",
            "How many programmers does it take to change a light bulb? None, it's a hardware problem.",
            "Programming is 10% writing code and 90% understanding why it’s not working",
            "Programmers dont need money they need advice"
            // Add more jokes here
    };

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	try {

        String str1 = request.getParameter("num1");
        String str2 = request.getParameter("num2");
        String str3 = request.getParameter("bt1");

        double a = Double.parseDouble(str1);
        double b = Double.parseDouble(str2);
        double ans = 0;

        switch (str3) {
            case "1":
                ans = a + b;
                break;
            case "2":
                ans = a - b;
                break;
            case "3":
                ans = a * b;
                break;
            case "4":
                ans = a / b;
                break;
            case "5": // Square Root
                ans = Math.sqrt(a);
                break;
            case "6": // Power
                ans = Math.pow(a, b);
                break;
            case "7": // Logarithm
                ans = Math.log(a);
                break;
            // Add more operations/functions as needed
        }

        int randomIndex = (int) (Math.random() * jokes.length);
        String randomJoke = jokes[randomIndex];

        List<String> history = (List<String>) request.getSession().getAttribute("history");
        if (history == null) {
            history = new ArrayList<>();
        }

        history.add("Calculation: " + getOperationSymbol(str3, a, b) + " = " + ans);
        request.getSession().setAttribute("history", history);

        response.sendRedirect("result.jsp?ans=" + ans + "&joke=" + randomJoke);
    	}
    	catch (Exception e) {
            // Redirect to error.jsp in case of an exception
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    private String getOperationSymbol(String operation, double a, double b) {
        switch (operation) {
            case "1":
                return a + " + " + b;
            case "2":
                return a + " - " + b;
            case "3":
                return a + " * " + b;
            case "4":
                return a + " / " + b;
            case "5":
                return "sqrt(" + a + ")";
            case "6":
                return a + "^" + b;
            case "7":
                return "log(" + a + ")";
            // Add more operation symbols as needed
            default:
                return "";
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}