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
        <link rel="stylesheet" type="text/css" href="../../stylesheets/carro.css">
        <title>Carro da compra - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Carro da compra</h1>
			</div>
		</header>
		<div class="list-container">
			<table>
				<thead>
					<tr>
						<th colspan="2">Produto</th>
						<th>Prezo</th>
						<th>Cantidade</th>
                        <th></th>
					</tr>
				</thead>
				<tbody>
                    <c:if test="${seleccionados.size()>0}">
                        <c:forEach var="i" begin="0" end="${seleccionados.size()-1}">
                            <tr>
                                <td><img src="${seleccionados.get(i).imaxe}"></td>
                                <td>${seleccionados.get(i).nome}</td>
                                <td>EUR <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${seleccionados.get(i).prezo}"/></td>
                                <td>${cantidades.get(i)}</td>
                                <td>
                                    <form id="eliminar-item" method="post" action="./carro">
                                        <input type="hidden" id="id" name="id" value="${seleccionados.get(i).id}">
                                        <input type="submit" id="eliminar" name="eliminar" value="">
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
					<tr id="total">
						<td></td>
						<td>Total</td>
						<td>EUR <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${total}"/></td>
                        <td></td>
					</tr>
					<tr id="total-iva">
						<td></td>
						<td>Total (IVA)</td>
						<td>EUR <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${totalIVA}"/></td>
					</tr>
				</tbody>
			</table>
            <c:if test="${no_stock.size()>0}">
                <h3 id="no-stock-title">Produtos sen stock dispoñible</h3>
                <p id="no-stock-desc">Estes produtos non están dispoñibles ou a cantidade é superior á existente</p>
                <p id="no-stock-desc">Espere ata que volvan a estar dispoñibles ou elimíenos do carro facendo click na aspa vermella</p>
                <table id="no-stock">
                    <thead>
                        <tr>
                            <th colspan="2">Produto</th>
                            <th>Prezo</th>
                            <th>Cantidade</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="i" begin="0" end="${no_stock.size()-1}">
                            <tr>
                                <td><img src="${no_stock.get(i).imaxe}"></td>
                                <td>${no_stock.get(i).nome}</td>
                                <td>EUR <fmt:formatNumber minFractionDigits="2" maxFractionDigits="2" value="${no_stock.get(i).prezo}"/></td>
                                <td>${cantidades_supera.get(i)}</td>
                                <td>
                                    <form id="eliminar-item" method="post" action="./carro">
                                        <input type="hidden" id="id" name="id" value="${no_stock.get(i).id}">
                                        <input type="submit" id="eliminar" name="eliminar" value="">
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
			<div class="accions">
                <c:if test="${seleccionados.size()>0}">
                    <c:choose>
                        <c:when test="${empty sessionScope.email}">
                            <a href="./tramitar"><p id="tramitar">Iniciar sesión</p></a>
                        </c:when>
                        <c:otherwise>
                            <a href="./tramitar"><p id="tramitar">Tramitar</p></a>
                        </c:otherwise>
                    </c:choose>
                </c:if>
				<a href="./tenda"><p id="volver-tenda">Seguir comprando</p></a>
			</div>
		</div>
        <c:if test="${(not empty login) && (login)}">
            <div id="fondo"></div>
            <div class="login-container">
                <p>Identifícate para continuar</p>
                <form id="login" action="./tramitar" method="post">
                    <p>
                        <label for="email">Correo electrónico:</label>
                        <input type="text" id="email" name="email" autofocus="autofocus">
                    </p>
                    <p>
                        <label for="pass">Contrasinal:</label>
                        <input type="password" id="pass" name="pass">
                    </p>
                    <p>
                        <input type="submit" id="iniciar" name="iniciar" value="Iniciar sesión">
                    </p>
                </form>
            </div>
        </c:if>
        <%@include file="../footer.jsp" %>
	</body>
</html>