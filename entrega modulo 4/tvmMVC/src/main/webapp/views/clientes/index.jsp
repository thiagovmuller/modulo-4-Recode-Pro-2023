<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="assets/css/styles.css" type="text/css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<title>TVM | Clientes</title>
</head>
<body>
	<main>

		<jsp:include page="../../components/menu.jsp">
			<jsp:param name="home" value="index.jsp" />
			<jsp:param name="destinos" value="destinos" />
			<jsp:param name="promocoes" value="promocoes" />
			<jsp:param name="contato" value="contato" />
			<jsp:param name="clientes" value="cliente-consultar" />
			<jsp:param name="compras" value="compra-consultar" />
			<jsp:param name="passagens" value="passagem-consultar" />
		</jsp:include>

		<section class="container">

			<div class="p-4">
				<a href="cliente-get-cadastrar"
					class="btn btn-primary mb-2 botao1"> Novo Cliente </a>
				<table class="table table-responsive table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col">idCliente</th>
							<th scope="col">Nome</th>
							<th scope="col">CPF</th>
							<th scope="col">DataNasc</th>
							<th scope="col">Telefone</th>
							<th scope="col">Ações</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaClientes}" var="c">
							<tr>
								<td>${c.idCliente}</td>
								<td>${c.nome}</td>
								<td>${c.cpf}</td>
								<td>${c.dataNasc}</td>
								<td>${c.telefone}</td>
								<td>
									<div class="d-flex">
										<a href="cliente-consultar-id?id=${c.idCliente}" class="mx-1" title="Editar">
											<i class="ri-file-edit-line"></i>
										</a> 
										<a href="cliente-deletar?id=${c.idCliente}" class="mx-1" title="Deletar"
											onclick="return confirm('Deseja excluir o cliente ${c.nome}.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
									</div>
								</td>
							</tr>
						</jstl:forEach>

					</tbody>
				</table>
			</div>
		</section>
	</main>
	<footer class="bg-dark text-white text-center py-3">
		<b>&copy; 2023 - TVM Agência de Viagens</b>
	</footer>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>