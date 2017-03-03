<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!DOCTYPE html>
	
	<!-- Modal Cliente -->
	<c:import url="criarClienteModal.jsp"></c:import>
	
<form action="controller.do" method="post">
			<div id="top" class="row">
				<div class="col-md-3">
					<h2>Cliente</h2>
				</div>

				<div class="col-md-6">
					<div class="input-group h2">
						<input name="data[search]" class="form-control" id="search"
							type="text"
							placeholder="Pesquisar Clientes (deixe vazio para trazer todos)">
						<span class="input-group-btn">
							<button class="btn btn-primary" type="submit" name="command"
value="ListarClientesBuscar">
								<span class="glyphicon glyphicon-search"></span>
							</button>
						</span>
					</div>
				</div>

				<div class="col-md-3">
					<a href="#" data-toggle="modal" data-target="#cliente-modal"class="btn btn-primary pull-right h2">Novo
						Cliente</a>
				</div>
			</div>
			<!-- /#top -->
		</form>