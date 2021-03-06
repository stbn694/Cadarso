<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" href="../../images/favicon.png">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="../../javascript/mostrar.js"></script>
		<script src="../../javascript/check-cont.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		<link type="text/css" rel="stylesheet" href="../../stylesheets/common.css">
		<link rel="stylesheet" type="text/css" href="../../stylesheets/localizacion.css">
		<title>Localización - Colexio Maior Rodríguez Cadarso</title>
		<meta charset="UTF-8"/>
		<meta name="keywords" content="cadarso, usc, santiago, cmurc, sur"/>
		<meta name="description" content="Páxina do Colexio Maior universitario Rodríguez Cadarso"/>
		<meta name="author" content="Esteban Gerpe Viéitez"/>
		<meta name="geo.placename" content="Santiago de Compostela, Galicia, Spain"/>
	</head>
	<body>
        <%@include file="../nav.jsp" %>
		<header>
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2923.795498297067!2d-8.554247434978137!3d42.877160345031676!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd2efe6b94735535%3A0xafdbef4f812f11ea!2sColegio+Mayor+Rodr%C3%ADguez+Cadarso%2C+USC+-+Campus+de+Santiago%2C+Colegio+Mayor+Universitario+San+Clemente%2C+15705+Santiago+de+Compostela%2C+La+Coru%C3%B1a!5e0!3m2!1ses!2ses!4v1412558898179" frameborder="0"></iframe>
			<div id="title">
				<h1>Localización</h1>
			</div>
		</header>
		<div class="oscuro">
			<div class="norm-cont">
				<h2>Distancia a zonas da cidade</h2>
				<ul class="distancias">
					<li>
						<img src="../../images/colexio/localizacion/concha2.svg" alt="Catedral de Santiago"/>
						<h5>Catedral de Santiago</h5>
						<p>1 km - 15 min</p>
					</li>
					<li>
						<img src="../../images/colexio/localizacion/arbol2.svg" alt="Alameda"/>
						<h5>Alameda</h5>
						<p>500 m - 5 min</p>
					</li>
					<li>
						<img src="../../images/colexio/localizacion/cruz2.svg" alt="Hospital Gil Casares"/>
						<h5>Hospital Gil Casares</h5>
						<p>2 km - 20 min</p>
					</li>
					<li>
						<img src="../../images/colexio/localizacion/tren2.svg" alt="Estación FFCC"/>
						<h5>Estación FFCC</h5>
						<p>1,5 km - 18 min</p>
					</li>	
				</ul>
			</div>
		</div>
		<div class="claro">
			<div class="norm-cont">
				<h2>Autobuses urbanos cercanos</h2>
				<ul class="buses">
					<li><b>Liña 15:</b> Campus Norte (Vite) / Praza de Galicia / Campus Sur</li>
					<li><b>Liña 8:</b> Tanatorio de Boisaca / Guadalupe / Rúa da Senra / Vidán</li>
					<li><b>Liña 1:</b> Cemiterio de Boisaca / Hospital Clínico</li>
					<li><b>Liña 12:</b> Os Tilos / Hospitais</li>
					<li><b>Liña C4:</b> Est. de autobuses / Vite / Hospitais / Fontiñas / Est. de autobuses</li>
					<li><b>Liña P2:</b> Estación de autobuses / Ortoño</li>
					<li><b>Liña P8:</b> Rúa Valle Inclán / Villestro / Reborido</li>
				</ul>
			</div>
		</div>
		<div class="oscuro">
			<div class="norm-cont">
				<h2>Contacto</h2>
				<ul class="contacto">
					<li>
						<b>Dirección</b><br>
						Plaza Rodríguez Cadarso, s/n<br>
						Campus Vida<br>
						15782 Santiago de Compostela<br>
						A Coruña (España)
					</li>
					<li>
						<b>Teléfono</b><br>
						+34 881 814 354
					</li>
					<li>
						<b>Fax</b><br>
						+34 881 814 309
					</li>
					<li>
						<b>E-Mail</b><br>
						cmrc_dir@usc.es
					</li>
				</ul>
				<p id="mostrar-form">Mensaxe</p>
			</div>
		</div>
		<div class="azul">
			<div class="norm-cont">
				<div id="cerrar"></div>
				<h2>Fala con nós</h2>
				<form id="cont-form" method="post" action="./respContacto" onsubmit="return checkForm(this);">
					<p>
						<label for="nome">Nome: <i>*</i></label>
						<input type="text" id="nome" name="nome" oninput="checkName(this);">
						<p class="error-msg" id="err-name">O nome non é válido</p>
					</p>
					<p>
						<label for="email">Correo electrónico: <i>*</i></label>
						<input type="email" id="email" name="email" oninput="checkMail(this);">
						<p class="error-msg" id="err-email">O correo electrónico non é válido</p>
					</p>
					<p>
						<label for="motivo">Clasificación:</label>
						<select id="motivo" name="motivo">
							<option value="consulta" selected>Consulta xeral</option>
							<option value="suxestion">Suxestión</option>
							<option value="proxectos">Proxectos</option>
							<option value="novos">Novos colexiais</option>
						</select>
					</p>
					<p>
						<label>Eres membro do Colexio?</label>
						<input type="radio" id="colexialsi" name="colexial" value="Si">Si
						<input type="radio" id="colexialnon" name="colexial" value="Non" checked>Non
					</p>
					<p class="hab">
						<label for="habitacion">Habitación <i>*</i></label>
						<input type="number" id="habitacion" name="habitacion" oninput="checkHabitacion(this);">
						<p class="error-msg" id="err-habitacion">A habitación non é válida</p>
					</p>
					<p>
						<label for="asunto">Asunto:</label>
						<input type="text" id="asunto" name="asunto">
					</p>
					<p>
						<label for="mensaxe">Mensaxe: <i>*</i></label>
						<p id="count">500</p>
						<textarea id="mensaxe" name="mensaxe" oninput="checkMensaxe(this);"></textarea>
						<p class="error-msg" id="err-mensaxe">A mensaxe supera os caracteres permitidos</p>
					</p>
					<p>
						<input type="submit" id="env-mens" name="env-mens" value="Enviar">
					</p>
				</form>
			</div>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>