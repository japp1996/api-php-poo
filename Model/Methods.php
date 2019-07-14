<?php 
namespace Model;

class Methods
{
	public function __construct(){
		$this->con = new Conexion();
	}
	//Metodos para uso general

	public function verificarMetodo($method){
		return ($method == "generatetoken") ? false : true;
	}

	public function recorrerJugadas($array, $fecha){
		for($i = 0; $i < count($array); $i++){//recorrer las jugadas
			$codigo = substr(str_shuffle("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"), 0, -49);//combinar aleatoriamente de A-Z y de 1-9 y luego devolver 13 char
			$extract = extract($array[$i]);
			$number = explode(",", $number);

			$monto = intval($timeswagered);//obtener el valor entero de la variable monto recibida en $array
			$monto = $monto * 0.10;//multiplicar por el valor del carton 0.10
			$sql .= "INSERT INTO tickets(id,codigo,serial,numero,veces_apostado,monto,id_usuario,";
			$sql3 ="fecha, estatus, premiado) VALUES (NULL, '$codigo','$serial','$numero','$timeswagered','$monto','$iduser'";
			$sql5 .=",'$fecha','1',0)";
			for ($j=0; $j < count($number); $j++) {//repetir hasta que recorrar todos los numeros apostados
				$g=$j+1;
				$sql2 .=$g."_numero,";
				$sql4 .=",'$number[$j]'";//almacene el numero apostado
			}
			$id = $this->con->consultaConId($sql.$sql2.$sql3.$sql4.$sql5);//armar el sql
			//var_dump($sql.$sql2.$sql3.$sql4.$sql5);
			for ($f=0; $f < count($draw); $f++) { //insertar con el id del ticket
				$sqlid = "INSERT INTO ticket_sorteo (id, id_ticket, id_sorteo) VALUES (NULL, '$id', '$draw[$f]')";
				$datos = $this->con->consultaSimple($sqlid);
			}
			$sql = "";$sql2 = "";$sql3 = "";$sql4 = "";$sql5 = "";
		}
		if ($datos && $id) {
			return true;
		} else {
			return false;
		}
	}
	
	public function sumarPelotas($datos){
		$array = array();//Para almacenar el resultado de la consulta
		$suma = array();//Para almacenar el total de valores de los numeros del 1 al 22
		$total = array();//Para almacenar la suma y dividirla en slashes
		$p="pelota";
		while ($row = mysqli_fetch_array($datos)) {
			$id = $row ['id'];
			$fecha_hora = $row['fecha_hora'];
			$estatus = $row['estatus'];
			$pone = $row['pelota1'];
			$ptwo = $row['pelota2'];
			$pthree = $row['pelota3'];
			$pfour = $row['pelota4'];
			$pfive = $row['pelota5'];
			$psix = $row['pelota6'];
			$pseven = $row['pelota7'];
			$peight = $row['pelota8'];
			$pnine = $row['pelota9'];$pten = $row['pelota10'];$peleven = $row['pelota11'];$ptwelve = $row['pelota12'];
			$pthirteen = $row['pelota13'];$pfourteen = $row['pelota14'];$pfifthteen = $row['pelota15'];$psixteen = $row['pelota16'];
			$pseventeen = $row['pelota17'];$peighteen = $row['pelota18'];$pnineteen = $row['pelota19'];$twenty = $row['pelota20'];
			$twentyone = $row['pelota21'];$twentytwo = $row['pelota22'];
			$unixtime = strtotime($fecha_hora);
			$cero=array_slice($row,7);//extraer una parte de un array a partir de la posicion 7 ("LOS NUMEROS DEL 1 AL 22")
			$suma=array_sum($cero);//obtener la suma de los valores de los 22 numeros
			$total.="/".$suma; //separar la suma con slashes para usarla fuera del while
			if ($suma !== 0) {//si la suma de los 22 numeros es mayor a cero quiere decir que hay uno que tiene valor
				//echo $suma."<br>";
				echo $array[] = json_encode(array('unixtime' => $unixtime, 'status' => $estatus, $p.'1' => $pone, $p.'2' => $ptwo, 
					$p.'3' => $pthree, $p.'4' => $pfour, $p.'5' => $pfive, $p.'6' => $psix, $p.'7' => $pseven, $p.'8' => $peight, 
					$p.'9' => $pnine, $p.'10' => $pten, $p.'11' => $peleven, $p.'12' => $ptwelve, $p.'13' => $pthirteen, 
					$p.'14' => $pfourteen, $p.'15' => $pfifthteen, $p.'16' => $psixteen, $p.'17' => $pseventeen, $p.'18' => $peighteen, 
					$p.'19' => $pnineteen, $p.'20' => $twenty, $p.'21' => $twentyone, $p.'22' => $twentytwo));							
			}
		}
		$total = explode("/", $total);//separar la suma separada
		$total = array_sum($total);//calcula la suma de los valores de suma separada con slashes
		return $total;
	}

