import Classes.Carrito;
import java.io.*; 
import java.util.HashMap;
import javax.servlet.*;
import javax.servlet.http.*;

public class Engadir extends HttpServlet {
    @Override
    protected synchronized void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Carrito carro;
        HttpSession session = request.getSession();
        carro = (Carrito)session.getAttribute("carro");
        if (carro == null) {
            carro = new Carrito(new HashMap<Integer, Integer>());
            session.setAttribute("carro", carro);
        }
        
        Integer id = Integer.parseInt(request.getParameter("id"));
        
        if (request.getParameter("uds") != "") {
            Integer unidades = Integer.parseInt(request.getParameter("uds"));

            HashMap<Integer, Integer> seleccionados = carro.getCarro();
            if (seleccionados.containsKey(id)) {
                seleccionados.put(id, seleccionados.get(id) + unidades);
            }
            else {
                seleccionados.put(id, unidades);
            }
            carro.setCarro(seleccionados);
        }
        
        request.getRequestDispatcher("/documents/tenda/tenda").forward(request, response);
    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}