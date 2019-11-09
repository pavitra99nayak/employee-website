<!DOCTYPE html>
<?php
session_start();
  include('conn.php');
  if(isset($_POST['submit']))
  {
    $name=trim($_POST['name']);
    $mobile=trim($_POST['mobile']); 
    $password=trim($_POST['password']);
    $email=trim($_POST['email-id']);
    
    if(empty($name)||empty($mobile)||empty($password)||empty($email))
    {
       echo "<script>alert('Please enter the field');
      window.location.href='addemployee.html';
      </script>";
    }

$query="INSERT INTO employee (Ename,Phone,Password,Email)VALUES('$name','$mobile','$password','$email')";
        mysqli_query($link,$query) or die("Error inserting data.".mysqli_error($link));
        header("location:index.html");
 }
?>
