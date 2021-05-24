<?php
$link = mysqli_connect("172.17.0.3:3306", "root", "user123");

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    exit;
}

echo "Success: A proper connection to MySQL was made!" . PHP_EOL;
echo "Host information: " . mysqli_get_host_info($link) . PHP_EOL;

?>
<html>
<head>
	<title>B2B</title>
</head>
<body>
	<?php 
		echo "Ceci est la page en PHP";
		$db = "database_grp_5";
		$query = "SELECT * FROM objet";
        mysqli_query($db, $query) or trigger_error(mysqli_error().$query);
        $result = mysqli_query($db, $query);
	
	//if (!$mysqli -> query($query)) {
 	//	 echo("Error description: " . $mysqli -> error);
	//}

	//$mysqli -> close()

        //while ($row = mysqli_fetch_array($result)) {
        //    echo $row['id'] . ': ' . $row['libelle'] . ' ' . $row['prix'] . ' <br />';
        //}
	try {
		foreach($db->query("SELECT content FROM $table") as $row) {
			echo "<li>" . $row['content'] . "</li>";
		}
		echo "</ol>";
	} catch (PDOException $e) {
		print "Error!: " . $e->getMessage() . "<br/>";
	die();
	}

 echo '</body>';
 echo '</html>';

    ?>
</body>
</html>
