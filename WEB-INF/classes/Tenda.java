import Classes.Carrito;
import Classes.Producto;
import java.io.*; 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Tenda extends HttpServlet {
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
        String recuperar = "SELECT * FROM produtos";
        ArrayList<Producto> productos = new ArrayList();
        Producto prod;
        
        try {
            connection = DriverManager.getConnection(URL_DB, USER, PASS);
            
            ps = connection.prepareStatement(recuperar);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                prod = new Producto(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(4), resultSet.getFloat(5), resultSet.getInt(6), resultSet.getString(7));
                productos.add(prod);
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
        
        for (Producto pr : productos) {
            if (carro.getCarro().containsKey(pr.getId())) {
                pr.setStock(pr.getStock() - carro.getCarro().get(pr.getId()));
            }
        }
        
        request.setAttribute("produtos", productos);
        request.setAttribute("cantidade", carro.numElementos());
        request.getRequestDispatcher("/documents/tenda/tenda.jsp").forward(request, response);
    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}