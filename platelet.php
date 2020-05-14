<?php
include 'config.php';

if (isset($_POST['submit'])) {
    $donor_name = $_POST['donor_name'];
    $patient_name = $_POST['patient_name'];
    $host_name = $_POST['host_name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $blood_group = $_POST['blood_group'];
    $sql = "INSERT INTO platelet (donor_name,patient_name, host_name, phone, email, blood_group)
            values ('$donor_name','$patient_name','$host_name','$phone','$email','$blood_group')";
            if ($conn->query($sql)){
                $message = "Successfully Submited";
                echo "<script type='text/javascript'>alert('$message');</script>";
            header("Location:platelet.html");
            }
            else{
            echo "Error: ". $sql ."
            ". $conn->error;
            }
            $conn->close();
            
        
}
?>