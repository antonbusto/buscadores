<?php include('conexion.php'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
<title>Detalle de Contenido</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
</head>
<body>
<div class="container justify-content-center">
<div class="card mt-5 p-4">
<?php
if (!empty($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM lenguajes WHERE id = " . $id;
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        echo "<h3>Detalle del Contenido</h3>";
        echo "<p>Lenguaje: " . $row['lenguaje'] . "</p>";
        echo "<p>Descripción: " . $row['descripcion'] . "</p>";
        
        echo "<p><a href='buscador-varias-palabras.php'>Volver al buscador</a></p>";
    } else {
        echo "<h3>Contenido no encontrado</h3>";
        echo "<p><a href='buscador-varias-palabras.php'>Volver al buscador</a></p>";
    }
} else {
    echo "<h3>Error: ID no especificado</h3>";
    echo "<p><a href='buscador-varias-palabras.php'>Volver al buscador</a></p>";
}
?>
</div>
</div>
</body>
</html>
