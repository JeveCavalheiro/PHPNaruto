<?php

    echo "Esse código é gerado pelo PHP";

    $X = 1;

    echo "<br>O dobro de x é ". $X *2;

    $familia = array("pai"=>"João",
                     "mae"=>"Maria",
                     "filha"=>"Ana",
                     "filho"=>"Bruno");
    
    echo json_encode($familia);

?>