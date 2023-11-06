<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Agência de Viagens</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/styles.css" />
</head>

<body>

	<jsp:include page="../../components/menu.jsp">
		<jsp:param name="home" value="index.jsp" />
		<jsp:param name="destinos" value="destinos" />
		<jsp:param name="promocoes" value="promocoes" />
		<jsp:param name="contato" value="contato" />
		<jsp:param name="clientes" value="cliente-consultar" />
		<jsp:param name="compras" value="compra-consultar" />
		<jsp:param name="passagens" value="passagem-consultar" />
	</jsp:include>

	<div class="banner-container">
		<img src="assets/img/promo1.jpg" alt="promo1"> <img
			src="assets/img/promo2.jpg" alt="promo2"> <img
			src="assets/img/promo3.jpg" alt="promo3"> <img
			src="assets/img/promo4.jpg" alt="promo4"> <img
			src="assets/img/promo5.jpg" alt="promo5">
	</div>
	</div>
</body>

<footer class="bg-dark text-white text-center py-3">
	<b>&copy; 2023 - TVM Agência de Viagens</b>
</footer>

</html>