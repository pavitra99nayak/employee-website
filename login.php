<?php
session_start();
$conn=mysqli_connect('localhost','root','','project');
if(isset($_POST['login']))
{
    $eid=$_POST['eid'];
    $username=$_POST['username'];
    $password=$_POST['password'];
    $usertype=$_POST['usertype'];
    $sUser=mysqli_real_escape_string($conn,$username);
    $sPass=mysqli_real_escape_string($conn,$password);
    $sUsertype=mysqli_real_escape_string($conn,$usertype);
    $query="SELECT * From employee where Ename='$sUser' and Password='$sPass' and usertype='$sUsertype'";
    $result=mysqli_query($conn,$query);
    if(mysqli_num_rows($result)==1)
    {
        if($usertype=='Admin')
        {
         session_start();
         $_SESSION['eid']=$eid;
         header('location:index.html');
        }
        else{
            session_start();
            header('location:worker.html');
        }
    }
    else
    {
       echo "<script>alert('INVALID USERNAME OR PASSWORD')</script>";
       echo "<script>setTimeout(\"location.href = 'login.php';\",50);</script>";
    }
}
?>
