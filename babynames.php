<?php

$user = 'root';
$password = 'root';
$db = 'HW3';
$host = 'localhost';
$port = 3306;

$conn = mysqli_connect(
   $host, 
   $user, 
   $password, 
   $db,
   $port
);


if (!$conn){

  echo "Connection failed!";
  exit;

}

$year=$_POST['year'];
$gender=$_POST['gender']; 

if($year!="All" && $gender!="Both")
{
   $sql="SELECT * FROM babynames WHERE year='$year' AND gender='$gender' ORDER BY ranking"; 

$result = mysqli_query($conn, $sql);

echo "<table class='table table-striped'><tr><td>Name</td><td>Year</td><td>Ranking</td><td>Gender</td></tr>";

while($row = mysqli_fetch_array($result)){

  echo "<tr><td>". $row["name"] ."</td><td>". $row["year"]."</td><td>". $row["ranking"]."</td><td>". $row["gender"]."</td></tr>";
}

echo "</table>";
}


if($year=="All")
{
  $sql1="SELECT * FROM babynames WHERE gender='$gender' ORDER BY ranking"; 

$result1 = mysqli_query($conn, $sql1);

echo "<table class='table table-striped'><tr><td>Name</td><td>Year</td><td>Ranking</td><td>Gender</td></tr>";

while($row = mysqli_fetch_array($result1)){

  echo "<tr><td>". $row["name"] ."</td><td>". $row["year"]."</td><td>". $row["ranking"]."</td><td>". $row["gender"]."</td></tr>";
}

echo "</table>";
}

if($gender=="Both")
{
  $sql2="SELECT * FROM babynames WHERE year='$year' ORDER BY ranking"; 

$result2 = mysqli_query($conn, $sql2);

echo "<table class='table table-striped'><tr><td>Name</td><td>Year</td><td>Ranking</td><td>Gender</td></tr>";

while($row = mysqli_fetch_array($result2)){

  echo "<tr><td>". $row["name"] ."</td><td>". $row["year"]."</td><td>". $row["ranking"]."</td><td>". $row["gender"]."</td></tr>";
}

echo "</table>";
}

if($year=="All" && $gender== "Both")
{
  $sql3="SELECT * FROM babynames "; 

  $result3 = mysqli_query($conn, $sql3);

  echo "<table class='table table-striped'><tr><td>Name</td><td>Year</td><td>Ranking</td><td>Gender</td></tr>";

  while($row = mysqli_fetch_array($result3)){

    echo "<tr><td>". $row["name"] ."</td><td>". $row["year"]."</td><td>". $row["ranking"]."</td><td>". $row["gender"]."</td></tr>";
  }

  echo "</table>";
}


mysqli_close();


?>

