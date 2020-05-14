<?php
include 'config.php';

if (isset($_POST['submit'])) {
    $patient_name = $_POST['patient_name'];
    $h_n_name = $_POST['h_n_name'];
    $age = $_POST['age'];
    $gender = $_POST['gender'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $blood_group = $_POST['blood_group'];
    $component = $_POST['component'];

    
    $sql = "INSERT INTO want_blood_tbl (patient_name,h_n_name,age, gender, phone, email, blood_group,component)
            values ('$patient_name','$h_n_name','$age','$gender','$phone','$email','$blood_group','$component')";
            if ($conn->query($sql)){
                $message = "Successfully Submited";
                echo "<script type='text/javascript'>alert('$message');</script>";
            header("Location:want_blood.html");
            }
            else{
            echo "Error: ". $sql ."
            ". $conn->error;
            }
            $conn->close();
            
        
}
?>