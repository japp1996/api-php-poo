<?php 
namespace Config;

	class Enrutador{

		public static function run(Request $request){

			$controller = $request->getController() . "Controller";
			//print $controller . "<br>";
			//DIRECTORIO/Controller      /    lo que retorne el metodo getControler en la clase loteriaController   .php 
			$ruta = ROOT . "Controller" . DS . $controller . ".php";
			//print $ruta . "<br>";
			$method = $request->getMethod();
			//print $method . "<br>";
			if ($method == "index.php") {
				$method = "index";
			}
			$argument = $request->getArgument();
			//print_r($argument);
			if (is_readable($ruta)) {
				require_once $ruta;
				$mostrar = "controller\\" . $controller;
				//print $mostrar;
				$controller = new $mostrar;

				if (!isset($argument)) {
					call_user_func(array($controller, $method));
				}else{
					call_user_func_array(array($controller, $method), $argument);
				}
			}/*else{
				$controller = "query";
				$method = "index";*/
		}
	}
		
?>