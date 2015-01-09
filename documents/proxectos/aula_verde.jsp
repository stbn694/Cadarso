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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/aula_verde.css">
		<title>Aula Verde - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Aula Verde</h1>
			</div>
		</header>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h2><a href="../actividades/viaxeiros.jsp">Cadarsinos Viaxeiros</a></h2>
					<p>Esta iniciativa da Aula Verde en colaboración cos outros proxectos acadou un gran éxito na súa primeira edición.</p>
				</div>
				<figure>
					<img src="../../images/proxectos/aula_verde/viaxeiros.jpg" alt="Cadarsinos Viaxeiros"/>
				</figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="claro">
			<article class="large">
				<div class="content">
					<h3>Reciclaxe</h3>
					<p>O Cadarso conta con varias forma de reciclaxe, as cales se invita a utilizar:</p>
					<ul>
						<li>Depósito para aceite usado, en todas as cociñas</li>
						<li>Plástico, no comedor do segundo andar</li>
						<li>Papel e cartón, no primeiro andar</li>
						<li>Tapóns solidarios, no comedor do segundo</li>
					</ul>
				</div>
				<figure>
					<img src="../../images/proxectos/aula_verde/reciclaxe2.svg" alt="Reciclaxe"/>
				</figure>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="azul">
			<article class="large">
				<h3>Bolseira de Aula Verde</h3>
				<figure><img src="../../images/proxectos/aula_verde/bolseira.jpg" alt="Bolseira"/></figure>
				<div class="content">
					<p>A encargada da bolsa de Aula Verde deste ano é a colexial <span>Noelia Neira</span>.</p>
				</div>
				<div class="clearer"></div>
			</article>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>