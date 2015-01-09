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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/colexio.css">
		<title>O Colexio - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>O Colexio</h1>
			</div>
		</header>
		<ul class="thumbn">
			<li>
				<figure>
					<a href="../colexio/quen_somos.jsp"><img src="../../images/colexio/quen_somos.jpg" alt="Quen somos"/></a>
				</figure>
				<div class="nombre">
					<a href="../colexio/quen_somos.jsp">Quen somos</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../colexio/historia.jsp"><img src="../../images/colexio/historia.jpg" alt="Historia"/></a>
				</figure>
				<div class="nombre">
					<a href="../colexio/historia.jsp">Historia</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../colexio/localizacion.jsp"><img src="../../images/colexio/localizacion.bmp" alt="Localización"/></a>
				</figure>
				<div class="nombre">
					<a href="../colexio/localizacion.jsp">Localización</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../colexio/recursos.jsp"><img src="../../images/colexio/recursos.png" alt="Recursos"/></a>
				</figure>
				<div class="nombre">
					<a href="../colexio/recursos.jsp">Recursos</a>
				</div>
			</li>
		</ul>
        <%@include file="../footer.jsp" %>
	</body>
</html>