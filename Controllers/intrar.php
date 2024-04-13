<?php
$email=$_POST["correo"];
$contraseña1=$_POST['password'];
session_start();

$conexion = mysqli_connect("localhost", "root", "1234", "erp");
$consulta = "SELECT * FROM usuarios WHERE correo = '$email' AND contraseña = '$contraseña1'";
$resultado = mysqli_query($conexion, $consulta);

if ($resultado) {
    $fila = mysqli_num_rows($resultado);
    if ($fila > 0) {
    echo '<script> alert("hola, bienvenido")</script>';
    echo '<script type="text/javascript">window.location.href="../Views/index.html"</script>';
    }else{

        echo'<script>alert("datos incorrectos")</script>';
        echo '<script type="text/javascript">window.location.href="../Views/usuario_formulario.php"</script>';
    }
}else {
    echo"error de consulta:" .mysqli_error($conexion);    
}
mysqli_free_result($resultado);
mysqli_close($conexion);
?>