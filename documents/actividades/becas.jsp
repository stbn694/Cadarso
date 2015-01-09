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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/becas.css">
		<title>Acto de Becas - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Acto de Becas</h1>
			</div>
		</header>
		<div class="oscuro">
			<article class="large">
				<h2>Vídeo de Becas</h2>
				<p>O momento máis esperado da noite chega coa proxección dun vídeo realizado pola promoción enmarcando os mellores momentos do ano.</p>
				<iframe width="1000" height="563" src="https://www.youtube.com/embed/64djJFqahrA?rel=0" frameborder="0" allowfullscreen></iframe>
				<p><a href="http://youtu.be/64djJFqahrA">Ver en YouTube</a></p>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="claro">
			<div class="large">
				<article>
					<h3>Entrega das insignias</h3>
					<p>Os integrantes da mesa fan entrega a cada colexial de segundo ano ou maior do pin, banda ou pluma segundo lle corresponda.</p>
				</article>
				<article>
					<h3>Discurso da Promoción</h3>
					<p>O representante da Promoción pronuncia un breve discurso resumindo o curso que pasou e facendo fincapé nos mellores momentos e nas peticións máis importantes.</p>
				</article>
				<article>
					<h3>Himno universitario</h3>
					<p>O Acto clausúrase entoando o himno universitario <em>Gaudeamus Igitur</em>.</p>
				</article>
				<div class="clearer"></div>
			</div>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>