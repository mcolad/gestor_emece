<?PHP
function tag_formu_v2($id_apli_tagdetag, $apli, $id_apli)
{
	// Esta funcion gestiona los id (de un TAGDETAG definido) del campo id_apli_tag de un registro 
	
	// Se determina un TAGDETAG y a partir de alli se lee todos los TAGS activos de ese TAGDETAG
	// Se activa el SELECT para seguir seleccionando los restantes (via ajax)
	// la acción se realiza (no espera ser enviado con SUBMIT)
	
	// $id_apli_tagdetag -> el TAGDETAG que vamos seleccionar
	// $apli -> apli sobre la que trabajamos
	// $id_apli -> registro sonre el que trabajamos
	
	global $cnx, $path, $abs; 

	// Recorro el TAGDETAG solo para saber su titulo
	$sql = "SELECT titulo FROM apli_TAGDETAG WHERE id_apli_tagdetag = '".$id_apli_tagdetag."' LIMIT 1";
	$result_tagdetag = mysqli_query($cnx, $sql);
	$row_tagdetag = mysqli_fetch_array($result_tagdetag);	
	
	// Recorro el registro para obtener los datos de id_apli_tag (es lo único que me interesa)
	$sql = "SELECT * FROM apli_".$apli." WHERE (id_apli_".strtolower($apli)." = '".$id_apli."')";
	$result_registro = mysqli_query($cnx, $sql);
	$row_registro = mysqli_fetch_array($result_registro);
	
	// Cargo en el array $array_tags todos los valores de idtags del usuario. Aquí conviven id_taggs de distintos TAGDETAG.
	if(isset($row_registro['id_apli_tag'])){ $array_tags = explode(";", $row_registro['id_apli_tag']); }
	
	// Determinar todos los nombres e id_apli_tagdetag correspondientes al TAGDETAG 
	// Para ello utilizo el $id_apli_tagdetag que fue determinado en function
	$sql = "SELECT * FROM apli_TAG WHERE ((estado > 1) AND (id_apli_tagdetag LIKE '%".$id_apli_tagdetag."%')) ORDER BY titulo ASC";
	$result_tag = mysqli_query($cnx, $sql);
	while($row_tag = mysqli_fetch_array($result_tag))
	{
		$array_todoslostags[$row_tag['id_apli_tag']] = $row_tag['titulo'];
				
		// Determinar cuáles de los id_apli_tag están activos y cuáles no
		if(isset($row_registro['id_apli_tag']))
		{
			if(in_array($row_tag['id_apli_tag'], $array_tags)) 
			{ 
				$array_tags_activos[] = $row_tag['id_apli_tag']; 
			}
			else
			{  
				$array_tags_noactivos[] = $row_tag['id_apli_tag']; 
			}
		}
		else
		{
			$array_tags_noactivos[] = $row_tag['id_apli_tag']; 
		}
	}
?>
	<!-- Aqui se desplieaga el select de lo que hay que agregar -->

	<div id='div_<?PHP echo md5($id_apli_tagdetag.$id_apli) ?>' style='clear:both;'>
		<div style='float:left; margin-right:10px'>
			<form class="form-group" name='formu_<?PHP echo md5($id_apli_tagdetag.$id_apli) ?>' style='display: inline;'>				
				<select class='form-control dropdown-toggle' name='select_<?PHP echo md5($id_apli_tagdetag.$id_apli) ?>' 
				onchange="recibeid('/<?PHP echo $abs ?>_admin/gestion/tag_formu_v2.php', 'accion=agrega&id_apli_tagdetag=<?PHP echo $id_apli_tagdetag ?>&apli=<?PHP echo $apli ?>&id_apli=<?PHP echo $id_apli ?>&id='+formu_<?PHP echo md5($id_apli_tagdetag.$id_apli) ?>.select_<?PHP echo md5($id_apli_tagdetag.$id_apli) ?>.value, '', 'div_<?PHP echo md5($id_apli_tagdetag.$id_apli) ?>')">
				
				<option disabled selected value=''><?PHP echo $row_tagdetag['titulo'] ?></option>
					<?PHP
						if(isset($array_tags_noactivos))
						{
							foreach($array_tags_noactivos as $value)
							{
								echo "<option value='".$value."'>".$array_todoslostags[$value]."</option>";
							}
						}
					?>
				</select>
			</form>
		</div>
	
	<!-- Aqui se desplieaga lo que se encuentra activo -->
	<?PHP
	if(isset($array_tags_activos))
	{
	?>
		<style> .elimina:hover { border-color:red !important; background-color: red !important; } </style>
	<?PHP
		foreach($array_tags_activos as $value)
		{
			?>
				<a onclick="javascript:recibeid('/<?PHP echo $abs ?>_admin/gestion/tag_formu_v2.php', 'accion=elimina&id_apli_tagdetag=<?PHP echo $id_apli_tagdetag ?>&apli=<?PHP echo $apli ?>&id_apli=<?PHP echo $id_apli ?>&id_elimina=<?PHP echo $value ?>', '', 'div_<?PHP echo md5($id_apli_tagdetag.$id_apli) ?>')" class="btn btn-success btn-sm elimina" onmouseover="document.bgColor='red'"  style='margin-top:4px; color:white' title='eliminar'><?PHP echo $array_todoslostags[$value]; ?></a>
			<?PHP
		}
	}
	?>
	</div>
<?PHP			
}
?>
