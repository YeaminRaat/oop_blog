<?php 

namespace App\classes;

class Login
{
	function loginCheck($data)
	{
		$username = $data['username'];
		$password = md5($data['password']);
		$sql = "SELECT * FROM users WHERE username='$username' AND password='$password' ";
		$result = mysqli_query(Database::dbConn(), $sql);
		$row = mysqli_num_rows($result);

		if ($row == 1) {
			session_start();
			$sess_res = mysqli_fetch_assoc($result);
			$_SESSION['admin_username'] = $sess_res['username'];
			$_SESSION['admin_name'] = $sess_res['name'];
			header("location:index.php");
		}
		else {
			$login_error = "Username or Password Invalid.";
			return $login_error;
		}
	}
}


?>