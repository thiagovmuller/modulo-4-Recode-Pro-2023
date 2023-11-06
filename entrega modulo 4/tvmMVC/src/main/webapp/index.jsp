<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Agência de Viagens</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/css/styles.css" />
</head>

<body>

	<jsp:include page="./components/menu.jsp">
		<jsp:param name="home" value="./index.jsp" />
		<jsp:param name="destinos" value="destinos" />
		<jsp:param name="promocoes" value="promocoes" />
		<jsp:param name="contato" value="contato" />
		<jsp:param name="clientes" value="cliente-consultar" />
		<jsp:param name="compras" value="compra-consultar" />
		<jsp:param name="passagens" value="passagem-consultar" />
	</jsp:include>

<!-- 	 <div class="container"> -->
<!-- 	   <div class="topnav responsive nav-container" id="myTopnav"> -->
<!-- 	     <a class="img"><img id="logo" src="assets/img/logo.png" alt="agenciadeviagens" /></a> -->
<!-- 	     <a href="index.html" class="active">Home</a> -->
<!-- 	     <a href="destino.html">Destinos</a> -->
<!-- 	     <a href="promocoes.html">Promoções</a> -->
<!-- 	     <a href="contato.html">Contato</a> -->
<!-- 	     <a href="/cliente">Usuário</a> -->
<!-- 	     <a href="/compra">Compras</a> -->
<!-- 	     <a href="/passagem">Passagens</a> -->
<!-- 	   </div> -->

	<div id="main-banner">
		<div id="search-form">
			<h1>Seu próximo destino está aqui!</h1>
			<p>Os melhores pacotes de viagens em um só lugar!</p>
			<form>
				<input type="text" name="viagem" placeholder="Digite o destino" />
				<input type="submit" value="Pesquisar" />
			</form>
		</div>
	</div>
	<div class="containercard">
		<!--Card 1-->
		<div class="card card-1">
			<div class="card-header">
				<img src="assets/img/c1.jpg" class="card-img" />
			</div>

			<div class="card-body">
				<h3 class="card-local">Quênia</h3>
				<h2 class="card-titulo">Nairóbi</h2>
				<p class="card-texto">O Quênia é sempre um clássico e suas
					paisagens são a definição de “aberto”, o que torna o país mais
					atraente do que nunca. Visite Giraffe Manor, Sasaab, Segera e
					Angama Mara.</p>
			</div>

			<div class="card-footer">
				<a href="promocoes.html">Ver mais</a>
			</div>
		</div>
		<!-- Card 1 -->

		<!--Card 2-->
		<div class="card card-2">
			<div class="card-header">
				<img src="assets/img/c2.jpg" class="card-img" />
			</div>

			<div class="card-body">
				<h3 class="card-local">França</h3>
				<h2 class="card-titulo">Paris</h2>
				<p class="card-texto">A cidade é irresistível, e não é de se
					admirar que seja o único destino que está ganhando destaque durante
					o Future of Travel Summit da Indagare.</p>
			</div>

			<div class="card-footer">
				<a href="promocoes.html">Ver mais</a>
			</div>
		</div>
		<!-- Card 2 -->

		<!--Card 3-->
		<div class="card card-3">
			<div class="card-header">
				<img src="assets/img/c3.jpg" class="card-img" />
			</div>

			<div class="card-body">
				<h3 class="card-local">Catar</h3>
				<h2 class="card-titulo">Doha</h2>
				<p class="card-texto">Conhecido por sua cultura fascinante e
					suas paisagens variadas, que vão das praias e deserto à capital
					futurística de Doha.</p>
			</div>

			<div class="card-footer">
				<a href="promocoes.html">Ver mais</a>
			</div>
		</div>
		<!-- Card 3 -->
	</div>

	<footer class="bg-dark text-white text-center py-3">
		<b>&copy; 2023 - TVM Agência de Viagens</b>
	</footer>
	
	<script src="script.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
</body>

</html>