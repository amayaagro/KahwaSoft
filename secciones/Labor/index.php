<!-- SQL Labores -->
<?php 
    include("../../bd.php");

    $sentecia = $conexion->prepare("SELECT * FROM `labores`");
    $sentecia->execute();
    $Labores = $sentecia->fetchall(PDO::FETCH_ASSOC);

    if(isset($_GET['txtID']))
    {
        $txtId = (isset($_GET['txtID'])?$_GET['txtID']:"");
        $sentencia = $conexion->prepare("DELETE FROM `labores` WHERE Id = :id");
        $sentencia->bindParam(":id",$txtId);
        $sentencia->execute();
        $mensaje = "Registro Eliminado";
        header("Location:index.php?mensaje=".$mensaje);
    }

?>

<!-- Header -->
<?php include("../../templates/header.php"); ?>

<!-- Herramienta Accesibilidad -->
<script>
    (function(d){
    var s = d.createElement("script");
    s.setAttribute("data-account", "fFgZ6B1nWP");
    s.setAttribute("src", "https://cdn.userway.org/widget.js");
    s.setAttribute('locale','es');
    (d.body || d.head).appendChild(s);})(document)
</script>

<br/>
    <!-- Contenedor Datos Labores -->
    <div class="card">
        <div class="content">
            <div class="title">
                <h3 id="Titulo"><strong>Labores</strong><img src="../../Img/Logo.png" width="230" height="80" align="right"></h3>
            </div>
            <div class="card-body">
                <a name="" id="btncrear" class="btn" title="Agregar" href="crear.php" role="button">Agregar</a>
                <div class="table-responsive-sm">
                    <table  id="tabla_id" class="display nowrap" style="width:100%">
                        <thead>
                            <tr>
                                <th scope="col">Labor</th>
                                <th scope="col">Descripción</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>   
                            <?php foreach($Labores as $Labor) {?>
                                <tr class="">
                                    <td><?php echo $Labor['labor']; ?></td>
                                    <td><?php echo $Labor['Descripcion']; ?></td>
                                    <td> <a id="editar" class="btn" title="Editar" href="editar.php?txtID=<?php echo $Labor['Id']; ?>" role="button">Editar</a>
                                    <a id="borrar" class="btn" title="Borrar" href="javascript:borrar(<?php echo $Labor['Id']; ?>);" role="button">Borrar</a>
                                    </td>
                                </tr>
                            <?php }?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

<!-- Footer --> 
<?php include("../../templates/footer.php"); ?>

<!-- Social Footer -->
<?php include("../../templates/socfooter.php"); ?>