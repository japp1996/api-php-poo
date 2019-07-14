<?php 
	// un slash para separar 
	define('DS', DIRECTORY_SEPARATOR);
	//devuelve el directorio raiz
	define("ROOT", realpath(dirname(__FILE__)) . DS);

	require_once "Config/Autoload.php";
	Config\Autoload::run();
	Config\Enrutador::run(new Config\Request());