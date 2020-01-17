<?php
 require_once 'php/connection.php';
$link = mysqli_connect($host,$user,$password,$database) or die("Ошибка" . mysqli_error($link));
    $query = "Select _event.name, _event.description, _event.logo from _event order by _event.event_id DESC";
    $result = mysqli_query($link,$query);
    $i = 0;
while ($row = $result->fetch_assoc()) {

    if($i==3){
    break;
    }
    $i = $i + 1 ;
                  $name = $row['name'];
                  $desc = $row['description']; 
                $logo = $row['logo'];
                echo "<div class='LNCnt_event'>
                <img src='$logo'>
               <div class='LNCnt_eventText'>
               <h4>$name</h4>
               $desc
               <h5>View  &emsp;<i class='fas fa-chevron-right'></i></h5>
               </div>
           </div>";
                          
    }   mysqli_close($link);
?>