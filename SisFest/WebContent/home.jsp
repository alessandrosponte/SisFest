<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SisFest - Gerenciamento eficiente de eventos e festas</title>

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
		
		
		<!-- Footer -->
		

	</div>
	<!-- Fim do container-main -->

	<!-- Importar todos os Scripts Padrões dos Projeto -->
	<c:import url="importScript.jsp"></c:import>
	

</body>

</html>