<?PHP
function tag_apli_v2($apli_rel, $apli, $id_apli, $campo = 'id_apli_tag')
{
	// Esta herramienta vincula una apli con id de otras aplis para insertar en id_apli_tags
	// Se determina una APLI y a partir de alli se lee todos los REGISTROS activos de esa APLI
	// Se activa el SELECT para seguir seleccionando los restantes (via ajax)
	// la acción se realiza (no espera ser enviado con SUBMIT)
	
	// $apli_rel ---> Nombre de la plicación con la que se relacionarán los registros 
	// $apli
	// $id_apli
	// $campo ---> Por defecto, todos los id van al campo id_apli_tag, pero podrían setearse a otro distinto
	
	global $cnx, $path, $abs;  

	// Recorro el APLI REL para obtener sus ID
//	$sql = "SELECT * FROM apli_".$apli_rel." WHERE estado > '1'";
//	$result_apli_rel = mysqli_query($cnx, $sql);
//	$row_apli_rel = mysqli_fetch_array($result_apli_rel);	
	
	// Recorro el registro para obtener los datos de id_apli_tag (es lo único que me interesa)
	$sql = "SELECT * FROM apli_".$apli." WHERE (id_apli_".strtolower($apli)." = '".$id_apli."')";
	$result_registro = mysqli_query($cnx, $sql);
	$row_registro = mysqli_fetch_array($result_registro);
//	print_r($row_registro);
	
	// Cargo en el array $array_tags todos los valores de idtags del usuario. Aquí conviven id_taggs de distintos apli_rel.
	if(isset($row_registro[$campo])){ $array_tags = explode(";", $row_registro[$campo]); }

	// Determinar todos los nombres e id_apli_apli_rel correspondientes al apli_rel 
	// Para ello utilizo el $id_apli_apli_rel que fue determinado en function
//	$sql = "SELECT * FROM apli_".$apli_rel." WHERE ((estado > 1) AND (id_apli_".strtolower($apli_rel)." LIKE '%".$id_apli_rel."%')) ORDER BY titulo ASC";

	$sql = "SELECT * FROM apli_".$apli_rel." WHERE (estado > 1) ORDER BY titulo ASC";
	$result_tag = mysqli_query($cnx, $sql);
	while($row_tag = mysqli_fetch_array($result_tag))
	{
		$array_todoslostags[$row_tag['id_apli_'.$apli_rel]] = $row_tag['titulo'];
				
		// Determinar cuáles de los id_apli_tag están activos y cuáles no
		if(isset($row_registro[$campo]))
		{
			if(in_array($row_tag['id_apli_'.$apli_rel], $array_tags)) 
			{ 
				$array_tags_activos[] = $row_tag['id_apli_'.$apli_rel]; 
			}
			else
			{  
				$array_tags_noactivos[] = $row_tag['id_apli_'.$apli_rel]; 
			}
		}
		else
		{
			$array_tags_noactivos[] = $row_tag['id_apli_'.$apli_rel]; 
		}
	}
?>
	<!-- Aqui se desplieaga el select de lo que hay que agregar -->

	<div id='div_<?PHP echo md5($apli_rel.$id_apli) ?>' style='clear:both;'>
		<div style='margin-right:10px'>
			<form class="form-group" name='formu_<?PHP echo md5($apli_rel.$id_apli) ?>' style='display: inline;'>				
				<select class='form-control dropdown-toggle' name='select_<?PHP echo md5($apli_rel.$id_apli) ?>' 
				onchange="recibeid('/<?PHP echo $abs ?>_admin/gestion/tag_apli_v2.php', 'accion=agrega&campo=<?PHP echo $campo ?>&apli_rel=<?PHP echo $apli_rel ?>&apli=<?PHP echo $apli ?>&id_apli=<?PHP echo $id_apli ?>&id='+formu_<?PHP echo md5($apli_rel.$id_apli) ?>.select_<?PHP echo md5($apli_rel.$id_apli) ?>.value, '', 'div_<?PHP echo md5($apli_rel.$id_apli) ?>')">
				
				<option disabled selected value=''>Seleccionar</option>
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
				<a onclick="javascript:recibeid('/<?PHP echo $abs ?>_admin/gestion/tag_apli_v2.php', 'accion=elimina&campo=<?PHP echo $campo ?>&apli_rel=<?PHP echo $apli_rel ?>&apli=<?PHP echo $apli ?>&id_apli=<?PHP echo $id_apli ?>&id_elimina=<?PHP echo $value ?>', '', 'div_<?PHP echo md5($apli_rel.$id_apli) ?>')" class="btn btn-success btn-sm elimina" onmouseover="document.bgColor='red'"  style='margin-top:4px; color:white' title='eliminar'><?PHP echo $array_todoslostags[$value]; ?></a>
			<?PHP
		}
	}
	?>
	</div>
<?PHP		
}
?>
