
<?php
    if ( isset( $_COOKIE['sushi'] ) ) {
        $id = $_COOKIE['sushi'];
          require_once 'php/connection.php';
     $link = mysqli_connect($host,$user,$password,$database) or die("Ошибка" . mysqli_error($link));
         
             $query = "Select * from _user where user_id=$id";
         $result = mysqli_query($link,$query);
    if(mysqli_num_rows($result) == 1) {
    if(isset($_POST['last_name']) && isset($_POST['first_name']) && isset($_POST['phone'])&& isset($_POST['email'])&& isset($_POST['password'])) {
    $update = mysqli_query($link,"UPDATE _user SET last_name='$_POST[last_name]', first_name='$_POST[first_name]', phone='$_POST[phone]',email='$_POST[email]',password='$_POST[password]' WHERE user_id='$id'");
    if($update) {
        $query = "Select * from _user where user_id=$id";
        $result = mysqli_query($link,$query);
    }
    }
    $article = mysqli_fetch_array($result);
    echo  "
    <div class='table-title'>Редактирование пользователя</div>
    <div class='table-content'>
    <form  id='form' method='post' name='form'>

    <p><label for='last_name'>Фамилия<br>
                  <input class='input' id='last_name' name='last_name' size='32' type='text' value='$article[last_name]'></label></p>
                  <p><label for='first_name'>Имя<br>
                  <input class='input' id='first_name' name='first_name' size='32' type='text' value='$article[first_name]'></label></p>
                  <p><label for='phone'>Телефон<br>
                  <input class='input' id='phone' name='phone' size='32' type='phone' value='$article[phone]'></label></p>
                 <p><label for='user_email'>E-mail<br>
                 <input class='input' id='email' name='email' size='32' type='email' value='$article[email]'></label></p>
                 <p><label for='user_pass'>Пароль<br>
                 <input class='input' id='password' name='password' size='32'   type='password' value='$article[password]'></label></p>
                 <input type='submit' class='button' value='Сохранить'></form></div>";
    }
    }
    echo  "Успешно обновлено!";
    mysqli_close($link);
?>