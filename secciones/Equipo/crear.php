<!-- SQL Crear Equipo -->
<?php 
    include("../../bd.php");

    $sentencia = $conexion->prepare("SELECT * FROM trabajadores WHERE Estado = 1");
    $sentencia->execute();
    $empleados = $sentencia->fetchall(PDO::FETCH_ASSOC);


    if($_POST)
    {
        $fechadeinventario = (isset($_POST['fechadeinventario'])?$_POST['fechadeinventario']:"");
        $nombreequipo = (isset($_POST['nombreequipo'])?$_POST['nombreequipo']:"");
        $cantidad = (isset($_POST['cantidad'])?$_POST['cantidad']:"");
        $fechadeentrega = (isset($_POST['fechadeentrega'])?$_POST['fechadeentrega']:"");
        $fechaderecibido = (isset($_POST['fechaderecibido'])?$_POST['fechaderecibido']:"");
        $responsable = (isset($_POST['responsable'])?$_POST['responsable']:"");
        $fechademantenimiento = (isset($_POST['fechademantenimiento'])?$_POST['fechademantenimiento']:"");
        $estado = (isset($_POST['estado'])?$_POST['estado']:"1");

        $sentencia = $conexion->prepare("INSERT INTO `equipo` (`Id`, `FechaInventario`, `NombreEquipo`, `Cantidad`, `FechaDeEntrega`, `FechaDeRecibido`, `Responsable`, `FechaDeMantenimiento`, `Estado`) 
        VALUES (NULL, :FechaInventario, :NombreEquipo,:Cantidad,:FechaDeEntrega,
        :FechaDeRecibido,:Responsable,:Fechademantenimiento,:Estado);");
        $sentencia->bindParam(":FechaInventario",$fechadeinventario);
        $sentencia->bindParam(":NombreEquipo",$nombreequipo);
        $sentencia->bindParam(":Cantidad",$cantidad);
        $sentencia->bindParam(":FechaDeEntrega",$fechadeentrega);
        $sentencia->bindParam(":FechaDeRecibido",$fechaderecibido);
        $sentencia->bindParam(":Responsable",$responsable);
        $sentencia->bindParam(":FechaDeMantenimiento",$fechademantenimiento);
        $sentencia->bindParam(":Estado",$estado);
        $sentencia->execute();
        $mensaje="Registro creado";
        header("Location:index.php?mensaje=".$mensaje);
    }
?>
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
<!-- Formulario Crear Equipo -->
<div class="card">
        <div class="content">
            <div class="title">
            <h3 id="Titulo"><strong>Registrar Equipo</strong><img src="../../Img/Logo.png" width="230" height="80" align="right"></h3>
            </div>
            <div class="card-body">
            <form action="" method="post" class="form" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="fechadeinventario" class="form-label">Fecha de Inventario</label>
                    <input type="date"
                    class="form-control" name="fechadeinventario" id="fechadeinventario" aria-describedby="helpId" placeholder="">
                </div>
                <div class="mb-3">
                    <label for="nombreequipo" class="form-label">Nombre del Equipo</label>
                    <input type="text"
                    class="form-control" name="nombreequipo" id="nombreequipo" value="" required aria-describedby="helpId" placeholder="Ingrese el nombre del equipo">
                </div>
                <div class="mb-3">
                    <label for="cantidad" class="form-label">Cantidad</label>
                    <input type="number"
                    class="form-control" name="cantidad" id="cantidad" value="" required aria-describedby="helpId" placeholder="Ingrese la cantidad">
                </div>
                <div class="mb-3">
                    <label for="fechadeentrega" class="form-label">Fecha de Entrega</label>
                    <input type="date"
                    class="form-control" name="fechadeentrega" id="fechadeentrega" aria-describedby="helpId" placeholder="">
                </div>
                <div class="mb-3">
                    <label for="fechaderecibido" class="form-label">Fecha de Recibido</label>
                    <input type="date"
                    class="form-control" name="fechaderecibido" id="fechaderecibido" aria-describedby="helpId" placeholder="">
                </div>
                <div class="mb-3">
                    <label for="responsable" class="form-label">Responsable</label>
                    <select class="form-select form-select-sm" name="responsable" id="responsable">
                        <?php foreach($empleados as $empleado) {?>
                            <option value="<?php echo $empleado['Id']; ?>"><?php echo $empleado['Nombre'];?></option>
                        <?php }?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="fechademantenimiento" class="form-label">Fecha de Mantenimiento</label>
                    <input type="date"
                    class="form-control" name="fechademantenimiento" id="fechademantenimiento" aria-describedby="helpId" placeholder="">
                </div>
                </div>
                </br>
                <button type="submit" id="guardar" class="btn" title="Agregar">Agregar</button>
                &nbsp&nbsp
                <a name="" id="cancelar" class="btn" href="index.php" role="button" title="Cancelar">Cancelar</a>
            </form>
            </div>
        </div>
    </div>
<!-- Footer -->
<?php include("../../templates/footer.php"); ?>

<!-- Social Footer -->
<?php include("../../templates/socfooter.php"); ?>