	public function validarFecha($fecha){
		//realizar una comparacion con una expresion regular
		//verificar el primer valor tenga 4 digitos y puede ser del 0 al 9  y tener guion  [año]
		//luego debe empezar con 0 y puede seguir con 1 al 9.... o debe empezar con 1 pero debe ser del 0 al 2   y tener guion  [mes]
		//luego debe empezar con 0 y puede seguir con 1 al 9.... o puede empezar con 1 pero debe seguir con 0 al 9 o empezar con 3 y seguir con 0 al 1  [dia]
		if ($fecha === "1969-12-31"){
			return $this->return = false;
		} else if (preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/",$fecha)) {
			return $this->return = true;
		}else {
			return $this->return = false;
		}
	}

	public function validarHora($hora){
		if (preg_match("/^(0[1-9]|1[1-9]|2[1-3]):(0[1-9]|[1-5][0-9])$/", $hora)) {
			return true;
		} else {
			return false;
		}
	}

	public function contarNumeros($array) {
		$arra = array();
		for($i = 0; $i < count($array); $i++){//recorrer las jugadas
			$extract = extract($array[$i]);
			$number = explode(",", $number);
			$coma = ($i>count($array)-2) ? "" : ",";
			$numnum .= count($number).$coma;
		}
		$numnum = explode(",", $numnum);
		$max = max($numnum);
		if ($max > 9) {
			return false;
		}else{
			return true;
		}
	}

	public function validarCombinacion($array){
		$todo = array();
		foreach ($array as $key => $value) {
			array_push($todo, $value);
		}

		$iduser = "".$todo[0]['iduser'];
		$taquilla = "SELECT max_veces_apostar FROM taquillas WHERE id_usuario = '$iduser'";
		$maxveces = $this->con->consultaRetorno($taquilla);
		$numrows = mysqli_num_rows($maxveces);
		if ($numrows == 0) {
			echo json_encode(array('status' => '0', 'error' => 0, 'description' => 'sorry, maybe the id user is not register'));
			die();
		}
		$row = mysqli_fetch_array($maxveces);
		$maxvecesapost = $row['max_veces_apostar'];

		for($i=0;$i<count($todo);$i++){//recorre las jugadas
		    $todo[$i] = array($todo[$i]['number'] => $todo[$i]['timeswagered']);//mete en un array otro array con todos los numeros y veces jugados
		}

		foreach($todo as $todo){//
			foreach ($todo as $clave=>$valor) { 
				$totalvez[$clave]+=$valor; 
			} 
		} 

		foreach ($totalvez as $key => $value) {
			if ($value > $maxvecesapost) {
				echo json_encode(array('status' => 0, 'error' => 0, 'description' => 'cannot wager '. $key .' more than your allowed limit'));
				die();
			}else{
				return true;
			}
		}
	}

	public function arrayFecha($fecha){
		$fecha = explode("_", $fecha);//separar el rango de fecha separado por un _ por ej. 28-08-2018_30-08-2018
		$fecha[0] = date("Y-m-d", strtotime($fecha[0]));//obtener la primera fecha
		$fecha[1] = date("Y-m-d", strtotime($fecha[1]));//obtener la segunda fecha
		return $fecha;
	}

	public function sqlByDate($fecha,$tabla,$campo){
		if ($fecha[1] == "1969-12-31"){//este es el valor de la "SEGUNDA" fecha si se deja en blanco
			$sql = "SELECT * FROM $tabla WHERE $campo BETWEEN '$fecha[0]' AND '$fecha[0] 23:59:59'";//rango de una sola fecha
			return $sql;
		}else if ($fecha[1]) {
			$sql = "SELECT * FROM $tabla WHERE $campo BETWEEN '$fecha[0]' AND '$fecha[1] 23:59:59'";//rango de dos fechas
			return $sql;
		}
	}

}