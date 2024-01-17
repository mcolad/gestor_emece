<?PHP 
	if(!empty($_GET['id']) AND empty($_GET['confirma']))
	{
		$id = $_GET['id'];
		$result = mysqli_query($cnx, "SELECT * FROM apli_$apli WHERE id_apli_$apli = '".$_GET['id']."'; "); 
		$row = mysqli_fetch_array($result);
		$fecha_nota = $row['fecha'];
		$titulo = $row['titulo'];
		$bajada = $row['bajada'];
	}
	else
	{
		$id = date('YmdHis');
		$fecha_nota = date('Y-m-d H:i');
		$titulo = '';
		$bajada = '';
		?>
        <div class='col-md-12 text-right mt-3'>
             <button class='btn btn-success btn-sm' onclick="window.location.href='index.php?csv=1&editar=1&id_apli_tagdetag=<?PHP echo $_GET['id_apli_tagdetag'] ?>'" type="submit"/>Subir CSV</button>
        </div>
		<?PHP 
	}
?>
    	<form name="formu" action="index.php?id=<?PHP echo $id; ?>&play=<?PHP echo $play ?>&id_apli_tagdetag=<?PHP echo $_GET['id_apli_tagdetag'] ?>&confirma=1" method="post">
        <input name='id_apli_tagdetag' value='<?PHP  echo $_GET['id_apli_tagdetag'] ?>' type='hidden' class='form-control'/>
        <div class="form-group">
            <div class="row">
                            <input name='fecha_nota' id='fecha_nota' value='<?PHP  echo $fecha_nota; ?>' type='hidden' class='form-control'/>
                    <div class='col-md-4'>
                        <label>Nombre del TAG</label><br />
                        <input class='form-control' name='titulo' value='<?PHP  echo $titulo; ?>' type='text'/>
                    </div> 
                    <div class='col-md-12'>
                        <label>Aclaración</label><br />
                        <textarea class='form-control' name='bajada'><?PHP  echo $bajada; ?></textarea>
                    </div> 
					<div class='col-md-12 text-center mt-3'>
                        <button class='btn btn-success' value="Guardar" type="submit"/>Guardar</button>
                        <button class='btn btn-danger' value="Cancelar" type="reset" onClick="location.href='?play=<?PHP echo $play ?>&id_apli_tagdetag=<?PHP echo $_GET['id_apli_tagdetag'] ?>&'" />Cancelar</button>
                    </div>
           </div>
        </div>
 		</form>