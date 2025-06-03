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
if (mysqli_num_rows($resultado) > 0) {
    $dados = mysqli_fetch_assoc($resultado);
    $nivel = $dados['nivel']; // Obtém o nível do usuário
    // Redireciona com base no nível do usuário
    if ($nivel == "aluno") {
        header("Location:../telaprincipal/telaprincipal.html");
    } elseif ($nivel == "professor") {
        header("Location:../telaprincipal/telaprincipal.html");
    } elseif ($nivel == "secretaria") {
        header("Location: ../telaprincipal/telaprincipal.html");
    } else {
        header("Location: ../telaprincipal/telaprincipal.html");
    }
}else
    header("location:login.html");
mysqli_close($link); // Fecha a conexão com o banco de dados
?>
