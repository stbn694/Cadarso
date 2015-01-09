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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/actividades.css">
		<title>Actividades - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Actividades</h1>
			</div>
		</header>
		<ul class="thumbn">
			<li>
				<figure>
					<a href="../actividades/nadal.jsp"><img src="../../images/actividades/nadal.jpg" alt="Nadal"/></a>
				</figure>
				<div class="nombre">
					<a href="../actividades/nadal.jsp">Nadal</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../actividades/viaxeiros.jsp"><img src="../../images/actividades/viaxeiros.jpg" alt="Cadarsinos Viaxeiros"/></a>
				</figure>
				<div class="nombre">
					<a href="../actividades/viaxeiros.jsp">Cadarsinos Viaxeiros</a>
				</div>
			</li>
			<li>
				<figure>
					<a href="../actividades/semana.jsp"><img src="../../images/actividades/semana.jpg" alt="Semana colexial"/></a>
				</figure>
				<div class="nombre">
					<a href="../actividades/semana.jsp">Semana Colexial</a>
				</div>
			</li>
		</ul>
        <%@include file="../footer.jsp" %>
	</body>
</html>