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
		<c:import url="menuCliente.jsp"></c:import>
			<hr />
			<c:if test="${not empty lista}">
			<c:forEach var="cliente" items="${lista}">
				<div id="list" class="row">

					<div id="tableContatos" class="table-responsive col-lg-8 col-md-8 mainContainer">
						<table id="tableTrClick" class="table table-striped table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Nome</th>
									<th>Telefone</th>
									<th>Celular</th>
									<th>E-mail</th>
									<th class="actions">Ações</th>
								</tr>
							</thead>
							<tbody>
								
									<tr class="trClick">
										<td data-nome="${cliente.id}" id="tdClick">${cliente.id}</td>
										<td data-nome="${cliente.nome}" id="tdClick">${cliente.nome}</td>
										<td data-nome="${cliente.tel}" id="tdClick">${cliente.tel}</td>
										<td data-nome="${cliente.cel}" id="tdClick">${cliente.cel}</td>
										<td data-nome="${cliente.email}" id="tdClick">${cliente.email}</td>
										<td class="actions"><a class="btn btn-success btn-xs fa fa-eye"
									href="controller.do?command=VisualizarCliente&id=${cliente.id}" title="Visualizar"></a>
									<a class="btn btn-warning btn-xs fa fa-pencil-square-o"
									href="controller.do?command=EditarCliente&id=${cliente.id}" title="Editar"></a>
									<button id="btn${cliente.id}" type="button"
										class="btn btn-danger btn-xs fa fa-trash-o " data-toggle="modal"
										data-target="#delete-modal" data-cliente="${cliente.id}" title="Deletar"></button>
									</td>
									</tr>
								
							</tbody>
						</table>

					</div>
					<div id="contatos" class="col-lg-4 col-md-4">
					<div id="cabecalhoContatos" class="row">
						<span id=tituloCabecalho>${cliente.nome} #${cliente.id}</span> <a
							class="btn btn-warning btn-xs fa fa-pencil-square-o"
							href="controller.do?command=EditarCliente&id=${cliente.id}"
							title="Editar">
							</a>
							<a
							class="btn btn-danger btn-xs fa fa-trash-o" data-toggle="modal"
								data-target="#delete-modal"
							href="controller.do?command=EditarCliente&id=${cliente.id}"
							title="Editar">
							</a>
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
							<fmt:formatDate value="${cliente.dataNascimento.time}" pattern="dd/MM/yyyy" />
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
				</c:forEach>
				<!-- /#list -->

				<div id="bottom" class="row">
					<div class="col-lg-12 col-md-12">
						<!-- paginação ainda não foi implementada -->
						<ul class="pagination">
							<li class="disabled"><a>&lt; Anterior</a></li>
							<li class="disabled"><a>1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li class="next"><a href="#" rel="next">Próximo &gt;</a></li>
						</ul>
						<!-- /.pagination -->

					</div>
				</div>
			</c:if>
			<!-- /#bottom -->
		</div>
	</div>
	<!-- /#main -->
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
			window.location.href = 'controller.do?command=VisualizarCliente&id=' + id;
		});
		
	</script>
</body>

</html>