<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<link rel="icon" href="../../images/favicon.png">
		<script src="../../javascript/check-rex.js"></script>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="../../stylesheets/rexistro.css">
		<title>Rexistro - Colexio Maior Rodríguez Cadarso</title>
		<meta charset="UTF-8"/>
		<meta name="keywords" content="cadarso, usc, santiago, cmurc, sur"/>
		<meta name="description" content="Páxina do Colexio Maior universitario Rodríguez Cadarso"/>
		<meta name="author" content="Esteban Gerpe Viéitez"/>
		<meta name="geo.placename" content="Santiago de Compostela, Galicia, Spain"/>
	</head>
	<body>
		<div id="logo">
			<a href="../../index.jsp"><img src="../../images/logo2.svg" alt="Logo"/></a>
		</div>
		<header>
			<div id="title">
				<h1>Rexistro</h1>
			</div>
		</header>
		<div class="main">
			<form id="reg-form" method="post" action="./rexistro" onsubmit="return checkForm(this);">
				<p>
					<label for="nome">Nome completo: <i>*</i></label>
					<input type="text" id="nome" name="nome" autofocus="autofocus" oninput="checkName(this);">
					<p class="error-msg" id="err-name">O nome non é válido</p>
				</p>
				<p>
					<label for="tel">Teléfono:</label>
					<input type="text" id="tel" name="tel" oninput="checkTel(this);">
					<p class="error-msg" id="err-tel">O teléfono non é válido</p>
				</p>
				<p>
					<label for="email">Correo electrónico: <i>*</i></label>
					<input type="email" id="email" name="email" oninput="checkMail(this);">
					<p class="error-msg" id="err-email">O correo electrónico non é válido</p>
				</p>
				<p>
					<label for="pass">Contrasinal: <i>*</i></label>
					<input type="password" id="pass" name="pass" oninput="checkPass(this);">
					<p class="error-msg" id="err-pass">A contraseña non é válida</p>
				</p>
				<p>
					<input type="submit" id="reg" name="reg" value="Enviar">
				</p>
			</form>
		</div>
	</body>
</html>