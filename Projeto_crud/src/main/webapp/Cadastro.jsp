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
<title>Cadastro</title>

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

<body>

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
							href="#">Promoções</a></li>
						<li class="nav-item"><a class="nav-link" href="contato.html">Contato</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Cadastro.jsp">Entre
								ou Cadastre-se</a></li>

					</ul>
				</div>
			</div>
		</nav>
	</header>



	<div class="container" id="formlario">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1>Formulário de Registro</h1>

				<form class="md-5" action="CreateController" method="POST">
					<div class="form-group">
						<label for="nomeCliente">Nome:</label> <input type="text"
							id="nomeCliente" name="nomeCliente" required>
					</div>
					<div class="form-group">
						<label for="cpfCliente">CPF: </label> <input type="text"
							id="cpfCliente" name="cpfCliente" required>
					</div>
					<div class="form-group">
						<label for="enderecoCliente">Endereço:</label> <input type="text"
							id="enderecoCliente" name="enderecoCliente" required>
					</div>
					<div class="form-group">
						<label for="telefoneCliente">Telefone:</label> <input type="text"
							id="telefoneCliente" name="telefoneCliente" required>
					</div>

					<div class="form-group">
						<label for="emailCliente">Login:</label> <input type="text"
							id="emailCliente" name="emailCliente" required>
					</div>
					<div class="form-group">
						<label for="senhaCliente">Senha:</label> <input type="password"
							id="senha" name="senhaCliente" required>
					</div>
					<button type="submit" value="Registrar"
						class="btn btn-primary md-5">Cadastrar</button>

				</form>

			</div>
		</div>
	</div>
</body>
</html>