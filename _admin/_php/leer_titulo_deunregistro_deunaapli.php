<?PHP 
function leer_titulo_deunregistro_deunaapli($apli, $id_apli)
{
	global $cnx;	

	$result_tag = mysqli_query($cnx, "SELECT titulo FROM $apli WHERE id_$apli = '".$id_apli."' LIMIT 1");
	$row_tag = mysqli_fetch_array($result_tag);
	if(isset($row_tag['titulo']))
	{
		$titulo = $row_tag['titulo'];
	}
	else
	{ $titulo = ''; }

	return $titulo;
}
?>