<!DOCTYPE html>
<?php
  include('conn.php');
  if(isset($_POST['submit']))
  {
    $name=trim($_POST['pname']);
    $status=trim($_POST['Status']); 
    
    if(empty($name)||empty($status))
    {
       echo "<script>alert('Please enter the field');
      window.location.href='status.php';
      </script>";
    }
else
{
$query="UPDATE projects SET Status = '$status' WHERE Pid='$name'";
        mysqli_query($link,$query) or die("Error inserting data.".mysqli_error($link));
        header("location:index.html");
      }
 }
?>
