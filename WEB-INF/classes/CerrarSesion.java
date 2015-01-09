import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class CerrarSesion extends HttpServlet {
    @Override
    protected synchronized void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        
        request.getRequestDispatcher("/documents/tenda/tenda").forward(request, response);
    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}