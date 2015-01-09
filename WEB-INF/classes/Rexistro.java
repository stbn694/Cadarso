import java.io.*; 
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class Rexistro extends HttpServlet {
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
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();

        Cookie cookie = new Cookie("gerpeVieitez", "Desarrollo de Aplicaciones Web");
        cookie.setMaxAge(60*60);
        response.addCookie(cookie);

        String nome = request.getParameter("nome");
        String telefono = request.getParameter("tel");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");

        String webMaster = (String) getServletContext().getInitParameter("webMaster");
        
        String URL_DB = "jdbc:mysql://localhost:3306/bd_alumnos";
        String USER = "daw";
        String PASS = "etse";
        Connection connection = null;
        PreparedStatement ps = null;
        ResultSet resultSet = null;
        String check = "SELECT email FROM usuarios WHERE email=?";
        String insertar = "INSERT INTO usuarios VALUES (?, ?, ?, ?)";
        String error = null;
        
        try {
            connection = DriverManager.getConnection(URL_DB, USER, PASS);
            
            ps = connection.prepareStatement(check);
            ps.setString(1, email);
            resultSet = ps.executeQuery();
            if (resultSet.next()) {
                error = "O usuario xa existe";
            }
            else {
                ps = connection.prepareStatement(insertar);
                ps.setString(1, nome);
                ps.setString(2, telefono);
                ps.setString(3, email);
                ps.setString(4, password);
                ps.executeUpdate();
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

        String title = "Contacto - Colexio Maior Rodríguez Cadarso";
        String docType = "<!DOCTYPE html>";
        
        String head =
            "<link rel=\"icon\" href=\"../../images/favicon.png\">" +
            "<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>" +
            "<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>" +
            "<link rel=\"stylesheet\" type=\"text/css\" href=\"../../stylesheets/rexistro.css\">" +
            "<title>" + title + "</title>" +
            "<meta charset=\"UTF-8\"/>" +
            "<meta name=\"keywords\" content=\"cadarso, usc, santiago, cmurc, sur\"/>" +
            "<meta name=\"description\" content=\"Páxina do Colexio Maior universitario Rodríguez Cadarso\"/>" +
            "<meta name=\"author\" content=\"Esteban Gerpe Viéitez\"/>" +
            "<meta name=\"geo.placename\" content=\"Santiago de Compostela, Galicia, Spain\"/>";
        
        String body =
            "<div id=\"logo\">" +
                "<a href=\"../../index.jsp\"><img src=\"../../images/logo2.svg\" alt=\"Logo\"/></a>" +
            "</div>" +
            "<div id=\"container\">" +
                "<div class=\"mensaxe\">";
        
        if (error != null) {
            body +=
                    "<p>O usuario xa existe</p>" +
                "</div>" +
            "</div>";
        }
        else {
            body +=
                    "<p>Gracias</p>" +
                    "<p>A súa solicitude foi procesada con éxito</p>" +
                    "<p></br><b>Nome:</b> " + nome + "</p>" +
                    "<p><b>Correo electrónico:</b> " + email + "</p>" +
                "</div>" +
            "</div>";
        }
        
        body +=
            "<div class=\"clearer\"></div>";
        
        String footer =
            "<div class=\"footer-bcg\">" +
                "<footer>" +
                    "<ul class=\"links\">" +
                        "<li>" +
                            "<span class=\"link-title\">Mapa do sitio</span>" +
                            "<ul>" +
                                "<li><a href=\"../colexio/colexio.jsp\">O Colexio</a></li>" +
                                "<li><a href=\"../proxectos/proxectos.jsp\">Proxectos</a></li>" +
                                "<li><a href=\"../actividades/actividades.jsp\">Actividades</a></li>" +
                            "</ul>" +
                        "</li>" +
                        "<li>" +
                            "<span class=\"link-title\">Social</span>" +
                            "<ul>" +
                                "<li><a href=\"https://www.facebook.com/cmurodriguezcadarso\">Facebook</a></li>" +
                                "<li><a href=\"https://plus.google.com/u/0/b/115183981536067581708/115183981536067581708/\">Google+</a></li>" +
                                "<li><a href=\"https://twitter.com/CMRCadarso\">Twitter</a></li>" +
                            "</ul>" +
                        "</li>" +
                        "<li>" +
                            "<span class=\"link-title\">Enlaces</span>" +
                            "<ul>" +
                                "<li><a href=\"http://www.usc.es/es/servizos/sur/residencias/cadarso/index.html\">USC</a></li>" +
                            "</ul>" +
                        "</li>" +
                    "</ul>" +
                    "<img src=\"../../images/logo2.svg\" alt=\"Logo\"/>" +
                    "<div class=\"clearer\"></div>" +
                    "<p class=\"webmaster\">&copy; " + webMaster + "</p>" +
                "</footer>" +
            "</div>";

        PrintWriter writer = response.getWriter();
        writer.println(
            docType +
            "<html>" +
                "<head>" + head + "</head>" +
                "<body>" + body + "</body>" +
                footer +
            "</html>"
        );
        writer.flush();
        writer.close();
    }

    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}