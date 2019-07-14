<?php 
namespace Model;

class Loteria {
	private $fecha;
	private $return;
	private $codigo;
	private $serial;
	private $numero;
	private $vecesapostado;
	private $monto;

	public function __construct(){
		$this->con = new Conexion();
		$this->met = new Methods();
	}

	public function set($attr, $cont){
		$this->attr = $cont;
	}

	public function get($attr){
		return $this->$attr;
	}

	public function ticketConsulta(){
		$this->attr =explode("_", $this->attr);//convertir array el serial y numero por ej. serial 1860494734333 y numero 1 entonces (1860494734333_1)
		$sql = "SELECT * FROM tickets WHERE serial = '{$this->attr[0]}' AND numero = '{$this->attr[1]}'";//consulta ambos paramentros
		$datos = $this->con->consultaRetorno($sql);
		$fila = mysqli_num_rows($datos);
		if ($fila>1) {
			$array = array();//crear array para mostrar en json todos los resultados de un ticket
			while ($row = mysqli_fetch_array($datos)){
				$numero = $row['numero'];
				$serial = $row['serial'];
				$fecha = $row['fecha'];
				$estatus = $row['estatus'];
				$premiado = $row['premiado'];
				$codigo = $row['codigo'];
				echo $array[] = json_encode(array('status' => 1, 'error' => 0, 'numero' => $numero, 'serial' => $serial, 'fecha' => $fecha, 'estatus' => $estatus, 'premiado' => $premiado, 'codigo' => $codigo));
			}
		}else{
			echo json_encode(array('status' => 0, 'error' => 0, 'description' => 'there are no records'));
		}
	}

