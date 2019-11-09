<!DOCTYPE html>
<?php
  include('conn.php');
  if(isset($_POST['submit']))
  {
    $id=trim($_POST['ename']);
    $name=trim($_POST['pname']);
    $phead=trim($_POST['phead']);
    $tech=trim($_POST['tech']);
    $cname=trim($_POST['cname']);
    $sdate=trim($_POST['sdate']);    
    $edate=trim($_POST['edate']);  

    if(empty($name)||empty($phead)||empty($tech)||empty($cname)||empty($sdate)||empty($edate))
    {
       echo "<script>alert('Please enter the field');
      window.location.href='projectundertaken.html';
      </script>";
    }
    $query = mysqli_query($link, "SELECT Ename FROM employee WHERE Ename='$id'");
    $rows = mysqli_num_rows($query);
 
 if($rows == 1)
 {
  $query="INSERT INTO projects(Pname,StartDate,EndDate,ProjectHead,Cname,Technologies,Ename)VALUES('$name','$sdate','$edate', '$phead','$cname', '$tech','$id')";
        mysqli_query($link,$query) or die("Error inserting data.".mysqli_error($link));
        header("location:index.html");
 }
 else
 {
  echo"<script>alert('Employee does not exist'); window.location.href='projectundertaken.html';</script>";
 }


}
?>
