<?php
    define('USER', 'admin');
    define('PASSWORD', 'Passw0rd!');
    define('HOST', '51.210.44.117:3306');
    define('DATABASE', 'dbwoody');
    try {
        $connection = new PDO("mysql:host=".HOST.";dbname=".DATABASE, USER, PASSWORD);
    } catch (PDOException $e) {
        exit("Error: " . $e->getMessage());
    }
?>
