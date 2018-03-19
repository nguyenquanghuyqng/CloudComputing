
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>MECUTE</title>
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="Style/Login/css/font-awesome.css">
	<link rel="stylesheet" href="Style/Login/css/style.css">
	<!-- google fonts  -->
	<link rel="stylesheet" href="Style/Login/css/font1.css">
	<link rel="stylesheet" href="Style/Login/css/font2.css">
</head>
<body>
	<div class="agile-login">
		<h1>Winter Login Form</h1>
		<div class="wrapper">
			<h2>Sign In</h2>
			<div class="w3ls-form">
				<form action="/loginadmin" method="post">
					<label>Username</label>
					<input type="text" name="name" placeholder="Username" id="name" required/>
					<label>Password</label>
					<input type="text" name="password" placeholder="Password" id="password" required />
					<a href="#" class="pass">Forgot Password ?</a>
					<input type="submit" value="Log In" />
				</form>
			</div>
			
			<div class="agile-icons">
				<a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
				<a href="#"><span class="fa fa-facebook"></span></a>
				<a href="#"><span class="fa fa-pinterest-p"></span></a>
			</div>
		</div>
		<br>
	</div>
	
</body>
</html>