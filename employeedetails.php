<!DOCTYPE html>
<?php
session_start();
?>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="item.css">
</head>
<body>
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
        <div id="header"><h1 style="color:white; text-align:center;">EMPLOYEE DETAILS</h1></div>
    
              
                        <?php
include 'conn.php';

            echo '<table>';
            echo '<tr>';
            echo '<th scope="col">Employee Name</th>';
            echo '<th scope="col">Project Name</th>';
            echo '<th scope="col">Start Date</th>';
            echo '<th scope="col">Finish Date</th>';
            echo '<th scope="col">status</th>';
            echo '</tr>';
                      $result = mysqli_query($link,"SELECT Ename,Pname,StartDate,EndDate,Status FROM projects");
            if($result)
            {
              while($obj = $result->fetch_object()) 
              {
                echo '<tr>';
                echo '<td>'.$obj->Ename.'</td>';
                echo '<td>'.$obj->Pname.'</td>';
                echo '<td>'.$obj->StartDate.'</td>';
                echo '<td>'.$obj->EndDate.'</td>';
                echo '<td>'.$obj->Status.'</td>';
                echo '</tr>';
              }
            }
          echo '</td>';
          echo '</tr>';
          echo '</table>';
          ?>
			
       

</body>
</html>

