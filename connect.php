<?php

    function connect(){
        $db='dbmodule';
        $password='qz@JYs8ncS&v7NH%J#UWQ?';
        $host='localhost';
        $user='datadmin';
        $options = [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES   => false,
        ];

        try{
            $connection = new PDO("pgsql:host=$host;dbname=$db", $user, $password, $options);
            return $connection;
        }catch (PDOException $exception){
            echo $exception->getMessage();
        }

    }

    function insertToDb($table,$data){
        $pdo = connect();
        $headers = array_keys($data[0]);
        $columns = implode(',',$headers);
        $sql = $pdo->prepare("INSERT INTO $table ($columns) VALUES (?,?,?,?,?,?,?,?,?,?)");
        try {
            $pdo->beginTransaction();
            foreach ($data as $key =>$row)
            {
                if($row['awayteam'] =="" || $row['hometeam'] ==""){
                    continue;
                }
                else {
                    $insertdata = [
                        $row['matchid'],$row['matchi'], $row['sport'], $row['kind'], $row['league'],
                        $row['hometeam'], $row['awayteam'], $row['datestring'],$row['corner_id'],$row['card_id']
                    ];

                    $sql->execute($insertdata);
                }
            }
            $pdo->commit();
        }catch (PDOException $e){
            $pdo->rollback();
            echo $e->getMessage();
        }
    }

    function insertToBB($table,$data){
        $pdo = connect();
        $headers = array_keys($data[0]);
        $columns = implode(',',$headers);
        $sql = $pdo->prepare("INSERT INTO $table ($columns) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        try {
            $pdo->beginTransaction();
            foreach ($data as $key =>$row)
            {
                if($row['awayteam'] =="" || $row['hometeam'] ==""){
                    continue;
                }
                else {
                    $insertdata = [
                        $row['matchid'],$row['matchi'], $row['sport'], $row['kind'], $row['league'],
                        $row['hometeam'], $row['awayteam'], $row['datestring'], $row['fhid'], $row['shid'],
                        $row['fqid'], $row['sqid'],$row['tqid'],$row['ftqid']
                    ];

                    $sql->execute($insertdata);
                }
            }
            $pdo->commit();
        }catch (PDOException $e){
            $pdo->rollback();
            echo $e->getMessage();
        }
    }

    function insertToTennis($table,$data){
        $pdo = connect();
        $headers = array_keys($data[0]);
        $columns = implode(',',$headers);
        $sql = $pdo->prepare("INSERT INTO $table ($columns) VALUES (?,?,?,?,?,?,?,?,?)");
        try {
            $pdo->beginTransaction();
            foreach ($data as $key =>$row)
            {
                if($row['awayteam'] =="" || $row['hometeam'] ==""){
                    continue;
                }
                else {
                    $insertdata = [
                        $row['matchid'],$row['matchi'], $row['sport'], $row['kind'], $row['league'],
                        $row['hometeam'], $row['awayteam'], $row['datestring'], $row['fsid']
                    ];

                    $sql->execute($insertdata);
                }
            }
            $pdo->commit();
        }catch (PDOException $e){
            $pdo->rollback();
            echo $e->getMessage();
        }
    }

    function insertOutcomes($data,$column,$table){

        $pdo = connect();
        $sql = $pdo->prepare("UPDATE $table SET $column=? WHERE matchid=?");

        try {
            $pdo->beginTransaction();
            foreach ($data as $key => $row)
            {
                $sql->execute([$row, $key]);
            }

            $pdo->commit();
            echo "Data inserted into $column successfully \n";
        }
        catch (PDOException $e){
            $pdo->rollback();
            $e->getMessage();
        }
    }

    function insertOutcomesOthers($data,$column,$table,$columns){

        $pdo = connect();
        $sql = $pdo->prepare("UPDATE $table SET $column=? WHERE $columns=?");

        try {
            $pdo->beginTransaction();
            foreach ($data as $key => $row)
            {
                $sql->execute([$row, $key]);
            }

            $pdo->commit();
            echo "Data inserted into $column successfully \n";
        }
        catch (PDOException $e){
            $pdo->rollback();
            $e->getMessage();
        }
    }