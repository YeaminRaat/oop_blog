<?php 

session_start();
if (isset($_SESSION['admin_username'])) {
    header("location:index.php");
}

require_once "../vendor/autoload.php";

$data = new App\classes\Login();

$login_err = "";

if (isset($_POST['login'])) {
    if (!empty($_POST['remember'])){
        setcookie("username", $_POST['username'], time()+(86400 * 30));
        setcookie("password", $_POST['password'], time()+(86400 * 30));
    }else{
        setcookie("username","");
        setcookie("password","");
    }
    $login_err = $data->loginCheck($_POST);
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link rel="shortcut icon" href="img/favicon.html">

    <title>Login Page</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />


</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" action="#" method="POST">
        <h2 class="form-signin-heading">sign in now</h2>
        <div class="login-wrap">
            <input type="text" class="form-control" name="username" value="<?= isset($_COOKIE['username']) ? $_COOKIE['username'] : '' ; ?>" placeholder="username" autofocus>
            <input type="password" class="form-control" name="password" value="<?= isset($_COOKIE['password']) ? $_COOKIE['password'] : '' ; ?>" placeholder="password">
            <label class="checkbox">
                <input type="checkbox" name="remember" <?= isset($_COOKIE['username']) ? 'checked' : '' ; ?>> Remember me
                <span class="pull-right">
                    <a data-toggle="modal" href="#">&nbsp Forgot Password?</a>
                </span>
            </label>
            <button class="btn btn-lg btn-login btn-block" name="login" type="submit">Login</button>
            <p><span style="color:#060101"><?=  $login_err; ?></span></p>

            <!-- <div class="registration">
                Don't have an account yet?
                <a class="" href="registration.html">
                    Create an account
                </a>
            </div> -->

        </div>

      </form>

    </div>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>


  </body>

</html>
