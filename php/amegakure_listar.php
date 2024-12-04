<?php
require 'banco.php';

$sql = "SELECT * FROM amegakure ORDER BY name";
$qry = $con->prepare($sql);
$qry->execute();
$registros = $qry->fetchAll(PDO::FETCH_OBJ);
echo json_encode($registros);
?>
