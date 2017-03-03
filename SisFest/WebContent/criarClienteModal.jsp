<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="modal fade" id="cliente-modal" tabindex="-1" role="dialog"
	aria-labelledby="modalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Fechar">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="modalLabel">Novo Cliente</h4>
			</div>
			<div class="modal-body">
				<form name="form1" action="controller.do" method="post">
					<!-- area de campos do form -->
					<div class="row">

						<div class="form-group col-md-12">
							<label for="nome">Nome Completo *</label> <input type="text"
								class="form-control" name="nome" id="nome" required
								maxlength="60" placeholder="Digite o Nome Completo" autofocus>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-3">
							<label for="masculino">Masculino</label>
							<p>
								<input type="radio" name="sexo" required value="Masculino">
						</div>
						<div class="form-group col-md-3">
							<label for="feminino">Feminino</label>
							<p>
								<input type="radio" name="sexo" required value="Feminino">
						</div>
						<div class="form-group col-md-6">
							<label for="profissao">Profissão *</label> <input type="text"
								class="form-control" name="profissao" id="profissao" required
								maxlength="60" placeholder="Digite a Profissão">
						</div>

					</div>

					<div class="row">

						<div class="form-group col-md-4">
							<label for="dataNascimento">Data de Nascimento *</label><input
								type="date" class="form-control" name="dataNascimento"
								id="dataNascimento" required maxlength="8"
								placeholder="Digite a Data de Nascimento">
						</div>
						<div class="form-group col-md-4">
							<label for="tel">Telefone Fixo *</label> <input type="tel"
								class="form-control" name="tel" id="inTel" required maxlength="13"
								placeholder="Digite o Telefone" pattern-data="(##)####-####">
						</div>
						<div class="form-group col-md-4">
							<label for="celular">Celular *</label> <input type="tel"
								class="form-control" name="celular" id="inCel" required maxlength="14"
								placeholder="Digite o Celular" pattern-data="(##)#####-####">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="endereco">Endereço *</label> <input type="text"
								class="form-control" name="endereco" id="endereco" required
								maxlength="80" placeholder="Digite o Endereço">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-8">
							<label for="email">E-Mail *</label> <input type="email"
								class="form-control" name="email" id="email" required
								maxlength="40" placeholder="Digite o E-mail">
						</div>
						<div class="form-group col-md-4">
							<label for="telComercial">Telefone Comercial</label> <input
								type="tel" class="form-control" name="telComercial"
								id="inTelComercial" maxlength="13"
								placeholder="Digite o Telefone Comercial" pattern-data="(##)####-####">
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-6">
							<label for="rg">RG *</label> <input type="text"
								class="form-control" name="rg" id="inRG" required maxlength="12"
								placeholder="Digite o RG" pattern-data="##.###.###-#">
						</div>
						<div class="form-group col-md-6">
							<label for="cpf">CPF *</label> <input type="text"
								class="form-control" name="cpf" id="inCPF" required maxlength="14"
								placeholder="Digite o CPF" pattern-data="###.###.###-##">
						</div>
					</div>



					<div class="modal-footer">
						<input type="hidden" name="id" id="id_excluir" />
						<button type="submit" class="btn btn-primary" name="command"
							value="CriarCliente">Salvar</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>