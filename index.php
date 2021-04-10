<?php

    header('Content-Type:application/json');
    include_once './Module.php';
    $data = new Module();

    $data->getGames();
    $data->getOutcomes();