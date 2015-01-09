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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/equipos.css">
		<title>Equipos - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Os equipos do Cadarso</h1>
				<p>Este ano o Colexio conta con tres grandes equipos dispostos a chegar ao máis alto</p>
			</div>
		</header>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h3>Fútbol sala masculino</h3>
					<p>Os rapaces conseguiron realizar unha moi boa tempada chegando a disputar a fase de ascendo, sendo eliminados nela despois de depender de si mesmos para lograr pasar de fase.</p>
				</div>
				<figure><img src="../../images/proxectos/equipos/fut_masc.jpg" alt="Fútbol sala masculino"/></figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="claro">
			<article class="large">
				<div class="content">
					<h3>Fútbol sala feminino</h3>
					<p>As rapazas xogaron o xa tradicional triangular entre os tres colexios da praza ofrecendo unha moi boa imaxe e escapándoselle por pouco o triunfo para acabar nunha excelente segunda posición.</p>
				</div>
				<figure><img src="../../images/proxectos/equipos/fut_fem.jpg" alt="Fútbol sala feminino"/></figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h3>Vóleibol mixto</h3>
					<p>O equipo de vóleibol, a pesar do bo xogo, non puido pasar da primeira fase da liga da USC. Algo que sabe a pouco despois dos bos resultados da pasada tempada.</p>
				</div>
				<figure><img src="../../images/proxectos/equipos/voleibol.jpg" alt="Vóleibol mixto"/></figure>
				<div class="clearer"></div>
			</article>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>