<?PHP 
//  	$exepciones = array('id_apli_'.strtolower($apli), 'destacado', 'id_apli_tag', 'contador', 'estado');
	if(!empty($_GET['id']) AND empty($_GET['confirma']))
	{
		$id = $_GET['id'];
		$result = mysqli_query($cnx, "SELECT * FROM apli_$apli WHERE id_apli_".strtolower($apli)." = '".$_GET['id']."'; "); 
		$row = mysqli_fetch_array($result);

		$result_column = mysqli_query($cnx, "SHOW COLUMNS FROM apli_$apli");
		while($row_column = mysqli_fetch_array($result_column))
		{
			if(!in_array($row_column['Field'], $exepciones))
			{	
				${$row_column['Field']} = $row[$row_column['Field']];
			}
		}
		$id_apli_tag = $row['id_apli_tag'];
	}
	else
	{
		$id = date('YmdHis');
		$sql = mysqli_query($cnx, "INSERT INTO apli_$apli (id_apli_".strtolower($apli).") VALUES ('".$id."')") or die(mysqli_error());

		$result_column = mysqli_query($cnx, "SHOW COLUMNS FROM apli_$apli");
		while($row_column = mysqli_fetch_array($result_column))
		{
//			if(!in_array($row_column['Field'], $exepciones))
//			{	
				${$row_column['Field']} = '';
//			}
		}
		$fecha = date('Y-m-d H:i');
		$id_apli_tag = '';
	}
?>
<?PHP  if($row_data['adjuntos']) {?>
<div class='col-lg-12 text-right'>
    <button class='btn btn-admin btn-sm modalButton' data-toggle='modal' data-src='<?PHP echo $path; ?>/_admin/__aplis/apli_IMG/index.php?menu_adj=1&id_apli=<?PHP echo $id; ?>&apli_padre=<?PHP echo $apli; ?>' data-width=100% data-target='#myModal'><i class="fa fa-paperclip"></i>  Adjuntos</button>
</div>
<?PHP } ?>
    	<form name="formu" action="?id=<?PHP echo $id; ?>&play=<?PHP echo $play ?>&order_que=<?PHP echo $order_que ?>&order=<?PHP echo $order ?>&filtro_tag=<?PHP echo $filtro_tag ?>&confirma=1" method="post">
        <div class="form-group">
            <div class="row">
                    <div class='col-lg-4'>
                            <label>Fecha y hora</label><br />
                            <input name='fecha' id='fecha' value='<?PHP  echo $fecha; ?>' type='text' class='form-control'/>
                            <script>$('#fecha').datetimepicker({ footer: true, modal: true, format: 'yyyy-mm-dd HH:MM' });</script>
                    </div>
                    
					<?PHP                    
							$exepciones = array('id_apli_'.strtolower($apli), 'fecha', 'id_apli_tag', 'contador', 'estado');
                            $result_column = mysqli_query($cnx, "SHOW COLUMNS FROM apli_$apli");
                            while($row_column = mysqli_fetch_array($result_column))
                            {
                                if(!in_array($row_column['Field'], $exepciones))
                                {	
									if($row_column['Type'] == 'mediumtext')	
									{
                                    ?>
                                        <div class='col-md-12'>
                                            <label><?PHP echo $row_column['Field'] ?></label>
                                                <img src="<?PHP echo $path; ?>/_admin/_js/_editor/negrita.gif" alt="negrita" onclick="formatear(this, 'b')"/>
                                                <img src="<?PHP echo $path; ?>/_admin/_js/_editor/cursiva.gif" alt="negrita" onclick="formatear(this, 'i')"/>
                                                <img src="<?PHP echo $path; ?>/_admin/_js/_editor/subrayado.gif" alt="negrita" onclick="formatear(this, 'u')"/>
                                                <img src="<?PHP echo $path; ?>/_admin/_js/_editor/url.gif" alt="url" onclick="uri()"/><font color="#666666" size="-2">Para agregar un adjunto inserte el código del mismo</font><br />
                                            <textarea class='form-control' rows="4" name='<?PHP echo $row_column['Field'] ?>' id="edited" onfocus="elEditor = ini_editor(this)" onchange="prever()" ><?PHP echo ${$row_column['Field']}; ?></textarea>
                                        </div>                                    
                                    <?PHP
									}
									else
									{
									?>
                                        <div class='col-md-12'>
                                            <label><?PHP echo $row_column['Field'] ?></label><br />
                                            <input class='form-control' name='<?PHP echo $row_column['Field'] ?>' value='<?PHP  echo ${$row_column['Field']}; ?>' type='text'/>
                                        </div> 
									
									<?PHP	
									}
                                }
                            }
                    ?>                    

                    <div class='col-md-12 text-center mt-3'>
                        <button class='btn btn-success' value="Guardar" type="submit"/>Guardar</button>
                        <button class='btn btn-danger' value="Cancelar" type="reset" onClick="location.href='?play=<?PHP echo $play ?>&filtro_tag=<?PHP echo $filtro_tag ?>'" />Cancelar</button>
                    </div>
           </div>
        </div>
 		</form>
        
        <div class="row">
            <div class='col-md-12'>
            <?PHP 
                $result = mysqli_query($cnx, "SELECT * FROM apli_APLIS WHERE (titulo = '$apli')");
                $row_tag = mysqli_fetch_array($result);
                $array_id_apli_tagdetag = explode(";", $row_tag['id_apli_tagdetag']);
                tag($array_id_apli_tagdetag, $apli, $id, $id_apli_tag);
            ?>
            </div>
        </div>