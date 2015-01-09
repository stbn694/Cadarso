import Classes.Carrito;
import Classes.DatosCompra;
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

public class Comprar extends HttpServlet {
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
        String email = (String) session.getAttribute("email");
        String recuperar = "SELECT * FROM produtos";
        String maxID = "SELECT MAX(id) FROM compras";
        String nuevaCompra = "INSERT INTO compras VALUES (?, ?, ?, ?, ?, ?, ?)";
        String nuevaLineaCompra = "INSERT INTO terlineascompra VALUES (?, ?, ?, ?)";
        String recStock = "SELECT stock FROM produtos WHERE id=?";
        String modStock = "UPDATE produtos SET stock=? WHERE id=?";
        String usuario = "SELECT nome, telefono FROM usuarios WHERE email=?";
        ArrayList<Producto> productos = new ArrayList();
        ArrayList<Integer> cantidades = new ArrayList();
        ArrayList<Producto> seleccionados = new ArrayList();
        Producto prod;
        Integer ultimaCompra;
        Integer antiguoStock;
        Integer nuevoStock;
        Calendar calendar = Calendar.getInstance();
        Timestamp currentTimestamp = new Timestamp(calendar.getTime().getTime());
        String nome = null;
        String telefono = null;
        
        try {
            connection = DriverManager.getConnection(URL_DB, USER, PASS);

            ps = connection.prepareStatement(recuperar);
            resultSet = ps.executeQuery();
            while (resultSet.next()) {
                prod = new Producto(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(4), resultSet.getFloat(5), resultSet.getInt(6), resultSet.getString(7));
                productos.add(prod);
            }

            for (Producto pr : productos) {
                if (carro.getCarro().containsKey(pr.getId())) {
                    seleccionados.add(pr);
                    cantidades.add(carro.getCarro().get(pr.getId()));
                }
            }

            float total = 0;
            for (int i = 0; i < seleccionados.size(); i++) {
                total += seleccionados.get(i).getPrezo() * cantidades.get(i).floatValue();
            }

            ps = connection.prepareStatement(maxID);
            resultSet = ps.executeQuery();
            resultSet.next();
            ultimaCompra = resultSet.getInt(1);

            ps = connection.prepareStatement(nuevaCompra);
            ps.setInt(1, ultimaCompra + 1);
            ps.setTimestamp(2, currentTimestamp);
            ps.setFloat(3, total);
            ps.setString(4, email);
            ps.setString(5, request.getParameter("direccion"));
            ps.setString(6, request.getParameter("localidade"));
            ps.setString(7, request.getParameter("codigopostal"));
            ps.executeUpdate();

            for (int i = 0; i < seleccionados.size(); i++) {
                ps = connection.prepareStatement(nuevaLineaCompra);
                ps.setInt(1, cantidades.get(i));
                ps.setFloat(2, seleccionados.get(i).getPrezo());
                ps.setInt(3, ultimaCompra + 1);
                ps.setInt(4, seleccionados.get(i).getId());
                ps.executeUpdate();

                ps = connection.prepareStatement(recStock);
                ps.setInt(1, seleccionados.get(i).getId());
                resultSet = ps.executeQuery();
                resultSet.next();
                antiguoStock = resultSet.getInt(1);
                nuevoStock = antiguoStock - cantidades.get(i);

                ps = connection.prepareStatement(modStock);
                ps.setInt(1, nuevoStock);
                ps.setInt(2, seleccionados.get(i).getId());
                ps.executeUpdate();
            }
            
            ps = connection.prepareStatement(usuario);
            ps.setString(1, email);
            resultSet = ps.executeQuery();
            resultSet.next();
            nome = resultSet.getString(1);
            telefono = resultSet.getString(2);

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

        carro = new Carrito(new HashMap<Integer, Integer>());
        session.setAttribute("carro", carro);
        
        DatosCompra datos = new DatosCompra(nome, telefono, request.getParameter("direccion"), request.getParameter("localidade"), request.getParameter("codigopostal"));
        
        float total;
        float totalIVA;
        
        total = 0;
        for (int i = 0; i < seleccionados.size(); i++) {
            total += seleccionados.get(i).getPrezo() * cantidades.get(i).floatValue();
        }
        totalIVA = total + (total * 21 / 100);
        
        request.setAttribute("cantidades", cantidades);
        request.setAttribute("seleccionados", seleccionados);
        request.setAttribute("datos", datos);
        request.setAttribute("total", total);
        request.setAttribute("totalIVA", totalIVA);
        request.getRequestDispatcher("/documents/tenda/factura.jsp").forward(request, response);
    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}