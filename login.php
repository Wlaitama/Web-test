<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="UTF-8">
    <title>Авторизация</title>
</head>
<body>
    <div class="login">
		<div class="container">
			<div class="login__inner">
				<form class="" method="post">
					<span class="form-title">
						Добро пожаловать
					</span>

					<div class="-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<label for="email">Email:</label><br>
						<input class="" type="email" name="email" id="email">
						<span class="-input100" data-placeholder="Email"></span>
					</div>

					<div class="-input100 validate-input" data-validate="Enter password">
						<label for="password">Пароль: </label><br>
						<input class="input100" type="password" name="password" id="password"><br>
						<input type="checkbox" name="remember_me" checked="checked" /> Запомнить меня
					</div>

					<div class="">
							<div class="login100-form-bgbtn"></div>
							<input class="button" id="avthorization" name= "avthorization" type="submit" value="Войти">
						</div>
					

					<div class="text-center p-t-115">
						<span class="txt1">
							Нет акаунта?
						</span>

						<a class="txt2" href="signup.php">
							Зарегистрироваться
						</a>
					</div>
					
				</form>
				</div>
			</div>
		</div>
	
	

	<div id="dropDownSelect1"></div>
</body>
</html>
	<?php
    require_once 'php/connection.php';
    $link = mysqli_connect($host,$user,$password,$database) or die("Ошибка" . mysqli_error($link));

    if(isset($_POST['avthorization'])){
      header( "Location: index.php" );}
    mysqli_close($link);
    ?>