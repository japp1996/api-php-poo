<?php 
namespace Model;
	/**
	 * 
	 */
	class Conexion {

		private $id;
		private $datos = array(
			"host" => "localhost", 
			"user" => "lottoservice", 
			"pass" => "2i0kezFclG5wfMiL", 
			"db" => "lotto9service"
		);
		private $con;
		
		public function __construct(){
			$this->con = new \mysqli($this->datos['host'],$this->datos['user'], $this->datos['pass'],$this->datos['db']);
		}

		public function consultaConId($sql){
			$datos = $this->con->query($sql);
			$id = $this->con->insert_id;
			return $id;
		}

		public function consultaSimple($sql){
			$datos = $this->con->query($sql);
			return $datos;
		}

		public function consultaRetorno($sql){
			$datos = $this->con->query($sql);
			return $datos;
		}
	}