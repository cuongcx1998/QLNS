<!DOCTYPE html>
<html lang = "eng">
	<head>
		<title>Quản lý nhân sự</title>
		<meta charset = "utf-8" />
		<link rel = "shortcut icon" href = "">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel = "stylesheet" href = "css/bootstrap.css">
		<link rel = "stylesheet" href = "css/bootstrap.min.css">
		<link rel="stylesheet" href = "css/login.css">
		<style type="text/css">
			#sidelogin{
				width:25%;
				float:right;
				position:relative;
				top:120px;
				right:20px;
				padding:10px;
				border-radius:5px;
				height:350px;
				background-color:rgba(255, 255, 255, 0.6);
				border:1px solid #e7e7e7;
			}
		</style>
	</head>
<body>
	<div class = "navbar navbar-default" style="background-color:#9494b5;">
		<img src = "" style = "float:center;" height = "60px" /><span class = "navbar-brand">Quản lý nhân sự</span>
	</div>
	<div id = "top" class = "login">
		<div class = "panel panel-primary">
			<div class = "panel-heading">
				<center><h1 class = "panel-title">Đăng nhập </h1></center>
			</div>
			<div class = "panel-body">
				<form enctype = "multipart/form-data" action = "login_query.php" role = "form" method = "POST">
					<div class = "form-group">
						<label for = "username">Tên tài khoản</label>
						<input class = "form-control" name = "admin_user" placeholder = "Tên tài khoản" type = "text" required = "required" >
					</div>
					<div class = "form-group">
						<label for = "password">Mật khẩu</label>
						<input class = "form-control" name = "admin_pass" placeholder = "Mật khẩu" type = "password" required = "required" >
					</div>
					<div class = "form-group">
						<button class = "btn btn-block btn-success" name = "login"><span class = "glyphicon glyphicon-log-in"></span> Đăng nhập</button>
					</div>
				</form>
			</div>
		</div>	
	</div>
	
</body>
<?php
	include("script.php");
?>
<script type = "text/javascript">
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>
</html>