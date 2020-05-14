<?php
include 'config.php';

if (isset($_POST['submit'])) {
    $name = $_POST['name'];
    $organise = $_POST['organise'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $location = $_POST['location'];
    $e_donars = $_POST['e_donars'];

    
    $sql = "INSERT INTO oraganise_camp (name,organise, phone, email, location,e_donars)
            values ('$name','$organise','$phone','$email','$location','$e_donars')";
            if ($conn->query($sql)){
                $message = "Successfully Submited";
                echo "<script type='text/javascript'>alert('$message');</script>";
            header("Location:organise_camp.html");
            }
            else{
            echo "Error: ". $sql ."
            ". $conn->error;
            }
            $conn->close();
            
        
}
?>