<?php
    require("../config/connect.php");


//echo json_encode($data);


if(isset($_REQUEST['id'])) {
    $id = $_REQUEST['id'];
}


    try {


            $sql = "SELECT DISTINCT class_reg_student,room_reg_student FROM reg_student WHERE class_reg_student=".$id." ORDER BY room_reg_student ASC";
            $stmt = $db_conn->prepare($sql);

           if ($stmt) {

               // perform query
               $result = $stmt->execute();

               if ($result) {
                   echo json_encode($stmt->fetchAll());

               } else {
                   $error = $stmt->errorInfo();
                   $error_message = "Query failed with message: " . $error[2];
               }
           }


    } catch (PDOException $e) {
        echo $e->getMessage();
    }



?>