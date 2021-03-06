<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.*"%>
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
		<div class="container">
			<div class="row">
				<div id="contatos" class="col-lg-4">
					<div id="cabecalhoContatos" class="row">
						<span id=tituloCabecalho>${cliente.nome} #${cliente.id}</span>
						<a
							class="btn btn-warning btn-xs fa fa-pencil-square-o"
							href="controller.do?command=EditarCliente&id=${cliente.id}"
							title="Editar">
						</a>
						<button id="btn${cliente.id}" type="button"
										class="btn btn-danger btn-xs fa fa-trash-o " data-toggle="modal"
										data-target="#delete-modal" data-cliente="${cliente.id}" title="Deletar"></button>
					</div>
					<div id="corpoContatos" class="row">
						<p>
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
							${cliente.email}
						</p>
						<p>
							<i class="fa fa-briefcase" aria-hidden="true"></i>
							${cliente.profissao}
						</p>
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i> ${cliente.tel}
						</p>
						<p>
							<i class="fa fa-mobile" aria-hidden="true"></i> ${cliente.cel}
						</p>
						<p>
							<i class="fa fa-phone" aria-hidden="true"></i>
							${cliente.telComercial}
						</p>
						<p>
							<i class="fa fa-birthday-cake" aria-hidden="true"></i>
							<fmt:formatDate value="${cliente.dataNascimento.time}"
								pattern="dd/MM/yyyy" />
						</p>
						<p>
							<i class="fa fa-venus-mars" aria-hidden="true"></i>
							${cliente.sexo}
						</p>
						<p>
							<i class="fa fa-map-marker" aria-hidden="true"></i>
							${cliente.endereco}
						</p>
						<p>
							<strong>RG </strong>${cliente.RG}</p>
						<p>
							<strong>CPF </strong>${cliente.CPF}</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Importar todos os Scripts Padrões dos Projeto -->
	<c:import url="importScript.jsp"></c:import>
	<script type="text/javascript">
	
	// Query para deletar o cliente
		$("#delete-modal").on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget); //botao que disparou a modal
			var recipient = button.data('cliente');
			$("#id_excluir").val(recipient);
		});
		
		// Query que ao clicar nas linhas da tabela abre o cliente clicado
		jQuery(document).on("click","#tdClick", function() {
			var id = $(this).closest('tr').find('[data-nome]').data('nome');
			window.location.href = 'controller.do?command=ClienteDetalhe&id=' + id;
		});
		
	</script>
</body>

</html>