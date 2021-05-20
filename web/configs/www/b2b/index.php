<?php 
    $db = mysqli_connect('51.210.44.117:3306','adminS','admin','database_grp_5');
    if (!$conn) {
        echo mysqli_connect_errno() . ":" . mysqli_connect_error();
        exit;
    }
?>
<html>
<head>
	<title>B2B</title>
</head>
<body>
	<?php 
		echo "Ceci est la page en PHP";
		$query = "SELECT * FROM objet";
        mysqli_query($db, $query) or die('Error querying database.');
        $result = mysqli_query($db, $query);

        while ($row = mysqli_fetch_array($result)) {
            echo $row['id'] . ': ' . $row['libelle'] . ' ' . $row['prix'] . ' <br />';
        }
    ?>
</body>
</html>
