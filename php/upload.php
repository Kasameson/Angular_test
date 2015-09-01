<?php
require("../config/connect.php");

$fname = $_POST["fname"];
$test = $_POST["test"];

if(isset($_FILES['file'])){
//The error validation could be done on the javascript client side.
    $errors= array();
    $file_name = time(). $_FILES['file']['name'];
    print time(). $file_name;
    $file_size = $_FILES['file']['size'];
    $file_tmp = $_FILES['file']['tmp_name'];
    $file_type= $_FILES['file']['type'];
    $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));
    $extensions = array("jpeg","jpg","png","rar","zip");
    if(in_array($file_ext,$extensions )=== false){
        $errors[]="file extension not allowed, please choose a JPEG or PNG file.";
    }
    if($file_size > 2097152){
        $errors[]='File size cannot exceed 2 MB';
    }
    if(empty($errors)==true){
        move_uploaded_file($file_tmp,"../images/".$file_name);

//insert table test_img
        try {
            $statement = $db_conn->prepare("INSERT INTO test_img (id_img,img_name,img_file) VALUES('','$test','$file_name')");

            $statement->execute();
        } catch(PDOException $e) {
            echo $e->getMessage();
        }
// echo $fname . " uploaded file: " . "images/" . $file_name;
    }else{
        print_r($errors);
    }
}

?>