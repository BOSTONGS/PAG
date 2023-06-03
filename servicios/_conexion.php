<?php
	$servername = "localhost";    // Dirección IP o nombre del servidor
	$username = "root";    // Usuario de la base de datos
	$password = "";    // Contraseña del usuario
	$database = "database";    // Nombre de la base de datos
	
	// Crear la conexión
	$con = new mysqli($servername , $username, $password, $database);
	
	// Comprobar si la conexión fue exitosa
	if ($con->connect_error) {
		die("Conexión fallida: " . $con->connect_error);
	}
	echo "Conexión exitosa a la base de datos";

	// Cerrar la conexión
	//$con->close();
	return $con;
	?>
