<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" href="../../images/favicon.png">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="../../javascript/mostrar.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		<link type="text/css" rel="stylesheet" href="../../stylesheets/common.css">
		<link rel="stylesheet" type="text/css" href="../../stylesheets/proxectos.css">
		<title>Proxectos - Colexio Maior Rodríguez Cadarso</title>
		<meta charset="UTF-8"/>
		<meta name="keywords" content="cadarso, usc, santiago, cmurc, sur"/>
		<meta name="description" content="Páxina do Colexio Maior universitario Rodríguez Cadarso"/>
		<meta name="author" content="Esteban Gerpe Viéitez"/>
		<meta name="geo.placename" content="Santiago de Compostela, Galicia, Spain"/>
	</head>
	<body>
        <%@include file="../nav.jsp" %>
		<header>
			<div id="title">
				<h1>Proxectos</h1>
			</div>
		</header>
		<ul class="thumbn">
			<li>
				<figure>
					<a href="../proxectos/sociocultura.jsp"><img src="../../images/proxectos/sociocultura.jpg" alt="Sociocultura"/></a>
				</figure>
				<div class="nombre">
					<a href="../proxectos/sociocultura.jsp">Sociocultura</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../proxectos/deportes.jsp"><img src="../../images/proxectos/deportes.jpg" alt="Deportes"/></a>
				</figure>
				<div class="nombre">
					<a href="../proxectos/deportes.jsp">Deportes</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../proxectos/aula_verde.jsp"><img src="../../images/proxectos/aula_verde.jpg" alt="Aula Verde"/></a>
				</figure>
				<div class="nombre">
					<a href="../proxectos/aula_verde.jsp">Aula Verde</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../proxectos/promocion.jsp"><img src="../../images/proxectos/promocion.jpg" alt="Promoción"/></a>
				</figure>
				<div class="nombre">
					<a href="../proxectos/promocion.jsp">Promoción</a>
				</div>
			</li>
		</ul>
        <%@include file="../footer.jsp" %>
	</body>
</html>