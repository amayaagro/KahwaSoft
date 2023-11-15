<?php require("bd.php"); ?>

<!-- Página Recuperar Contraseña -->
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Recuperar Contraseña</title>
    </script> 
        <link rel="stylesheet" href="http://localhost/kahwa/Css/recuperar.css" />  
    </script>
    
    <!-- Herramienta Accesibilidad -->
    <script>
        (function(d){
        var s = d.createElement("script");
        s.setAttribute("data-account", "fFgZ6B1nWP");
        s.setAttribute("src", "https://cdn.userway.org/widget.js");
        s.setAttribute('locale','es');
        (d.body || d.head).appendChild(s);})(document)
    </script>
</head>
<body>
    <!-- Formulario Recupera Contraseña -->
	<div class="container-r">
        <h1 align= center>Recuperar contraseña<img src="/../kahwa/Img/Logo.png" width="311" height="100" align="right"></h1><br>
		<h2 align= left><label for="username">Por favor, ingrese su correo electrónico</label></h2>
        <p><br></p>
        <?php echo !empty($statusMsg)?'<p class="'.$statusMsgType.'">'.$statusMsg.'</p>':''; ?>
        <div class="mb-3">             

                <form action="secciones/Contraseña/resetearClave.php" method="post">
                    <input type="email" value="" class="form-control" name="correo" id="correo" value="" required aria-describedby="helpId" placeholder="Ingrese su correo electrónico">
                    <input type="submit" class="boton" title="Recuperar Contraseña" value="Recuperar contraseña">
                    <a href="login.php" id="regresar" title="Regresar" class="mt-3 mb-4" title="Regresar" style="margin: 10px">Regresar</a>
                <br><br>
                </form>
        </div>

                
	</div>
</body>
</html>