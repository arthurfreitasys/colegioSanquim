<?php
include'conecta.php'
$user=$_REQUEST['usuario'];
$pass=$_REQUEST['senha'];
$consulta="SELECT * FROM usuarios WHERE usuarios='$user' AND senha='$pass'";
$resultado=mysqli_query($link, $consulta) or die ("erro na consulta")
if(mysqli_num_rows($resultado)>0)
    header("location:principal.html");
else 
    header("location:index.html");
mysqli_close($link); //fecha a conexão com o banco de dados


?>
