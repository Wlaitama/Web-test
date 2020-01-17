<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="utf-8"> 
 <title>Регистрация</title>
	</head>
	<body>
<div class="register">
<div id="login">
 <h1 class="reg-title">Регистрация</h1>
<form action="signup.php" id="registerform" method="post" name="registerform">
 <p><label for="last_name">Фамилия<br>
 <input class="input" id="last_name" name="last_name" size="32" type="text" value=""></label></p>
 <p><label for="first_name">Имя<br>
 <input class="input" id="first_name" name="first_name" size="32" type="text" value=""></label></p>
 <p><label for="phone">Телефон<br>
 <input class="input" id="phone" name="phone" size="32" type="phone" value=""></label></p>
<p><label for="user_email">E-mail<br>
<input class="input" id="email" name="email" size="32"type="email" value=""></label></p>
<p><label for="user_pass">Пароль<br>
<input class="input" id="password" name="password"size="32"   type="password" value=""></label></p>
<p class="submit">
 
<input class="button" id="signup" name= "signup" type="submit" value="Зарегистрироваться"></p>
 </form>
</div>
        </div>
</body>

</html>
    <?php
require_once 'php/connection.php';
    $link = mysqli_connect($host,$user,$password,$database) or die("Ошибка" . mysqli_error($link));
	if(isset($_POST["signup"])){
	if(!empty($_POST['last_name']) && !empty($_POST['first_name']) && !empty($_POST['email']) && !empty($_POST['password'])) {
  $last_name= htmlspecialchars($_POST['last_name']);
	$first_name=htmlspecialchars($_POST['first_name']);
        $phone=htmlspecialchars($_POST['phone']);
        $email=htmlspecialchars($_POST['email']);
 $password=htmlspecialchars($_POST['password']);
        $query=mysqli_query($link, "SELECT max(user_id) FROM _user");
        $result = $query->fetch_row();
        $login=($result[0]+1) . "1";
 $query=mysqli_query($link, "SELECT * FROM _user WHERE email='$email'");
  $numrows=mysqli_num_rows($query);
         
if($numrows==0)
   {
	$sql="INSERT INTO _user
  (login,email,password,first_name,last_name,phone, verification)
	VALUES('$login','$email', '$password', '$first_name','$last_name','$phone',0)";
  $result=mysqli_query($link, $sql);
 if($result){
	echo  "Регистрация прошла успешно";
     header( "Location: index.php" );
    } else {
      echo  "Ошибка в добавлении данных";
       }
       } else {
       echo  "Такой пользователь уже существует";
        }
       } else {
       echo  "Ошибка добавления";
       }
       }
mysqli_close($link);
	?>