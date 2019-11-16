<?php 

namespace App\classes;

class Database
{
	public static function dbConn(){
		$host = "localhost";
		$user = "root";
		$pass = "";
		$db = "oop_blog";
		$conn = mysqli_connect($host, $user, $pass, $db);
		if ($conn->connect_error) {
    		die("Connection failed: " . $conn->connect_error);
		}
		return $conn;
	}
}



?>