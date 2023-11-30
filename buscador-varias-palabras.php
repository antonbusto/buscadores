<?php include('conexion.php'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
<title>buscador-varias-palabras.php</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
</head>
<body>
<div class="container justify-content-center">
<div class="card mt-5 p-4">
<h3>Buscador de contenidos</h3>
<form action="" method="post">
<div class="input-group">
<input type="search" class="form-control" placeholder="Buscar" name="buscar" required>
<button class="btn btn-success" type="submit"><i class="fas fa-search"></i></button>
</div>
</form>
<?php
if (!empty($_POST['buscar'])) {
    $busqueda = $_POST['buscar'];
    $palabras = explode(" ", $busqueda);
    $condiciones = array();
    foreach ($palabras as $palabra) {
        if (!empty($palabra)) {
            $condiciones[] = "lenguaje LIKE '%" . $palabra . "%' OR descripcion LIKE '%" . $palabra . "%'";
        }
    }
    if (!empty($condiciones)) {
        $condicionSQL = implode(" OR ", $condiciones);
        $sql = "SELECT * FROM lenguajes WHERE " . $condicionSQL;
        $result = mysqli_query($conn, $sql);
        echo "<br>Has buscado: <b>" . htmlspecialchars($busqueda) . "</b>";

        if (mysqli_num_rows($result) > 0) {
            echo "<br><br>Resultados encontrados:";
            echo "<br><div class='table-responsive'><table class='table table-striped'>";
            $rows = 0;
            while ($row = mysqli_fetch_assoc($result)) {
                $rows++;
                $descripcion = substr($row['descripcion'], 0, 120) . "...";
                echo "<tr><td>" . $rows . "</td><td><a href='detalle.php?id=" . $row['id'] . "'>" . $row['lenguaje'] . "</a></td><td>" . $descripcion . "</td></tr>";

            }
            echo "</table></div>";
        } else {
            echo "<br>Resultados encontrados: Ninguno";
        }
    }
}
?>
</div>
</body>
</html>