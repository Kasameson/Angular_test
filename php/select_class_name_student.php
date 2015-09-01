<?php
    require("../config/connect.php");
$class_s=$_REQUEST['class'];
$room_s=$_REQUEST['room'];


    try {
        $sql = "SELECT id_reg_student,title_reg_student,fname_reg_student,lname_reg_student,class_reg_student,room_reg_student
                FROM reg_student
                WHERE class_reg_student=".$class_s."
                AND room_reg_student=".$room_s."
                ORDER BY id_reg_student ASC";

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