	public function resultadoConsulta(){
		$fecha = $this->met->arrayFecha($this->attr);
		if(!$this->met->validarFecha($fecha[0])){
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'invalid date', 'return' => false));
		}else{
			$sql = $this->met->sqlByDate($fecha,"sorteos","fecha_hora");
			$datos = $this->con->consultaRetorno($sql);
			if (mysqli_num_rows($datos)>0) {//si la consulta sql devolvio registros
				$total = $this->met->sumarPelotas($datos);
				if($total == 0){//si la suma fue cero no hubo ningun resultado para ese dia
					echo json_encode(array('status' => 0, 'error' => 0 , 'description' => 'there are no results', 'return' => false));
				}
			}else{//si no hay registros para la consulta sql mostrar mensaje
				echo json_encode(array('status' => 0, 'error' => 0, 'description' => 'there are no record for this date', 'return' => false));
			}
		}
	}

	public function sorteoConsulta(){
		$fecha = $this->met->arrayFecha($this->attr);
		if(!$this->met->validarFecha($fecha[0])){
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'invalid date', 'return' => false));
			die();
		}else{
			$sql = $this->met->sqlByDate($fecha,"sorteos","fecha_hora");
			$datos = $this->con->consultaRetorno($sql);
			if (mysqli_num_rows($datos)>0) {
				while ($row = mysqli_fetch_array($datos)) {
					$id = $row['id'];
					$fecha_hora = $row['fecha_hora'];
					$estatus = $row['estatus'];
					$fecha_hora = strtotime($fecha_hora);
					//devolver registros sin condiciones
					echo json_encode(array('status' => 0, 'error' => 0, 'id' => $id, 'unixtime' => $fecha_hora, 'estatus' => $estatus));
				}
			}else{//si no hay resultados
				echo json_encode(array('status' => 0, 'error' => 0, 'description' => 'there are no record for this date', 'return' => false));
			}
		}
	}

	public function ticketRegistra($array){
		$miliseg = substr(date("u"), 0,-4);//devolver los milisegundos en 2 primeros caracteres de los 6 numeros
		$fecha = date("Y-m-d H:i:s");
		$serial = date("y-m-d-H-i-s-".$miliseg);//concatenar Año-mes-dia-hora-minuto-segundo-milisegundo separado todo por guion
		$serial = explode("-", $serial);//dividir serial
		$serial = implode("", $serial);//unir el serial en un unico numero 1806182010000
		$max = "SELECT numero FROM `tickets` ORDER BY id DESC LIMIT 1";//obtener el primer registro de la consulta
		$query = $this->con->consultaRetorno($max);
		$row = mysqli_fetch_array($query);
		$numero = $row['numero']+1;//sumarle 1 para ingresar como el siguiente numero
		$cero = str_repeat("0", 11-strlen($numero));//repetir el string 0 por 11 veces... pero restandole al 11 la cantidad de numeros del numero del ultimo registro
		$numero = $cero.$numero;//
		$contador = $this->met->contarNumeros($array);//cuenta en todas las jugadas si hay una jugada con mas de 9 numeros
		
		if (!$contador) {
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'cannot insert more than 9 numbers by play'));
			die();
		}else{
			$this->met->validarCombinacion($array);//metodo para validar que no han jugado el max de apuestas por combinacion de jugada
			$jugadas = $this->met->recorrerJugadas($array, $fecha);

			if ($jugadas) {//en caso de los 2 registros con exito
				echo json_encode(array('status' => 0, 'error' => 0, 'description' => 'data inserted successful'));
			}else{//en caso de error
				echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'data cannot be inserted'));
			}
		}
	}

	public function ticketAnula($serial){
		$select = "SELECT * FROM tickets WHERE serial = '$serial' AND estatus = '0'";
		$query = $this->con->consultaRetorno($select);
		$rows = mysqli_num_rows($query);
		if ($rows > 0){
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'data has already been canceled'));
		}else{
			$result = "SELECT serial FROM tickets WHERE serial = '$serial'";
			$query = $this->con->consultaRetorno($result);
			$row = mysqli_num_rows($query);
			$sql = "UPDATE tickets SET estatus ='0' WHERE serial ='$serial'";
			$update = $this->con->consultaSimple($sql);	
			if ($update AND $row > 0){
				echo json_encode(array('status' => 0, 'error' => 0, 'description' => 'data cancelled successful'));
			}else{
				echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'data cannot be cancelled maybe the serial not exist'));
			}
		}
	}

	public function ticketPaga($serial){
		$select = "SELECT * FROM tickets WHERE serial = '$serial'";
		$query = $this->con->consultaRetorno($select);
		$rows = mysqli_num_rows($query);
		$fetch = mysqli_fetch_array($query);
		$estatus = $fetch['estatus'];
		$premiado = $fetch['premiado'];
		
		if ($rows > 0) {
			if ($premiado == "1") {
				if ($estatus == "2") {
					echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'ticket has already been payed'));
					die();
				}
				$sql = "UPDATE tickets SET estatus = '2' WHERE serial = '$serial'";
				$update = $this->con->consultaSimple($sql);
				if ($update) {
					echo json_encode(array('status' => 0, 'error' => 0, 'description' => 'ticket payed successful'));
				} else{
					echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'the ticket cannot be inserted, try again'));
				}
			} else {
				echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'the ticket is not prized'));
			}
		} else{
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'sorry, the serial not exist'));
		}
	}

	public function premioComprobar(){
		$serial = $this->attr;
		$sql = "SELECT * FROM tickets WHERE serial = '$serial'";
		$datos = $this->con->consultaRetorno($sql);
		if (mysqli_num_rows($datos) > 0) {
			while($fetch = mysqli_fetch_array($datos)){
				$premiado = $fetch['premiado'];
				if ($premiado == "1") {
					$fecha_hora = $fetch['fecha'];
					$fecha_hora = strtotime($fecha_hora);
					echo json_encode(array('status' => 1, 'error' => 0, 'numero' => $fetch['numero'], 'timestamp' => $fecha_hora));
				}
			}
		} else {
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'the serial is wrong'));
		}
	}

	public function numeroFrecuenteConsulta($frequency){
		$numexist = array();//para almacenar los numeros que existen en la bd
		$total = array();
		$pelfreq = array();
		for ($i = 0; $i < 22; $i++){//contarFrecuencia
			$j = $i + 1;
			if ($frequency == "freq") {//si recibe freq
				$sql = "SELECT pelota".$j.", COUNT(pelota".$j.") as pel".$j." FROM sorteos GROUP BY pelota".$j." HAVING COUNT(pelota".$j.") ORDER BY pel".$j." DESC LIMIT 1";
			} else if ($frequency == "unfreq"){//si recibe unfreq
				$freq = "SELECT pelota".$j.", COUNT(pelota".$j.") as pel".$j." FROM sorteos GROUP BY pelota".$j." HAVING COUNT(pelota".$j.") ORDER BY pel".$j." DESC LIMIT 1";
				$datos = $this->con->consultaRetorno($freq);
				while ($row=mysqli_fetch_array($datos)) {//guardar en un array los mas frec
					$pelota = $row['pelota'.$j];
					array_push($pelfreq, $pelota);
				}
				$sql = "SELECT pelota".$j.", COUNT(pelota".$j.") as pel".$j." FROM sorteos GROUP BY pelota".$j." HAVING COUNT(pelota".$j.") ORDER BY pel".$j." ASC LIMIT 1";
			} else if($frequency == "retard"){//si recibe retard
				$sql = "SELECT pelota".$j.", COUNT(pelota".$j.") FROM sorteos GROUP BY pelota".$j."";
				$datos = $this->con->consultaRetorno($sql);
				while ($row = mysqli_fetch_array($datos)) {
					$pelota = $row['pelota'.$j];
					array_push($numexist, $pelota);
				}
			} else {
				echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'you have not been inserted the frequency'));
				die();
			}

			$datos = $this->con->consultaRetorno($sql);
			$row = mysqli_fetch_array($datos);
			$coma = ($i>20) ? "" : ",";
			$pelotas .= $row[0].$coma;
		}
		$pelotas = explode(",", $pelotas);//convertir en array el resultado de la consulta
		$pelotas = array_unique($pelotas);//remover valores duplicados
		$pell = array();//para almacenar los numeros frecuentes o no frecuentes
		$pel = array();//para almacenar los numeros retardados
		//Para numeros frecuentes o no frecuentes
		if ($frequency !== "retard") {
			$pelfreq = array_unique($pelfreq);//pelotas frecuentes tomadas si frequency es unfreq
			$pelotas = array_merge($pelotas,$pelfreq);//unir frecuentes y no frecuentes
			foreach ($pelotas as $key => $value) {
				if (in_array($value, $pelfreq)) {//si el valor de no frecuente existe en frecuente
					unset($pelotas[$key]);//elimina esa clave del array
				}
			}
			$pelotas = array_values($pelotas);//eliminar claves nulas
			for ($i=0; $i < count($pelotas) ; $i++) {
				$j = $i+1;
				array_push($pell, array('num'.$j => $pelotas[$i]));//almacenar freq o unfreq
			}
			echo json_encode($pell);
			die();
		}
		//Para numeros retardados
		$total = array_unique($numexist);
		$diff = array_diff(range(1, 99),$total);//tomando del 1 al 99 ver que numeros faltan en los existentes
		$diff = implode(",", $diff);//convertir en string
		$diff = explode(",", $diff);//convertir en array para asignar clave con num1...num2 etc
		for ($i=0; $i < count($diff) ; $i++) {
			$j=$i+1;
			array_push($pel, array('num'.$j => $diff[$i]));//almacenar retardados
		}
		echo json_encode($pel);
		die();
	}

	public function sorteoStatus(){
		$fechahora = $this->attr;
		$time = explode("_", $fechahora, 2);//$time[0] fecha y $time[1] hora
		$time[0] = date("Y-m-d", strtotime($time[0]));

		if ($this->met->validarFecha($time[0]) AND $this->met->validarHora($time[1])){
			$sql = "SELECT estatus FROM sorteos WHERE fecha_hora BETWEEN '{$time[0]} {$time[1]}:00' AND '{$time[0]} {$time[1]}:59'";
			$datos = $this->con->consultaRetorno($sql);
			$row = mysqli_fetch_array($datos);
			$status = $row['estatus'];
			switch ($status) {
				case '0':
					echo json_encode(array('status' => $status, 'error' => '0', 'description' => 'the draw has not started'));
					break;
				case '1':
					echo json_encode(array('status' => $status, 'error' => '0', 'description' => 'the draw has started, but not all numbers'));
					break;
				case '2':
					break;
				case '3':
					echo json_encode(array('status' => $status, 'error' => '0', 'description' => 'the draw has finished and it is the semi-official list'));
					break;
				case '4':
					echo json_encode(array('status' => $status, 'error' => '0', 'description' => 'the draw is over and the list is official'));
					break;
				default:
					echo json_encode(array('status' => '5', 'error' => '1', 'description' => 'the draw don'."'".'t exist'));
					break;
			}
		} else {
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'invalid date', 'return' => false));
		}
	}

}