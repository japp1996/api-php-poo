<?php 
namespace Config;

	/**
	 * 
	 */
	class Autoload{
		public static function run(){
			spl_autoload_register(function($archive){
				$ruta = str_replace("\\", "/", $archive) . ".php";
				include_once $ruta;
				/*if (is_readable($ruta)) {
					include_once $ruta;
				}*/
			});
		}
	}