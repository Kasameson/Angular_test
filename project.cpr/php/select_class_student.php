<?php
    require("../config/connect.php");



    try {
        $sql = "SELECT DISTINCT class_reg_student FROM reg_student order by class_reg_student asc";
        $stmt = $db_conn->prepare($sql);

        if($stmt) {

            // perform query
            $result = $stmt->execute();

            if($result) {
                echo json_encode($stmt->fetchAll());

            } else {
                $error = $stmt->errorInfo();
                $error_message = "Query failed with message: " . $error[2];
            }}


    } catch(PDOException $e) {
        echo $e->getMessage();
    }
?>