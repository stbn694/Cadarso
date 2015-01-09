<%@page language="java" contentType="text/html" session="true" %>

<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" href="../../images/favicon.png">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="../../javascript/mostrar.js"></script>
        <script src="../../javascript/tenda.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		<link type="text/css" rel="stylesheet" href="../../stylesheets/common.css">
		<link rel="stylesheet" type="text/css" href="../../stylesheets/datos.css">
		<title>Tramitaci�n do pedido - Colexio Maior Rodr�guez Cadarso</title>
		<meta charset="UTF-8"/>
		<meta name="keywords" content="cadarso, usc, santiago, cmurc, sur"/>
		<meta name="description" content="P�xina do Colexio Maior universitario Rodr�guez Cadarso"/>
		<meta name="author" content="Esteban Gerpe Vi�itez"/>
		<meta name="geo.placename" content="Santiago de Compostela, Galicia, Spain"/>
	</head>
	<body>
        <div class="nav-bcg">
            <nav>
                <a href="../../index.jsp"><img src="../../images/logo2.svg" alt="Logo"/></a> <!--Logo-->
                <ul class="menu">
                    <li>
                        <a href="../rexistro/rexistro.jsp">Rexistrarse</a>
                    </li>
                    <li>
                        <a href="../colexio/colexio.jsp">O Colexio</a>
                        <ul>
                            <li><a href="../colexio/quen_somos.jsp">Quen somos</a></li>
                            <li><a href="../colexio/historia.jsp">Historia</a></li>
                            <li><a href="../colexio/localizacion.jsp">Localizaci�n</a></li>
                            <li><a href="../colexio/recursos.jsp">Recursos</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="../proxectos/proxectos.jsp">Proxectos</a>
                        <ul>
                            <li><a href="../proxectos/sociocultura.jsp">Sociocultura</a></li>
                            <li><a href="../proxectos/deportes.jsp">Deportes</a></li>
                            <li><a href="../proxectos/aula_verde.jsp">Aula Verde</a></li>
                            <li><a href="../proxectos/promocion.jsp">Promoci�n</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="../actividades/actividades.jsp">Actividades</a>
                        <ul>
                            <li><a href="../actividades/nadal.jsp">Nadal</a></li>
                            <li><a href="../actividades/viaxeiros.jsp">Cadarsinos Viaxeiros</a></li>
                            <li><a href="../actividades/semana.jsp">Semana Colexial</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="mostrar">
                <div id="mostrar-flecha"></div>
                <div id="mostrar-help">Esconder</div>
            </div>
            <c:if test="${not empty sessionScope.email}">
                <div id="session">
                    <a href="./cerrarSesion"><div id="cerrar"></div></a>
                    <div id="identification">
                        <p>Identificado como <b>${sessionScope.email}</b></p>
                    </div>
                </div>
            </c:if>
        </div>
		<header>
			<div id="title">
				<h1>Tramitaci�n do pedido</h1>
			</div>
		</header>
		<div class="datos-container">
			<p>Datos de entrega</p>
			<form id="datos" action="./comprar" method="post" onsubmit="return checkForm(this);">
				<p>
					<label for="direccion">Direcci�n:</label>
					<input type="text" id="direccion" name="direccion" autofocus="autofocus" oninput="checkDir(this);">
                    <p id="err-dir"></p>
				</p>
				<p>
					<label for="localidade">Localidade:</label>
					<input type="text" id="localidade" name="localidade" oninput="checkLoc(this);">
                    <p id="err-loc"></p>
				</p>
				<p>
					<label for="codigopostal">C�digo postal:</label>
					<input type="text" id="codigopostal" name="codigopostal" oninput="checkCP(this);">
                    <p id="err-cp"></p>
				</p>
				<p>
					<input type="submit" id="comprar" name="comprar" value="Finalizar compra">
				</p>
			</form>
		</div>
		<%@include file="../footer.jsp" %>
	</body>
</html>