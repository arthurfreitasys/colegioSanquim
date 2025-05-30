<?php
include'conecta.php';
$user=$_REQUEST['usuario'];
$pass=$_REQUEST['senha'];
$consulta="SELECT * FROM usuarios WHERE usuario='$user' AND senha='$pass'";
$resultado=mysqli_query($link, $consulta) or die ("erro na consulta");
if(mysqli_num_rows($resultado)>0)
    header("location:../telaprincipal/telaprincipal.html");
else 
    header("location:login.html");
mysqli_close($link); //fecha a conexão com o banco de dados
?>      