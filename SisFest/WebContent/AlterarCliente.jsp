<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SisFest - Clientes</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Font-Awesome CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">

</head>

<body>
	<!-- Menu Navegação -->
	<c:import url="menuLateral.jsp"></c:import>


	<!-- Modal Cliente -->
	<c:import url="criarClienteModal.jsp"></c:import>


	<!-- Header -->

	<!-- todo conteúdo deve estar dentro do container-main -->
	<div class="container-main">
		<!-- Barra Ferramentas -->
		<c:import url="barraFerramentas.jsp"></c:import>

		<div class="container">
			<h3 class="page-header">Alterar Cliente #${cliente.id}</h3>
			<!-- Formulario para alteração de clientes -->

			<form action="controller.do" method="post">
				<input type="hidden" name="id" value="${cliente.id}" />
				<!-- area de campos do form -->
				<div class="row">

					<div class="form-group col-md-12">
						<label for="nome">Nome Completo *</label> <input type="text"
							class="form-control" name="nome" id="nome" required
							maxlength="100" placeholder="Digite o Nome Completo"
							value="${cliente.nome}">
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="masculino">Masculino</label>
						<p>
							<input type="radio" name="sexo" value="Masculino" ${cliente.sexo eq "Masculino" ? "checked" : "" }>
					</div>
					<div class="form-group col-md-3">
						<label for="feminino">Feminino</label>
						<p>
							<input type="radio" name="sexo" value="Feminino" ${cliente.sexo eq "Feminino" ? "checked" : "" }>
					</div>
					<div class="form-group col-md-6">
						<label for="profissao">Profissão *</label> <input type="text"
							class="form-control" name="profissao" id="profissao" required
							maxlength="100" placeholder="Digite a Profissão"
							value="${cliente.profissao}">
					</div>

				</div>

				<div class="row">

					<div class="form-group col-md-4">
						<label for="dataNascimento">Data de Nascimento *</label><input
							type="date" class="form-control" name="dataNascimento"
							id="dataNascimento" required maxlength="8"
							placeholder="Digite a Data de Nascimento"
							value="<fmt:formatDate value="${cliente.dataNascimento.time}" pattern="yyyy-MM-dd" />">
					</div>
					
					
					
					<div class="form-group col-md-4">
						<label for="telefone">Telefone Fixo *</label> <input type="tel"
							class="form-control" name="tel" id="inTel" required maxlength="13"
							placeholder="Digite o Telefone" value="${cliente.tel}" pattern-data="(##)####-####">
					</div>
					<div class="form-group col-md-4">
						<label for="celular">Celular *</label> <input type="tel"
							class="form-control" name="celular" id="inCel" required
							maxlength="14" placeholder="Digite o Celular" value="${cliente.cel}" pattern-data="(##)#####-####">
					</div>
					
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="endereco">Endereço *</label> <input type="text"
							class="form-control" name="endereco" id="endereco" required
							maxlength="100" placeholder="Digite o Endereço"
							value="${cliente.endereco}">
					</div>
				</div>
				<div class="row">				
					<div class="form-group col-md-8">
						<label for="email">E-Mail *</label> <input type="email"
							class="form-control" name="email" id="email" required
							maxlength="60" placeholder="Digite o E-mail" value="${cliente.email}">
					</div>
					<div class="form-group col-md-4">
						<label for="telComercial">Telefone Comercial</label> <input
							type="tel" class="form-control" name="telComercial"
							id="inTelComercial" maxlength="13" placeholder="Digite o Telefone Comercial"
							value="${cliente.telComercial}" pattern-data="(##)####-####">
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-6">
						<label for="rg">RG *</label> <input type="text"
							class="form-control" name="rg" id="inRG" required maxlength="12"
							placeholder="Digite o RG" value="${cliente.RG}" pattern-data="##.###.###-#">
					</div>
					<div class="form-group col-md-6">
						<label for="cpf">CPF *</label> <input type="text"
							class="form-control" name="cpf" id="inCPF" required maxlength="14"
							placeholder="Digite o CPF" value="${cliente.CPF}" pattern-data="###.###.###-##">
					</div>
				</div>
				<hr />
				<div id="actions" class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary" name="command"
							value="AlterarCliente">Salvar</button>
						<a href="listarClientes.jsp" class="btn btn-default">Cancelar</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Importar todos os Scripts Padrões dos Projeto -->
		<c:import url="importScript.jsp"></c:import>
</body>

</html>