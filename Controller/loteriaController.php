<?php 
namespace Controller;
use Model\Loteria;
use Model\Auth;
use Model\Methods;
use Config\Request;

class loteriaController {
	private $lot;
	private $request;
	private $auth;

	public function __construct(){
		$this->auth = new Auth();
		$this->request = new Request;
		$method = $this->request->getMethod();
		$this->methods = new Methods;
		if ($this->methods->verificarMetodo($method) == true) {
			$get = file_get_contents("php://input"); 
			$data = json_decode($get, true);
			$headers = apache_request_headers();
			$this->auth->verificarToken($data, $headers);
			$this->lot = new Loteria;
		}
	}

	public function index(){
		//echo "";
	}

	public function generateToken() {
		$data = file_get_contents("php://input");
		$data = json_decode( $data, true );
		$datos = $this->auth->generateAuthToken($data);
	}

	public function query_ticket($numero){//consulta ticket por serial_numero
		$this->lot->set("id", $numero);
		$datos = $this->lot->ticketConsulta();
	}

	public function result_lotto($fecha){//consulta resultados de sorteos que ya han comenzado por fecha yyy-mm-dd_yy-mm-dd
		$this->lot->set("fecha", $fecha);
		$datos = $this->lot->resultadoConsulta();
	}

	public function query_draw($fecha){//consulta resultados de sorteos por fecha yyy-mm-dd_yy-mm-dd
		$this->lot->set("fecha", $fecha);
		$datos = $this->lot->sorteoConsulta();
	}

	public function add_ticket(){//registrar un ticket con varias jugadas
		if (!isset($_POST)){echo "";}
		else{
			// Obtenemos el json enviado
			$data = file_get_contents("php://input");
			$data = json_decode( $data, true );
			$this->lot->ticketRegistra($data);
		}
	}

	public function cancel_ticket(){
		$data = file_get_contents("php://input");
		$this->lot->ticketAnula($data);
	}

	public function pay_ticket(){
		$data = file_get_contents("php://input");
		$this->lot->ticketPaga($data);
	}

	public function check_prize($serial){
		$this->lot->set("serial", $serial);
		$datos = $this->lot->premioComprobar();
	}

	public function query_num($freq){
		$datos = $this->lot->numeroFrecuenteConsulta($freq);
	}

	public function status_draw($fechahora){
		$this->lot->set("fechahora", $fechahora);
		$datos = $this->lot->sorteoStatus();
	}
}