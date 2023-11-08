<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="assets/img/favicon.ico.png"
	type="image/x-icon">
<title>Lista de Clientes</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="style/styleLista.css">



</head>

<body class="text-center">
    <!-- Cabeçalho -->
   <header>


		<nav
			class="navbar navbar-expand-lg navbar-light bg-light p-2 shadow bg-transparent">
			<div class="container nav">
				<a class="navbar-brand fw-bold" href="../index.html">Bertolazzo<span
					style="color: aquamarine;"> Ilhas</span></a>


				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>


				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link "
							href="../index.html">Início</a></li>
						<li class="nav-item"><a class="nav-link" href="destinos.html">Destino</a>
						</li>
						<li class="nav-item"><a class="nav-link"
							href="promocoes.html">Promoções</a></li>
						<li class="nav-item"><a class="nav-link" href="contato.html">Contato</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Cadastro.jsp">Entre
								ou Cadastre-se</a></li>

					</ul>
				</div>
			</div>
		</nav>
	</header>
	<h1 class="mt-5">Lista de Clientes</h1>
	
	<div class="container mt-5" id="lista">
	
	
	<a href="./Cadastro.jsp" class="btn btn-primary mb-5">Criar novo</a>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>CPF</th>
					<th>Endereço</th>
					<th>Telefone</th>
					<th>Email</th>
					
				
	
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clients}" var="client">
					<tr>
						<td>${client.idCliente}</td>
						<td>${client.nomeCliente}</td>
						<td>${client.cpfCliente}</td>
						<td>${client.enderecoCliente}</td>
						<td>${client.telefoneCliente}</td>
						<td>${client.emailCliente}</td>
						<td>${client.senhaCliente}</td>
						
						
						
						<td>
							<a href="UpdateController?idCliente=${client.idCliente}" class="btn btn-success">Editar</a>
							<a href="DeleteController?idCliente=${client.idCliente}"
							class="btn btn-danger">Excluir</a>
						</td> 
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

 
	<!-- Inclua os scripts do Bootstrap via CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</body>
</html>


