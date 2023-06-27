<?php
function conectar_bd($clave,$ecosuelo)
{

    $conexion = new mysqli('localhost','root',$clave,$ecosuelo);

    if ($conexion->connect_error)
    {
        die('error de coneccion(' . $conexion->connect_error . ')'. $conexion->connect_error);
    }
   return $conexion; 
}

function consulta ($conexion,$consulta_sql)
{
    $resultado=$conexion->query($consulta_sql);

    if(!$resultado)
    {
        echo 'no se pudo ejecutar la consulat: ' . $conexion->error;
        exit;
    }
    return $resultado;

}

?>