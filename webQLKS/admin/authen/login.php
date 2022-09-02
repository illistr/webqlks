<?php

	session_start();

	require_once('../../utils/utility.php');

	require_once('../../database/dbhelper.php');

	require_once('process_form_login.php');
 	// 	$user = getUserToken();
	// 		if ($user != null){
	// 	 		header('Location: ../');
	// 	 		 die();
	// }

?>


<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<meta charset="utf-8">
	<link rel="icon" type="image/png" href="https://gokisoft.com/uploads/2021/03/s-568-ico-web.jpg" />
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url(../../assets/photos/login.jpg);background-size: 1550px 800px; background-repeat: no-repeat;
">
	<div class="container">
		<div class="panel panel-primary" style="width: 480px;margin:0px auto; margin-top: 100px; background-color: white;padding: 16px;border-radius: 5px;box-shadow: 5px 10px grey;">
			<div class="panel-heading">
				<h2 class="text-center">Đăng Nhập</h2>
				<h5 style="color: red;" class="text-center"><?=$msg?></h5>

			</div>
			<div class="panel-body">
				<form method="post" >
					
				  

				<div class="form-group">
				  <label for="email">Email:</label>
				  <input required="true" type="email" class="form-control" id="email" name="email" value="<?=$email?>"">
				</div>

				
				<div class="form-group">
				  <label for="pwd">Mật Khẩu:</label>
				  <input required="true" type="password" class="form-control" id="pwd" name="password" minlength="6">
				</div>
				
				
			
				<p>
					<a href="register.php">Đăng kí tài khoản mới</a>
				</p>
				<button class="btn btn-success" type='submit' >Đăng Nhập</button>
				</form>
			</div>
		</div>
	</div>


</body>
</html>

<!-- <div class="form-group">
				  <label for="pwd">SDT</label>
				  <input required="true" type= "text" class="form-control" id="SDT" name="SDT">
				</div>

				<div class="form-group">
				  <label for="pwd">Địa Chỉ</label>
				  <input required="true" type= "text" class="form-control" id="DiaChi" name="DiaChi">
				</div> -->
