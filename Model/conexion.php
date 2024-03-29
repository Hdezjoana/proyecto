<?php
class Conexion {
    // Propiedades para la conexión a la base de datos
    private $servidor = "localhost"; // Servidor de la base de datos
    private $user = "root"; // Usuario de la base de datos
    private $password = "1234"; // Contraseña de la base de datos
    private $bd = "erp"; // Nombre de la base de datos

    // Propiedad para almacenar la conexión a la base de datos
    private $conexion;

    // Constructor de la clase
    public function __construct() {
        // Intentar establecer la conexión a la base de datos
        $this->conexion = new mysqli($this->servidor, $this->user, $this->password, $this->bd);
        
        // Verificar si hay errores en la conexión
        if ($this->conexion->connect_error) {
            die("Error de conexión: " . $this->conexion->connect_error);
        }
        
    }

    // Método para obtener la conexión a la base de datos
    public function obtenerConexion() {
        return $this->conexion;
    }

    public function cerrarConexion()
    {

        if($this -> conexion){
            $this -> conexion -> close();
        }
    }
}
