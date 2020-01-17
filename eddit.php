<?php
header("Location: account.php");
$id = $_COOKIE['sushi'];
require_once 'php/connection.php';
    $link = mysqli_connect($host,$user,$password,$database) or die("Ошибка" . mysqli_error($link));
	if(isset($_POST["eddit"])){
	if(!empty($_POST['last_name']) && !empty($_POST['first_name']) && !empty($_POST['email']) && !empty($_POST['password'])) {
  $last_name= htmlspecialchars($_POST['last_name']);
	$first_name=htmlspecialchars($_POST['first_name']);
        $phone=htmlspecialchars($_POST['phone']);
        $email=htmlspecialchars($_POST['email']);
 $password=htmlspecialchars($_POST['password']);
 $password=md5($password);
	$sql="UPDATE _user SET first_name='$first_name',last_name='$last_name',phone='$phone',email='$email',password='$password's where user_id=$id";
  $result=mysqli_query($link, $sql);
 if($result){
  echo  "Изменения прошли успешно";
  
     header( "Location: index.html" );
    } }}
mysqli_close($link);
	?>