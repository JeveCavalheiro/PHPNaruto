<?php
require 'banco.php';

if (!isset($_GET['name']) || !isset($_GET['sex']) || !isset($_GET['affiliation']) || !isset($_GET['voice'])) {
    echo 'Erro, todos os campos são obrigatórios';
    exit();
}

$name = $_GET['name'];
$sex = $_GET['sex'];
$affiliation = $_GET['affiliation'];
$voice = $_GET['voice'];

$sql = "INSERT INTO amegakure (name, sex, affiliation, voice) VALUES (:name, :sex, :affiliation, :voice)";
$qry = $con->prepare($sql);
$qry->bindParam(':name', $name, PDO::PARAM_STR);
$qry->bindParam(':sex', $sex, PDO::PARAM_STR);
$qry->bindParam(':affiliation', $affiliation, PDO::PARAM_STR);
$qry->bindParam(':voice', $voice, PDO::PARAM_STR);
if($qry->execute()) {
    echo "Inserção bem-sucedida!";
} else {
    echo "Erro na inserção: " . implode(", ", $qry->errorInfo());
}
?>
