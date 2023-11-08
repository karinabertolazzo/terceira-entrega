<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="style/styleLista.css">
<title>Atualizar</title>
</head>
<body>
    <!-- Cabeçalho -->
  <header>


		<nav
			class="navbar navbar-expand-lg navbar-light bg-light p-2 shadow bg-transparent">
			<div class="container nav">
				<a class="navbar-brand fw-bold" href="#">Bertolazzo<span
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
							href="#">Início</a></li>
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


	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1 class="mt-5" >Atualizar de Cliente</h1>
				<form class="mt-5" action="UpdateController" method="post">
				
				<div class="form-group">
						<label for="idCliente">ID:</label> <input type="text"
							class="form-control" id="idCliente" name="idCliente" value="${client.idCliente}" readonly>
					</div>
					<div class="form-group">
						<label for="nomeCliente">Nome:</label> <input type="text"
							class="form-control" id="nomeCliente" name="nomeCliente" value="${client.nomeCliente}" required>
					</div>
					<div class="form-group">
						<label for="cpfCliente">CPF:</label> <input type="text"
							class="form-control" id="cpfCliente" name="cpfCliente" value="${client.cpfCliente}" required>
					</div>
					
					<div class="form-group">
						<label for="enderecoCliente">Endereço:</label> <input type="text"
							class="form-control" id="enderecoCliente" name="enderecoCliente" value="${client.enderecoCliente}" required>
					</div>
					<div class="form-group">
						<label for="telefoneCliente">Telefone:</label> <input type="text"
							class="form-control" id="telefoneCliente" name="telefoneCliente" value="${client.telefoneCliente}" required>
					</div>
					<div class="form-group">
						<label for="emailCliente">Email:</label> <input type="text"
							class="form-control" id="emailCliente" name="emailCliente" value="${client.emailCliente}" required>
					</div>
					<div class="form-group">
						<label for="senhaCliente">Senha:</label> <input type="password"
							class="form-control" id="senhaCliente" name="senhaCliente" value="${client.senhaCliente}" required>
					</div>
					<button type="submit" class="btn btn-primary">Atualizar</button>
				</form>
			</div>
		</div>
	</div>
	 <!-- Rodapé -->
   
 
	<!-- Inclua os scripts do Bootstrap via CDN -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</body>
</html>