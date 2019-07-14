<?php
namespace Model;

class Auth
{
	private $iduser;

	public function __construct() {
		$this->con = new Conexion();
	}

	public function verificarToken($data, $headers) {
		for ($i=0; $i < count($data); $i++) { 
			$extract = extract($data);
		}
		
		if (isset($headers["authorization"])) {
			$decrypt = md5(md5(md5(convert_uuencode(json_encode(base64_encode($headers["authorization"]))))));
			//echo $decrypt;
			$sql = "SELECT * FROM oauth WHERE oauth_token = '$decrypt'";
			$data = $this->con->consultaRetorno($sql);
			$row = mysqli_num_rows($data) > 0;
			if (!$row) {
				json_encode(array('status' => 0, 'error' => 1, 'description' => 'Has not been autenticaded'));
				die();
			}
		
		} else {
			echo json_encode(array('status' => 0, 'error' => 1, 'description' => 'You have to send the token authentication'));
			die();
		}
	}

	public function generateAuthToken($datos) {
		for ($i=0; $i < count($datos) ; $i++) {
			$extract = extract($datos);
		}

		$n = strlen($name).strlen($email);
		
		$public = openssl_random_pseudo_bytes($n);
		$public = substr(bin2hex($public), 0, 14);//el token
		$token = md5(md5(md5(convert_uuencode(json_encode(base64_encode($public))))));
		$select = "SELECT * FROM oauth WHERE oauth_email = '$email' ORDER BY id DESC LIMIT 1";
		$ultimo = $this->con->consultaRetorno($select);

		if ( mysqli_num_rows($ultimo) > 0) {
			$sql = "UPDATE oauth SET oauth_token = '$token' WHERE oauth_email = '$email'";
		} else {
			$sql = "INSERT INTO oauth (id, oauth_project_name, oauth_token, oauth_email) VALUES (NULL, '$name', '$token', '$email')";
		}
		$data = $this->con->consultaSimple($sql);
		echo json_encode(array('status' => 0, 'error' => 1, 'token' => $public));
	}

}