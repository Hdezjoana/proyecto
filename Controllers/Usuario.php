
<?php
// Establecer la conexión con la base de datos
$servername = "localhost";
$username = "root";
$password = "1234";
$dbname = "erp";
$email={"correo"};
$contraseña1={'contraseña'};

$conn = new mysqli($servername, $email, $contraseña, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Recuperar los datos del formulario
$username = $_POST['correo'];
$password = $_POST['contraseña'];

// Consulta para verificar el usuario y contraseña
$sql = "SELECT * FROM usuarios WHERE correo='$username' AND contraseña='$password'";
$result = $conn->query($sql);

// Verificar si se encontró un resultado
if ($result->num_rows > 0) {
    echo "Inicio de sesión exitoso.";
} else {
    echo "Nombre de usuario o contraseña incorrectos.";
}

$conn->close();

class DatosUsuario {
    public static function verificardatos($usuario, $contraseña) {
        $base = new Conexion;
        $conexion = $base->obtenerConexion();
    
        $consulta = "SELECT * FROM usuarios WHERE correo = ?";
        $sentencia = $conexion->prepare($consulta);
    
        $sentencia->bind_param('s', $usuario);
    
        $sentencia->execute();
    
        $resultado = $sentencia->get_result();
    
        if ($resultado->num_rows > 0) {
            $usuario = $resultado->fetch_assoc();
    
            // Obtener el hash MD5 almacenado en la base de datos
            $hashAlmacenado = $usuario['contraseña'];
    
            // Verificar la contraseña decodificando el hash MD5 y comparándolo con la contraseña proporcionada
            if (md5($contraseña) === $hashAlmacenado) {
                // Contraseña válida
                $sentencia->close();
                $base->cerrarConexion();
                return true;
            } else {
                // Contraseña incorrecta
                $sentencia->close();
                $base->cerrarConexion();
                return false;
            }
        } else {
            // Usuario no encontrado
            $sentencia->close();
            $base->cerrarConexion();
            return false;
        }
    }
    
    public static function obtenerInformacionUsuario($nombreusuario) {
        $db = new Conexion();
        $conn = $db->obtenerConexion();

        $query = "SELECT * FROM usuarios WHERE nombre = ?";
        $stmt = $conn->prepare($query);

        $stmt->bind_param('s', $nombreusuario);

        $stmt->execute();

        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $usuario = $result->fetch_assoc();

            $stmt->close();
            $db->cerrarConexion();

            return $usuario;
        } else {
            $stmt->close();
            $db->cerrarConexion();
            return null;
        }
    }

}
