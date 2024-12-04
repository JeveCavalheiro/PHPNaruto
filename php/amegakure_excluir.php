<?php
require 'banco.php';

if (!isset($_GET['id'])) {
    echo 'Erro, id é obrigatório';
    exit();
}

$id = $_GET['id'];

$sql = "DELETE FROM amegakure WHERE id = :id";
$qry = $con->prepare($sql);
$qry->bindParam(':id', $id, PDO::PARAM_INT);
if($qry->execute()) {
    echo "Exclusão bem-sucedida!";
} else {
    echo "Erro na exclusão: " . implode(", ", $qry->errorInfo());
}
?>
