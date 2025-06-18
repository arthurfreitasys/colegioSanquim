<?php
$link=mysqli_connect("localhost","root","")or die("Não achei o mysql") 
or die("não achei o mysql");
mysqli_select_db($link, "sanquimt") or die("não achei o banco de dados");
?>
