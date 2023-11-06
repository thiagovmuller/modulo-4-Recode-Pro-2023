<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="./assets/css/styles.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>TVM | Atualizar Cliente</title>
</head>
<body>
	<main>

			<jsp:include page="../../components/menu.jsp">
				<jsp:param name="home" value="./index.jsp" />
				<jsp:param name="destinos" value="destinos" />
				<jsp:param name="promocoes" value="promocoes" />
				<jsp:param name="contato" value="contato" />
				<jsp:param name="clientes" value="cliente-consultar" />
				<jsp:param name="compras" value="compra-consultar" />
				<jsp:param name="passagens" value="passagem-consultar" />
			</jsp:include>
		
		<div class="container py-3">
            <form action="cliente-atualizar">
	            <h2 class="text-center">Atualizar</h2>
<%-- 	            <input type="hidden" id="id" name="id" class="form-control" value="${cliente.idCliente}" /> --%>
	            <div class="form-group mb-3">
	                <label for="nome" class="form-label">
	                    idCliente
	                </label>
	                <input type="text" id="id" name="id" class="form-control" value="${cliente.idCliente}" readonly/>
	            </div>
	            <div class="form-group mb-3">
	                <label for="nome" class="form-label">
	                    Nome
	                </label>
	                <input type="text" id="nome" name="nome" class="form-control" value="${cliente.nome}" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="cpf" class="form-label">
	                    CPF
	                </label>
	                <input type="text" id="cpf" name="cpf" class="form-control" value="${cliente.cpf}" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="dataNasc" class="form-label">
	                    Data Nascimento
	                </label>
	                <input type="text" id="dataNasc" name="dataNasc" class="form-control" value="${cliente.dataNasc}" />
	            </div>
	            
	            <div class="form-group mb-3">
	                <label for="telefone" class="form-label">
	                    Telefone
	                </label>
	                <input type="text" id="telefone" name="telefone" class="form-control" value="${cliente.telefone}" />
	            </div>
	
	            <button type="submit" class="btn btn-primary">
	                Enviar
	            </button>
	            <a href="cliente-consultar" class="btn btn-danger" style="margin-left: 10px">
	                Cancelar
	            </a>
            </form>
        </div>
		
    </main>
    
	<footer class="bg-dark text-white text-center py-3">
		<b>&copy; 2023 - TVM Agência de Viagens</b>
	</footer>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>