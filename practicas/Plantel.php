<?php
include("action.php");
include("includes/navbar.html")
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="widt=divice-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Plantel</title>
    </head>
<body>
    <div class="container m-o content-justifi-center py-2">
        <div class="row text-center">
            <h1 class=" text-center">Plantel</h1>
        </div>
        <form id="registrar" action="<?php echo $SERVER['php.SELF'];?>" Method="POST">
        <div class="col-sm-12 cd-md-12 col-lg-12">
            <input type="text" name="NPlantel" class="form-control" placeholder="Nombre Plantel" required>
        </div>
        <hr>
        <div class="col-sm-12 cd-md-12 col-lg-12">
            <input type="text" name="CPlantel" class="form-control" placeholder="Clave Plantel" required>
        </div>
        <hr>
        <div class="col-sm-12 cd-md-12 col-lg-12">
            <input type="text" name="Direccion" class="form-control" placeholder="Direccion" required>
        </div>
        <hr>
        <div class="col-sm-12 cd-md-12 col-lg-12">
            <input type="num" name="Telefono" class="form-control" placeholder="Telefono" required>
        </div>
        <hr>
        <div class="col-sm-12 cd-md-12 col-lg-12">
            <input type="text" name="Responsable" class="form-control" placeholder="Responsable" required>
        </div>
        <hr>
        <center>
        <div class="col-sm-12 cd-md-12 col-lg-12">
        <input type="submit" value="Registrar" class="btn btn-primary" >
        </div> 
        </center>      
        </form>

    </div>
</body>