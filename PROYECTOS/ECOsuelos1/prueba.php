<?php
$vusuario=$_POST["usuario"];
$vclave=$_POST["clave"];
conectar_bd("","ecosuelos_cbc");
$s="select *from usuario where Nom_usuario='{$vusuario['usuario']}'and contraseña='{$vclave['clave']}'";
$resultado=$conn->query($sql);


if($resultado->num_rows > 0){
}

        
     $_SESSION["usuario"];

     
     ?>

     
               
             
            
    </div>    
</body>
</html>