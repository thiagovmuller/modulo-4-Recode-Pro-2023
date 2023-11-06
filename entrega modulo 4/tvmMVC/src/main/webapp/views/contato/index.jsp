<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Agência de Viagens</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
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

	<section class="containercontato">
		<h2>Entre em Contato</h2>
		<div class="row">
			<div class="col-md-6">
				<p>Tem alguma dúvida ou precisa de mais informações? Entre em
					contato conosco!</p>
				<ul>
					<li>(48) 3246-0001</li>
					<li>contato@tvmviagens.com</li>
					<li>Av. Atlântica, 200 - Jardim Atlântico - Florianópolis -
						SC.</li>
				</ul>
			</div>
			<div class="col-md-4">
				<form>
					<div class="form-group">
						<label for="nome">Nome:</label> <input type="text"
							class="form-control" id="nome" name="nome" required />
					</div>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email"
							class="form-control" id="email" name="email" required />
					</div>
					<div class="form-group">
						<label for="mensagem">Mensagem:</label>
						<textarea class="form-control" id="mensagem" name="mensagem"
							rows="4" required></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Enviar</button>
				</form>
			</div>
		</div>
	</section>
	</div>
</body>

<footer class="bg-dark text-white text-center py-3">
	<b>&copy; 2023 - TVM Agência de Viagens</b>
</footer>

</html>