<?php
  require 'need.php';
  $start=$_POST["start"];
     $end=$_POST["end"];
     $previous=0;
     $count=0;
     $sql="SELECT general.RollNumber,general.LastName, courseregistrationsineverysemester.Approved
     FROM general
     LEFT JOIN courseregistrationsineverysemester ON general.RollNumber= courseregistrationsineverysemester.RollNo WHERE general.RollNumber >= $start AND general.RollNumber <= $end" ;
         $result = mysqli_query($connect, $sql);  
         echo '<table><tr><th >RollNumber </th>'.'<th> Status </th><th> Action </th> </tr>   </table>';
         while($row = mysqli_fetch_array($result))  
         {  
            if($previous!= $row[0]){
                $previous=$row[0];
                echo '<form action="details.php" method="post" ><table><td ><input type="text" readonly="readonly" name="roll" value='.$row[0].'></td>';
                if($row[2]==NULL){
                    echo '<td> not registered</td><td> <button disabled type="submit" id="'. $count.'" onclick="go(' . $count.')"> View Details</button></td>      </tr>     </table></form>';
                }   
                else{
                    echo '<td>'.$row[2].'</td> <td><button type="submit" id="'. $count.'" onclick="go(' . $count.')"> View Details</button> </tr></table></form>';
                }
            }
        $count++;
        }
         
?>