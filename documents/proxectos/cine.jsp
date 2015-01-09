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
		<link rel="stylesheet" type="text/css" href="../../stylesheets/cine.css">
		<title>Cine - Colexio Maior Rodríguez Cadarso</title>
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
				<h1>Cine en Cadarso</h1>
			</div>
		</header>
		<div class="oscuro">
			<article class="large">
				<div class="content">
					<h2>El Padrino</h2>
					<p>A última proxección do Cine en Cadarso será coa aclamada película El Padrino, de Francis Ford Coppola. Unha obra mestra que se poderá disfrutar na compaña dos demáis colexiais.</p>
				</div>
				<figure><img src="../../images/proxectos/cine/padrino.jpg" alt="El Padrino"/></figure>
				<ul class="article-links">
					<li><a href="http://www.filmaffinity.com/es/film809297.html">FilmAffinity</a></li>
					<li><a href="http://www.imdb.com/title/tt0068646/">IMDB</a></li>
					<li><a href="http://www.rottentomatoes.com/m/godfather/">Rotten Tomatoes</a></li>
				</ul>
				<div class="clearer"></div>
			</article>
		</div>
		<div class="claro">
			<article class="large">
				<h3>Puntuacións dos colexiais</h3>
				<table>
					<thead>
						<tr id="leyenda">
							<th rowspan="2">Película</th>
							<th colspan="2">Puntuación</th>
						</tr>
						<tr id="div-punt">
							<th>Colexiais</th>
							<th>FilmAffinity</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>El resplandor</td>
							<td>7,4</td>
							<td>8,2</td>
						</tr>
						<tr>
							<td>Cadena perpetua</td>
							<td>9</td>
							<td>8,6</td>
						</tr>
						<tr>
							<td>La delgada línea roja</td>
							<td>7,6</td>
							<td>7,1</td>
						</tr>
						<tr>
							<td>Elclub de los poetas muertos</td>
							<td>7,7</td>
							<td>7,6</td>
						</tr>
						<tr>
							<td>La lista de Schindler</td>
							<td>9,25</td>
							<td>8,7</td>
						</tr>
						<tr>
							<td>El gran dictador</td>
							<td>9</td>
							<td>8,6</td>
						</tr>
						<tr>
							<td>Pulp fiction</td>
							<td>8,6</td>
							<td>8,6</td>
						</tr>
						<tr>
							<td>Seven</td>
							<td>7,8</td>
							<td>8,2</td>
						</tr>
						<tr>
							<td>American beauty</td>
							<td>7,4</td>
							<td>7,9</td>
						</tr>
						<tr>
							<td>2001: Una odisea en el espacio</td>
							<td>8</td>
							<td>7,8</td>
						</tr>
						<tr>
							<td>El Padrino</td>
							<td>8,5</td>
							<td>9,1</td>
						</tr>
					</tbody>
				</table>
				<div class="clearer"></div>
			</article>
		</div>
        <%@include file="../footer.jsp" %>
	</body>
</html>