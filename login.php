<!DOCTYPE html>
<html>
<head>
	<title>E-Games ゲーム</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Sen&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<style type="text/css">
		form{
			max-width: 400px;
			width: calc(100% - 30px);
			padding: 35px;
			background:  #353535;
			border-radius: 5px;
			margin: -35px 0px 0px 700px;

		}
		form h3{
			margin: 5px 0;
			color: #fff;
		}
		form input{
			padding: 7px 10px;
			width: calc(100% - 22px);
			margin-bottom: 10px;
		}
		form button{
			padding: 10px 15px;
			width: calc(100%);
			background: var(--main-red);
			border: none;
			color: #fff;
		}
		form p{
			margin: 0;
			margin-bottom: 5px;
			color: var(--main-red);
			font-size: 14px;
		}
		.imglogin{
			width: 780px;
			height: 650px;
			margin: -900px 0px 0px -15px;
		}
	</style>
</head>
<body>
	<div class="main-content">
		<div class="content-page">
			<div>
				<form action="servicios/login.php" method="POST">
					<h3>Iniciar sesión</h3>
					<input type="text" name="emausu" placeholder="Correo">
					<input type="password" name="pasusu" placeholder="Contraseña">
					<?php
						if (isset($_GET['e'])) {
							switch ($_GET['e']) {
								case '1':
									echo '<p>Error de conexión</p>';
									break;	
								case '2':
									echo '<p>Email inválido</p>';
									break;	
								case '3':
									echo '<p>Contraseña incorrecta</p>';
									break;							
								default:
									break;
							}
						}
					?>
					<button type="submit">Ingresar</button>
				</form>	
			</div>
			<div>
				<form action="servicios/register.php" method="POST">
					<h3>Regístrate</h3>
					<input type="text" name="emausur" placeholder="Correo">
					<input type="password" name="pasusur" placeholder="Contraseña">
					<input type="password" name="pasusu2r" placeholder="Confirmar contraseña">
					<?php
						if (isset($_GET['er'])) {
							switch ($_GET['er']) {
								case '1':
									echo '<p>Error de conexión</p>';
									break;	
								case '2':
									echo '<p>Email ya esta siendo usado</p>';
									break;	
								case '3':
									echo '<p>Las contraseñas no coinciden</p>';
									break;							
								default:
									break;
							}
						}
					?>
					<button type="submit">Crear cuenta</button>
				</form>
			</div>	
		</div>
	</div>
	<img class="imglogin" src="assets/Logotipo.png">
</body>
</html>