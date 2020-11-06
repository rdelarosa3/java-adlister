import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // redirects user if not logged in to login page
        if(session.getAttribute("isLoggedIn") == null || session.getAttribute("isLoggedIn").equals(false)){
              response.sendRedirect("/login");
              return;
        }
        request.getRequestDispatcher("/profile.jsp").forward(request, response);
    }
}
