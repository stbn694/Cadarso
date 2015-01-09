<%@page language="java" contentType="text/html" session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" href="../../images/favicon.png">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="../../javascript/mostrar.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		<link type="text/css" rel="stylesheet" href="../../stylesheets/common.css">
		<link rel="stylesheet" type="text/css" href="../../stylesheets/tenda.css">
		<title>Tenda virtual - Colexio Maior Rodríguez Cadarso</title>
		<meta charset="UTF-8"/>
		<meta name="keywords" content="cadarso, usc, santiago, cmurc, sur"/>
		<meta name="description" content="Páxina do Colexio Maior universitario Rodríguez Cadarso"/>
		<meta name="author" content="Esteban Gerpe Viéitez"/>
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
							<li><a href="../colexio/localizacion.jsp">Localización</a></li>
							<li><a href="../colexio/recursos.jsp">Recursos</a></li>
						</ul>
					</li>
					<li>
						<a href="../proxectos/proxectos.jsp">Proxectos</a>
						<ul>
							<li><a href="../proxectos/sociocultura.jsp">Sociocultura</a></li>
							<li><a href="../proxectos/deportes.jsp">Deportes</a></li>
							<li><a href="../proxectos/aula_verde.jsp">Aula Verde</a></li>
							<li><a href="../proxectos/promocion.jsp">Promoción</a></li>
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
            <div id="carro">
				<a href="./carro"><div id="enlace-carro"></div></a>
				<div id="cantidade-carro">
                    <p>${requestScope.cantidade}</p>
				</div>
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
				<h1>Tenda virtual</h1>
			</div>
		</header>
		<div class="item-container">
            <c:if test="${produtos.size()>0}">
                <c:forEach var="pr" items="${produtos}">
                    <c:if test="${pr.stock>0}">
                        <div class="item">
                            <img src="${pr.imaxe}">
                            <article class="descricion">
                                <h2>${pr.nome}</h2>
                                <p>${pr.descripcion}</p>
                            </article>
                                <p class="prezo">Prezo: EUR <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${pr.prezo}"/></p>
                            <form id="engadirCarrito" method="post" action="./engadir">
                                <input type="hidden" id="id" name="id" value="${pr.id}">
                                <label for="uds">Uds:</label>
                                <input type="number" id="uds" name="uds" min="1" max="${pr.stock}" value="1">
                                <input type="submit" id="engadir" name="engadir" value="Engadir ao carro">
                            </form>
                        </div>
                    </c:if>
                </c:forEach>
            </c:if>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>