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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/deportes.css">
		<title>Deportes - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Deportes</h1>
			</div>
		</header>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h2><a href="./torneo.jsp">Torneo Intercolexial Memorial Javier Varela Vence</a></h2>
					<p>Todos os resultados e clasificacións do torneo intercolexial de fútbol sala máis prestixioso da Universidade</p>
				</div>
				<figure><img src="../../images/proxectos/deportes/torneo.jpg" alt="Torneo intercolexial"></figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="claro">
			<article class="large">
				<div class="content">
					<h3><a href="./equipos.jsp">Equipos do Cadarso</a></h3>
					<p>Resultados dos equipos masculino e feminino de fútbol sala e do equipo mixto de vóleibol</p>
				</div>
				<figure><img src="../../images/proxectos/deportes/equipos.jpg" alt="Equipos"></figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h3>II Encontro Deportivo e Cultural en Oviedo</h3>
					<p>No mes de marzo o equipo masculino de fútbol sala foi convidado ao II Encontro Deportivo e Cultural en Oviedo, un torneo onde participan colexios de tres cidades españolas. Os xogadores ofreceron unha boa imaxe acadando unha meritosa segunda praza. Espérase repetir o evento o ano próximo sendo anfitriona a USC.</p>
				</div>
				<figure><img src="../../images/proxectos/deportes/oviedo.jpg" alt="II Encontro Deportivo e Cultural en Oviedo"></figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="claro">
			<article class="large">
				<div class="content">
					<h3>Partido Novatos - Veteráns</h3>
					<p>Como todos os anos xogouse un pequeno partido de fútbol sala entre os novatos e os veteráns. Este ano os vencedores foron os novos, decidíndose o encontro na tanda de penaltis.</p>
				</div>
				<figure><img src="../../images/proxectos/deportes/nov-vet.jpg" alt="Partido Novatos - Veteráns"></figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="azul">
			<article class="large">
				<h3>Bolseiro de Deportes</h3>
				<figure><img src="../../images/proxectos/sociocultura/bolseiro.jpg" alt="Bolseiro"/></figure>
				<div class="content">
					<p>O encargado da bolsa de Deportes deste ano é o colexial <span>Iván Villasuso</span>, estudante de Historia na USC e cadarsino por sete anos.</p>
				</div>
				<div class="clearer"></div>
			</article>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>