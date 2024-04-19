<?php

class connect {
	
	public $host;
	public $user;
	public $pass;
	public $db;
	public $connect;

	public function get_connect(){
		$this->host = 'localhost';
		$this->user = 'root';
		$this->pass = '';
		$this->db   =  'agroshop';

		$connect = new mysqli($this->host, $this->user, $this->pass, $this->db);
        echo 'Debug point 1<br>';
        if($connect->connect_error) {
            echo 'Sorry :(<br>';
        } else {
            echo 'Connection successful!<br>';
            return $connect;
        }
	}

}

$getconnect = new connect;

?>