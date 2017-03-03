<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Clientes</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Font-Awesome CSS -->
<link href="css/font-awesome.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<!-- Modal -->
	<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog"
		aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="modalLabel">Excluir Cliente</h4>
				</div>
				<div class="modal-body">Deseja realmente excluir este cliente?</div>
				<div class="modal-footer">
					<form action="controller.do" method="post">
						<input type="hidden" name="id" id="id_excluir" />
						<button type="submit" class="btn btn-primary" name="command"
							value="ExcluirCliente">Sim</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.modal -->
	
	
	<!-- Menu Navegação -->
	<c:import url="menuLateral.jsp"></c:import>


	<!-- Modal Cliente -->
	<c:import url="criarClienteModal.jsp"></c:import>


	<!-- Header -->

	<!-- todo conteúdo deve estar dentro do container-main -->
	<div class="container-main">
			<!-- Barra Ferramentas -->
		<c:import url="barraFerramentas.jsp"></c:import>
	<!-- Container Principal -->
	<div id="home-padding" class="container">
		<h3 class="page-header">Visualizar Cliente #${cliente.id}</h3>
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>Nome</strong>
				</p>
				<p>${cliente.nome}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>Sexo</strong>
				</p>
				<p>${cliente.sexo}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Profissão</strong>
				</p>
				<p>${cliente.profissao}</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>Data de Nascimento</strong>
				</p>
				<p>${cliente.dataNascimento}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Telefone Fixo</strong>
				</p>
				<p>${cliente.tel}</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>Telefone Comercial</strong>
				</p>
				<p>${cliente.telComercial}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>Endereço</strong>
				</p>
				<p>${cliente.endereco}</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>Celular</strong>
				</p>
				<p>${cliente.cel}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<p>
					<strong>E-mail</strong>
				</p>
				<p>${cliente.email}</p>
			</div>
			<div class="col-md-6">
				<p>
					<strong>RG</strong>
				</p>
				<p>${cliente.RG}</p>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<p>
					<strong>CPF</strong>
				</p>
				<p>${cliente.CPF}</p>
			</div>			
		</div>
		
		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="controller.do?command=EditarCliente&id=${cliente.id}"
					class="btn btn-primary">Editar</a> <a href="#"
					class="btn btn-danger" data-toggle="modal"
					data-target="#delete-modal">Excluir</a> <a href="listarClientes.jsp"
					class="btn btn-default">Voltar</a>
			</div>
		</div>
	</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>