<?PHP
function imprime_tag($id_apli_tagdetag, $id_apli_tag)
{
	// imprimime los tag (activos) discriminando por taddetag
	// $id_apli_tagdetag = el ID tagdetag que hay que leer
	// $array_id_apli_tag = colección de tags asociados al registro
	
	// ATENCION: de esta función hay que hacer una versi+ón mejorada, porque con solo poner el $id_apli_tagdetag alcanza para
	// luego determinar todos los titulos asociados en el campo id_apli_tag, por lo cual alcanza con utilizar la funcion 
	// de modo imprime_tag($id_apli_tagdetag)
	
	global $arraytags;
		if($arraytags)
		{ 
			$arr_ph = explode(";",$id_apli_tag);
			foreach($arr_ph as $i)
			{  
				if(!empty($arraytags[$id_apli_tagdetag][$i])){ echo $arraytags[$id_apli_tagdetag][$i]; } 
			}
		}
}
?>
<?PHP
function return_tag($id_apli_tagdetag, $id_apli_tag)
{
	// imprimime un tag (activos) discriminando por taddetag
	// $id_apli_tagdetag = el ID tagdetag que hay que leer
	// $array_id_apli_tag = colección de tags asociados al registro
	
	// ATENCION: de esta función hay que hacer una versi+ón mejorada, porque con solo poner el $id_apli_tagdetag alcanza para
	// luego determinar todos los titulos asociados en el campo id_apli_tag, por lo cual alcanza con utilizar la funcion 
	// de modo imprime_tag($id_apli_tagdetag)
	
	global $arraytags;
		if($arraytags)
		{ 
			$arr_ph = explode(";",$id_apli_tag);
			foreach($arr_ph as $i)
			{  
				if(!empty($arraytags[$id_apli_tagdetag][$i])){ return $arraytags[$id_apli_tagdetag][$i]; } 
			}
		}
}
?>


<?PHP
function leer_titulo_tagdetag($id_tagdetag)
{
	global $cnx;
	$result_tagdetag = mysqli_query($cnx, "SELECT titulo FROM apli_TAGDETAG WHERE id_apli_tagdetag = '".substr($id_tagdetag, 0, 14)."' LIMIT 1");
	$row_tagdetag = mysqli_fetch_array($result_tagdetag);
	return  $row_tagdetag['titulo'];
}
?>

<?PHP
function tags_activos($apli, $id)
{
	global $cnx;
	$result = mysqli_query($cnx, "SELECT * FROM apli_".$apli." WHERE id_apli_".$apli." = '".$id."' LIMIT 1");
	$row = mysqli_fetch_array($result);
	$array_aplitag_activos = explode(";", $row['id_apli_tag'], -1);

	$result = mysqli_query($cnx, "SELECT * FROM apli_APLIS WHERE (titulo = '$apli')");
	$row = mysqli_fetch_array($result);
	$array_aplitagdetag_activos = explode(";", $row['id_apli_tagdetag'], -1);

	$query_tagdetag = "SELECT * FROM apli_TAGDETAG WHERE (estado > 1) ORDER BY fecha ASC;";
	$result_tagdetag = mysqli_query($cnx, $query_tagdetag);
	while($row_tagdetag = mysqli_fetch_array($result_tagdetag))
	{
			if(in_array($row_tagdetag['id_apli_tagdetag'], $array_aplitagdetag_activos))
			{
					$array_tagdetag_activos[$row_tagdetag['titulo']] = $row_tagdetag['id_apli_tagdetag'];
					
					$query_tag = "SELECT * FROM apli_TAG WHERE (estado > 1 AND id_apli_tagdetag LIKE '%".$row_tagdetag['id_apli_tagdetag']."%');";
					$result_tag = mysqli_query($cnx, $query_tag);
					while($row_tag = mysqli_fetch_array($result_tag))
					{
						if(in_array($row_tag['id_apli_tag'], $array_aplitag_activos))
						{
							$array_tag_activos[$row_tag['titulo']] = $row_tag['id_apli_tag'];
						}
					}
			}
	
	}
	mysqli_free_result($result_tagdetag);
	
	if(empty($array_tag_activos)){ $array_tag_activos = array();}
	return $array_tag_activos;
}
?>

<?PHP
function leer_titulo_tag($id_tag)
{
	global $cnx;
	$array_id_tag = explode(";",$id_tag);
	$titulo = '';
	foreach($array_id_tag as $id)
	{
		$result_tag = mysqli_query($cnx, "SELECT titulo FROM apli_TAG WHERE id_apli_tag = '".$id."' LIMIT 1");
		$row_tag = mysqli_fetch_array($result_tag);
		if(!empty($row_tag['titulo'])){
		$titulo = $titulo." ".$row_tag['titulo'];}
	}
	return $titulo;
}
?>