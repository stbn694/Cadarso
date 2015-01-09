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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/factura.css">
		<title>Resumo da compra - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Resumo da compra</h1>
			</div>
		</header>
		<div class="list-container">
			<p>Transacción realizada correctamente</p>
			<table>
				<thead>
					<tr>
						<th colspan="2">Produto</th>
						<th>Prezo</th>
						<th>Cantidade</th>
					</tr>
				</thead>
				<tbody>
                    <c:if test="${seleccionados.size()>0}">
                        <c:forEach var="i" begin="0" end="${seleccionados.size()-1}">
                            <tr>
                                <td><img src="${seleccionados.get(i).imaxe}"></td>
                                <td>${seleccionados.get(i).nome}</td>
                                <td>EUR ${seleccionados.get(i).prezo}</td>
                                <td>${cantidades.get(i)}</td>
                            </tr>
                        </c:forEach>
                    </c:if>
					<tr id="total">
						<td></td>
						<td>Total</td>
						<td>EUR <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${total}"/></td>
					</tr>
					<tr id="total-iva">
						<td></td>
						<td>Total (IVA)</td>
						<td>EUR <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${totalIVA}"/></td>
					</tr>
				</tbody>
			</table>
            <div class="info">
                <p class="label">Nome: </p><p>${datos.nome}</p>
                <p class="label">Teléfono: </p><p>${datos.telefono}</p>
                <p class="label">Dirección: </p><p>${datos.direccion}</p>
                <p class="label">Localidade: </p><p>${datos.localidade}</p>
                <p class="label">Código postal: </p><p>${datos.codigoPostal}</p>
            </div>
			<div class="accions">
				<a href="./tenda"><p id="volver-tenda">Volver á tenda</p></a>
				<a href="../../index.jsp"><p id="volver-inicio">Volver a Inicio</p></a>
			</div>
		</div>
		<%@include file="../footer.jsp" %>
	</body>
</html>