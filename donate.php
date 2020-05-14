<?php
include 'config.php';

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $blood_group = $_POST['blood_group'];
    $sql = "INSERT INTO donate_tbl (name,age, gender, phone, email, blood_group)
            values ('$name','$age','$gender','$phone','$email','$blood_group')";
            if ($conn->query($sql)){
                $message = "Successfully Submited";
                echo "<script type='text/javascript'>alert('$message');</script>";
            header("Location:donate-now.html");
            }
            else{
            echo "Error: ". $sql ."
            ". $conn->error;
            }
            $conn->close();
            
        
}
?>