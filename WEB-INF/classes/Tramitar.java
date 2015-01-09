import Classes.Carrito;
import Classes.Producto;
import java.io.*; 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Tramitar extends HttpServlet {
    @Override
    public void init() throws ServletException {
    	super.init();
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (InstantiationException | IllegalAccessException | ClassNotFoundException ex) {
            Logger.getLogger(Rexistro.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    @Override
    protected synchronized void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Carrito carro;
        HttpSession session = request.getSession();
        carro = (Carrito)session.getAttribute("carro");
        if (carro == null) {
            carro = new Carrito(new HashMap<Integer, Integer>());
            session.setAttribute("carro", carro);
        }
        
        String URL_DB = "jdbc:mysql://localhost:3306/bd_alumnos";
        String USER = "daw";
        String PASS = "etse";
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        String email_session = (String) session.getAttribute("email");
        String email = (String) request.getParameter("email");
        String pass = (String) request.getParameter("pass");
        
        if (email_session != null) {
            request.getRequestDispatcher("/documents/tenda/datos.jsp").forward(request, response);
        }
        
        if (email_session == null) {
            if (email != null && pass != null && email.length() > 0 && pass.length() > 0) {
                String check_login = "SELECT password FROM usuarios WHERE email=?";
                
                try {
                    connection = DriverManager.getConnection(URL_DB, USER, PASS);

                    ps = connection.prepareStatement(check_login);
                    ps.setString(1, email);
                    resultSet = ps.executeQuery();
                    resultSet.next();
                    if (resultSet.getString(1).equals(pass)) {
                        session.setAttribute("email", email);
                        request.setAttribute("login", false);
                        request.getRequestDispatcher("/documents/tenda/carro").forward(request, response);
                    }
                    ps.close();
                    connection.close();
                    
                } catch (SQLException ex) {
                    Logger.getLogger(Rexistro.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    try {
                        ps.close();
                        connection.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(Rexistro.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
            else {
                request.setAttribute("login", true);
                request.getRequestDispatcher("/documents/tenda/carro").forward(request, response);
            }
        }
        
        email_session = (String) session.getAttribute("email");
    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}