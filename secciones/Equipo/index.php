<!-- SQL Equipo -->
<?php 
    include("../../bd.php");

    $sentecia = $conexion->prepare("SELECT *, (SELECT Nombre FROM trabajadores where trabajadores.Id = equipo.Responsable) as empleado
    FROM equipo");
    $sentecia->execute();
    $equipos = $sentecia->fetchall(PDO::FETCH_ASSOC);

    if(isset($_GET['txtID']))
    {
        $txtId = (isset($_GET['txtID'])?$_GET['txtID']:"");

        $sentencia = $conexion->prepare("SELECT * FROM equipo WHERE Id = :Id");
        $sentencia->bindParam(":Id",$txtId);
        $sentencia->execute();
        $equipo = $sentencia->fetch(PDO::FETCH_LAZY);

        if($equipo['Estado'] == 1)
        {
            $estado = 0;
            $sentencia = $conexion->prepare("UPDATE equipo SET Estado = :Estado Where Id = :Id");
            $sentencia->bindParam(":Estado",$estado);
            $sentencia->bindParam(":Id",$txtId);
            $sentencia->execute();
        }
        else
        {
            $estado = 1;
            $sentencia = $conexion->prepare("UPDATE equipo SET Estado = :Estado Where Id = :Id");
            $sentencia->bindParam(":Estado",$estado);
            $sentencia->bindParam(":Id",$txtId);
            $sentencia->execute();
        }

        $mensaje = "Estado Actualizado";
        header("Location:index.php?mensaje=".$mensaje);
    }

?>

<!-- Header -->
<?php include("../../templates/header.php"); ?>

<!-- Herramienta de Accesibilidad -->
<script>
    (function(d){
    var s = d.createElement("script");
    s.setAttribute("data-account", "fFgZ6B1nWP");
    s.setAttribute("src", "https://cdn.userway.org/widget.js");
    s.setAttribute('locale','es');
    (d.body || d.head).appendChild(s);})(document)
</script>

<br/>
    <!-- Contenedor Datos Equipo -->
    <div class="card">
        <div class="content">
            <div class="title">
                <h3 id="Titulo"><strong>Equipos</strong><img src="../../Img/Logo.png" width="230" height="80" align="right"></h3>
            </div>
            <div class="card-body">
                <a name="" id="btncrear" class="btn" title="Agregar" href="crear.php" role="button">Agregar</a>
                <div class="table-responsive-sm">
                    <table  id="tabla_id" class="display nowrap" style="width:100%">
                        <thead>
                            <tr>
                                <th scope="col">Fecha Inventario</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Cantidad</th>
                                <th scope="col">Responsable</th>
                                <th scope="col">Fecha de Entrega</th>
                                <th scope="col">Fecha de Recibido</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <div> <a href="../../secciones/Equipo/reportePDF.php"><img src="../../Img/ImpresoraPDF.png" width="70" height="60" align="right" title="Exportar a PDF" href=""></a>
                        </div>
                        <tbody>   
                            <?php foreach($equipos as $equipo) {?>
                                <tr class="">
                                    <td scope="row"><?php echo $equipo['FechaInventario']; ?></td>                                    
                                    <td scope="row"><?php echo $equipo['NombreEquipo']; ?></td>
                                    <td scope="row"><?php echo $equipo['Cantidad']; ?></td>
                                    <td scope="row"><?php echo $equipo['empleado']; ?></td>
                                    <td scope="row"><?php echo $equipo['FechaDeEntrega']; ?></td>
                                    <td scope="row"><?php echo $equipo['FechaDeRecibido']; ?></td>
                                    <?php if($equipo['Estado']==1){ ?>
                                        <td>Activo</td>
                                    <?php }?>
                                    <?php if($equipo['Estado']==0){ ?>
                                        <td>Inactivo</td>
                                    <?php }?>
                                    <td> <a id="editar" class="btn" title="Editar" href="editar.php?txtID=<?php echo $equipo['Id']; ?>" role="button">Editar</a>
                                    <a id="borrar" class="btn" title="Estado" href="javascript:borrar(<?php echo $equipo['Id']; ?>);" role="button">Estado</a>
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