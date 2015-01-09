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

public class Carro extends HttpServlet {
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
        
        if (request.getParameter("id") != null) {
            carro.getCarro().remove(Integer.parseInt(request.getParameter("id")));
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
        
        ArrayList<Integer> cantidades = new ArrayList();
        ArrayList<Integer> cantidades_supera = new ArrayList();
        ArrayList<Producto> seleccionados = new ArrayList();
        ArrayList<Producto> no_stock = new ArrayList();
        
        for (Producto pr : productos) {
            if (carro.getCarro().containsKey(pr.getId())) {
                if (carro.getCarro().get(pr.getId()) > pr.getStock()) {
                    no_stock.add(pr);
                    cantidades_supera.add(carro.getCarro().get(pr.getId()));
                }
                else {
                    seleccionados.add(pr);
                    cantidades.add(carro.getCarro().get(pr.getId()));
                }
            }
        }
        
        float total;
        float totalIVA;
        
        total = 0;
        for (int i = 0; i < seleccionados.size(); i++) {
            total += seleccionados.get(i).getPrezo() * cantidades.get(i).floatValue();
        }
        totalIVA = total + (total * 21 / 100);
        
        if ((Boolean)request.getAttribute("login") != null && (Boolean)request.getAttribute("login") == true) {
            request.setAttribute("login", true);
        }
        else {
            request.setAttribute("login", false);
        }
        
        request.setAttribute("cantidades", cantidades);
        request.setAttribute("cantidades_supera", cantidades_supera);
        request.setAttribute("seleccionados", seleccionados);
        request.setAttribute("no_stock", no_stock);
        request.setAttribute("total", total);
        request.setAttribute("totalIVA", totalIVA);
        request.getRequestDispatcher("/documents/tenda/carro.jsp").forward(request, response);
    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}