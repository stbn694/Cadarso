<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" href="./images/favicon.png">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="./javascript/cabecera.js"></script>
		<script src="./javascript/navegacion.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		<link type="text/css" rel="stylesheet" href="./stylesheets/common.css">
		<link rel="stylesheet" type="text/css" href="./stylesheets/index.css">
		<title>Colexio Maior Rodríguez Cadarso</title>
		<meta charset="UTF-8"/>
		<meta name="keywords" content="cadarso, usc, santiago, cmurc, sur"/>
		<meta name="description" content="Páxina do Colexio Maior universitario Rodríguez Cadarso"/>
		<meta name="author" content="Esteban Gerpe Viéitez"/>
		<meta name="geo.placename" content="Santiago de Compostela, Galicia, Spain"/>
	</head>
	<body>
		<div class="nav-bcg">
			<nav>
				<img src="./images/logo2.svg" alt="Logo"/> <!--Logo-->
				<ul class="menu">
                    <li>
						<a href="./documents/tenda/tenda">Tenda</a>
					</li>
					<li>
						<a href="./documents/colexio/colexio.jsp">O Colexio</a>
						<ul>
							<li><a href="./documents/colexio/quen_somos.jsp">Quen somos</a></li>
							<li><a href="./documents/colexio/historia.jsp">Historia</a></li>
							<li><a href="./documents/colexio/localizacion.jsp">Localización</a></li>
							<li><a href="./documents/colexio/recursos.jsp">Recursos</a></li>
						</ul>
					</li>
					<li>
						<a href="./documents/proxectos/proxectos.jsp">Proxectos</a>
						<ul>
							<li><a href="./documents/proxectos/sociocultura.jsp">Sociocultura</a></li>
							<li><a href="./documents/proxectos/deportes.jsp">Deportes</a></li>
							<li><a href="./documents/proxectos/aula_verde.jsp">Aula Verde</a></li>
							<li><a href="./documents/proxectos/promocion.jsp">Promoción</a></li>
						</ul>
					</li>
					<li>
						<a href="./documents/actividades/actividades.jsp">Actividades</a>
						<ul>
							<li><a href="./documents/actividades/nadal.jsp">Nadal</a></li>
							<li><a href="./documents/actividades/viaxeiros.jsp">Cadarsinos Viaxeiros</a></li>
							<li><a href="./documents/actividades/semana.jsp">Semana Colexial</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
		<header id="header">
			<div id="left-arrow"></div>
			<div id="right-arrow"></div>
			<div id="title">
				<img src="./images/logo_sombra.svg" alt="Logo"/>
				<h1>Colexio Maior<br><span id="rc">Rodríguez Cadarso</span></h1>
			</div>
		</header>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h2>O Cadarso</h2>
					<p>O C.M. Rodríguez Cadarso é un colexio pertencente ao Servizo Universitario de Residencias da Universidade de Santiago de Compostela. Sitúase na Praza Rodríguez Cadarso e constitúe o máis antigo dos tres colexios do proxecto de Jenaro de la Fuente.</p>
				</div>
				<figure><img src="./images/index/praza.JPG" alt="Praza Rodríguez Cadarso"/></figure>
				<ul class="article-links">
					<li><a href="https://www.facebook.com/cmurodriguezcadarso">Facebook</a></li>
					<li><a href="https://plus.google.com/u/0/b/115183981536067581708/115183981536067581708/">Google+</a></li>
					<li><a href="https://twitter.com/CMRCadarso">Twitter</a></li>
					<li><a href="http://www.usc.es/es/servizos/sur/residencias/cadarso/index.html">USC</a></li>
				</ul>
			</article>
		</div>
		<div class="claro">
			<article class="large">
				<div class="content">
					<h2>Cine en Cadarso</h2>
					<p>Continúa o luns de cine en Cadarso coa proxección dun novo clásico: <b>El Padrino</b>. Toda unha referencia do cine que non hai que perder.</p>
				</div>
				<figure><img src="./images/proxectos/cine/padrino.jpg" alt="El Padrino"/></figure>
				<ul class="article-links">
					<li><a href="./documents/proxectos/cine.jsp">Ler máis</a></li> <!--Link a cine-->
					<li><a href="./documents/actividades/actividades.jsp">Actividades</a></li> <!--Link a actividades-->
				</ul>
			</article>
		</div>
		<div class="footer-bcg">
			<footer>
				<ul class="links">
					<li>
						<span class="link-title">Mapa do sitio</span>
						<ul>
							<li><a href="./documents/colexio/colexio.jsp">O Colexio</a></li>
							<li><a href="./documents/proxectos/proxectos.jsp">Proxectos</a></li>
							<li><a href="./documents/actividades/actividades.jsp">Actividades</a></li>
						</ul>
					</li>
					<li>
						<span class="link-title">Social</span>
						<ul>
							<li><a href="https://www.facebook.com/cmurodriguezcadarso">Facebook</a></li>
							<li><a href="https://plus.google.com/u/0/b/115183981536067581708/115183981536067581708/">Google+</a></li>
							<li><a href="https://twitter.com/CMRCadarso">Twitter</a></li>
						</ul>
					</li>
					<li>
						<span class="link-title">Enlaces</span>
						<ul>
							<li><a href="http://www.usc.es/es/servizos/sur/residencias/cadarso/index.html">USC</a></li>
						</ul>
					</li>
				</ul>
				<img src="./images/logo2.svg" alt="Logo"/> <!--Logo-->
                <div class="clearer"></div>
                <p class="webmaster">&copy; ${initParam.webMaster}</p>
			</footer>
		</div>
	</body>
</html>