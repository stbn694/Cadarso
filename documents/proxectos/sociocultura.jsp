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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/sociocultura.css">
		<title>Sociocultura - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Sociocultura</h1>
			</div>
		</header>
		<div class="bullets">
			<ul>
				<li>
					<figure><a href="./cine.jsp"><img src="../../images/proxectos/sociocultura/diaporama.svg" alt="Cine"/></a></figure>
					<p><a href="./cine.jsp">Cine en Cadarso</a></p>
				</li>
				<li>
					<figure><a href="./fifa.jsp"><img src="../../images/proxectos/sociocultura/mando.svg" alt="Torneo FIFA"/></a></figure>
					<p><a href="./fifa.jsp">Torneo FIFA</a></p>
				</li>
				<li>
					<figure><a href="./chef.jsp"><img src="../../images/proxectos/sociocultura/chef.svg" alt="Chef de Cadarso"/></a></figure>
					<p><a href="./chef.jsp">Chef de cadarso</a></p>
				</li>
				<li>
					<figure><a href="./voz.jsp"><img src="../../images/proxectos/sociocultura/micro.svg" alt="A Voz"/></a></figure>
					<p><a href="./voz.jsp">A Voz</a></p>
				</li>
			</ul>
		</div>
		<div class="azul">
			<article class="large">
				<h3>Bolseiro de Sociocultura</h3>
				<figure><img src="../../images/proxectos/sociocultura/bolseiro.jpg" alt="Bolseiro"/></figure>
				<div class="content">
					<p>O encargado da bolsa de Sociocultura deste ano é o colexial <span>Iván Villasuso</span>, estudante de Historia na USC e cadarsino por sete anos.</p>
				</div>
				<div class="clearer"></div>
			</article>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>