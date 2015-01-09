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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/semana.css">
		<title>Semana Colexial - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Semana Colexial</h1>
				<p>A semana grande do Colexio</p>
			</div>
		</header>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h2>Cea dos Rodríguez</h2>
					<p>Esta cea, o último evento organizado pola Promoción antes do Acto de Becas, é o momento onde todos os colexiais despiden o ano de forma animada e onde entregan os prestixiosos "Rodríguez", que premian as mellores anécdotas do curso.</p>
				</div>
				<figure>
					<img src="../../images/actividades/semana/cea.jpg" alt="Promoción"/>
				</figure>
				<div class="clearer"></div>
			</article>
		</div>
		<a href="./becas.jsp"><div class="becas">
			<article class="large">
				<h2>Acto de Becas</h2>
				<p>A cima dos eventos da semana é o Acto de Becas, onde os colexiais reciben as distincións que lle corresponden e o equipo reitoral despide o ano académico.</p>
				<div class="clearer"></div>
			</article>
		</div></a>
		<div class="claro">
			<article class="large">
				<div class="content">
					<h3>Gymkana</h3>
					<p>Durante esta semana realízase unha competición por equipos onde o obxectivo é realizar probas pola cidade ata alcanzar un determinado número de puntos. As probas poden ser do máis ridículas ou absurdas.</p>
				</div>
				<figure>
					<img src="../../images/actividades/semana/gymkana.jpg" alt="Vencedores Gymkana"/>
				</figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h3>Final do Torneo intercolexial</h3>
					<p>A final do Torneo intercolexial de fútbol sala ten lugar a principios desta semana. Os vencedores do Torneo son obsequiados co trofeo durante o Acto de Becas.</p>
				</div>
				<figure>
					<img src="../../images/actividades/semana/torneo.jpg" alt="Torneo intercolexial"/>
				</figure>
				<div class="clearer"></div>
			</article>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>