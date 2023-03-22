<?php
include("conecta.php");
if (isset($_POST['Registar'])) {
$NPlantel=$conecta->real_scape_string($_POST['NPlantel']);
$CPlantel=$conecta->real_scape_string($_POST['CPlantel']);
$Direccion=$conecta->real_scape_string($_POST['Direccion']);
$Telefono=$conecta->real_scape_string($_POST['Telefono']);
$Responsable=$conecta->real_scape_string($_POST['Responsable']);
if($NPlantel==""|| $CPlantel==""|| $Direccion==""|| $Telefono==""|| $Responsable=="" ){
    $alerta ="algun dato esta vacio";
}
else{
    $registo="INSERT INTO `registro`(`nplantel`, `cplantel`, `direccion`, `telefon`, `responsable`) VALUES ('$NPlantel','$CPlantel','$Direccion','$Telefono','$Responsable')";
    $registo=$conecta->query($registo);
    if($registro > 0) {
        echo"registro exitoso";
    }
} 
};
?>