import java.io.*; 
import javax.servlet.*;
import javax.servlet.http.*;

public class respContacto extends HttpServlet {
        @Override
	protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String clasificacion = request.getParameter("motivo");
		String membro = request.getParameter("colexial");
		String habitacion = request.getParameter("habitacion");
		String asunto = request.getParameter("asunto");
		String mensaxe = request.getParameter("mensaxe");

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
			"<div class=\"mensaxe\">" +
				"<p>Gracias</p>" +
				"<p>A sua solicitude foi procesada con exito</p>" +
				"<p><b>Nome:</b> " + nome + "</p>" +
				"<p><b>Correo electronico:</b> " + email + "</p>";

		switch (clasificacion) {
			case "consulta":
				body += "<p><b>Clasificacion:</b> Consulta xeral";
				break;
			case "suxestion":
				body += "<p><b>Clasificacion:</b> Suxestion";
				break;
			case "proxectos":
				body += "<p><b>Clasificacion:</b> Proxectos";
				break;
			case "novos":
				body += "<p><b>Clasificacion:</b> Novos colexiais";
				break;
		}

		if (membro.equals("Si")) {
			body += 
				"<p>Eres membro do colexio</p>" +
				"<p><b>Habitacion:</b> " + habitacion + "</p>";
		}
		else {
			body +=
				"<p>Non eres membro do colexio</p>";
		}

		if (asunto.length() > 0) {
			body +=
				"<p><b>Asunto:</b> " + asunto + "</p>";
		}

		body +=
				"<p><b>Mensaxe:</b> " + mensaxe + "</p>" +
				"<a href=\"../../index.jsp\">" + 
					"<div id=\"voltar\">" +
						"Voltar a Inicio" +
					"</div>" +
				"</a>" +
			"</div>";

		PrintWriter writer = response.getWriter();
		writer.println(
			docType +
			"<html>" +
				"<head>" + head + "</head>" +
				"<body>" + body + "</body>" +
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