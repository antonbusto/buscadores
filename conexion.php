<?php
//conexion.php
$servername = "localhost";
$username = "root";
$password = "";
$dbnname = "";
$conn = mysqli_connect($servername, $username, $password, $dbnname);
if (!$conn) {
    die("Error en la conexión " . mysqli_connect_error());
}
mysqli_set_charset($conn, "utf8");
?>
