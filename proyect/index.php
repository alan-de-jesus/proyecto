<?php 
include  'includes/conecta.php';

$user = 'alan';
$contra = "12345";
$ruser = $_POST['usuario'];
$rpass = $_POST['pass'];
if ($user == $ruser && $contra == $rpass) {
  $mensaje.= "<div class='alert alert-success d-flex align-items-center' role='alert'>
  <svg class='bi flex-shrink-0 me-2' width='24' height='24' role='img' aria-label='Success:''><use xlink:href='#check-circle-fill'/></svg>
  <div>
    Tus datos son correctos
  </div>
</div>";
}
 ?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
	<title>login</title>
</head>
<body>

<div class="container py-4">
  <div class="row justify-content-center h-100 py-4">
    <div class="card col-ms-6 col-md-6 col-lg-6 shadow-lg p-3 mb-5 bg-whithe rounded">
      <article class="card-body">
        <h4 class="card-title text-center">Loguin</h4>
        <hr>
        <p class="text-success text-center">Digital al sistema</p>
        <form action="<?php echo $SERVER['PHP_SELF']; ?>" method="post">
          <div class="form-group">
            <div class="input-group">
              <input type="text" name="usuario" placeholder="Usuario" class="form-control">
            </div>
            <div class="input-group py-2">
             <input type="password" name="pass" placeholder="Contraseña" class="form-control">
            </div>
            <div class="input-group">
              <input type="submit" name="entrar" value="Entrar" class="btn btn-sm btn-success btn block">
            </div>
          </div>
        </form>
      </article>
    </div>
  </div>
  <?php echo $mensaje; ?>
</div>

</body>
</html>