<?php
require 'banco.php';

if (!isset($_GET['id']) || !isset($_GET['name']) || !isset($_GET['sex']) || !isset($_GET['affiliation']) || !isset($_GET['voice'])) {
    echo 'Erro, todos os campos são obrigatórios';
    exit();
}

$id = $_GET['id'];
$name = $_GET['name'];
$sex = $_GET['sex'];
$affiliation = $_GET['affiliation'];
$voice = $_GET['voice'];

$sql = "UPDATE amegakure SET name = :name, sex = :sex, affiliation = :affiliation, voice = :voice WHERE id = :id";
$qry = $con->prepare($sql);
$qry->bindParam(':id', $id, PDO::PARAM_INT);
$qry->bindParam(':name', $name, PDO::PARAM_STR);
$qry->bindParam(':sex', $sex, PDO::PARAM_STR);
$qry->bindParam(':affiliation', $affiliation, PDO::PARAM_STR);
$qry->bindParam(':voice', $voice, PDO::PARAM_STR);
if($qry->execute()) {
    echo "Alteração bem-sucedida!";
} else {
    echo "Erro na alteração: " . implode(", ", $qry->errorInfo());
}
?>
