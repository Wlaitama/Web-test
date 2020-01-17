<?php
$fp = fopen("Test.txt", "r"); // Открываем файл в режиме чтения
if ($fp)
{
    $y=0;
while (!feof($fp))
{
$mytext = fgets($fp, 999);
$array[$y] = $mytext;
echo "<form  id='form' method='post' name='form'>";
echo $mytext."<br /><input class='input' size='32' name='Ans$y' id='Ans' type='text'><br />";
$y = $y+1;
}
}
else echo "Ошибка при открытии файла";
echo "<input type='submit' id='test' name='test' class='button' value='Сохранить'> </form>";
fclose($fp);
if(isset($_POST['test'])){
    $fp = fopen("Answer.txt", "a"); 
    for($i=0; $i<count($array); $i++) {
        $mytext = "Ответ: ".$_POST['Ans'.$i]; 
        $test = fwrite($fp, $array[$i]."\n".$mytext."\n"); 
        }
    if ($test) echo 'Данные в файл успешно занесены.';
    else echo 'Ошибка при записи в файл.';
fclose($fp);
}
?>