<?php
$mysql_config = parse_ini_file('mysql.ini');

$hostname=$mysql_config['172.17.0.3:3306'];;
$user = $mysql_config['root'];;
$password = $mysql_config['user123'];;
$database = $mysql_config['database_grp_5'];;
$table = "objet";
?>

<html>
<head>
<title>Test PHP</title>
</head>
<body>
<p>Bonjour, bienvue dans B2B</p>

<form method="post" action="process.php">
  Name: <input type="text" name="name" required>
  <input type="submit" name="submit">
</form>


<?php
 try {
    $db = new mysqli("172.17.0.3:3306","root", "user123","database_grp_5");
    echo "<h2>TODO</h2><ol>";
    foreach($db->query("SELECT content FROM $table") as $row) {
      echo "<li>" . $row['content'] . "</li>";
    }
    echo "</ol>";
  } catch ( $e) {
      print "Error!: " . $e->getMessage() . "<br/>";
      die();
  }

 echo '</body>';
 echo '</html>';

 ?>
