<?PHP $no_registro = 1; $include = "config.php"; $i = 0; while ((!file_exists($include) XOR $i == 20)){$include = "../".$include; $i++; } include_once($include);  ?>
<?PHP
	$id_apli_tagdetag = $_GET['id_apli_tagdetag'];
	$apli = $_GET['apli'];
	$id_apli = $_GET['id_apli'];

	$sql = "SELECT * FROM apli_".$apli." WHERE (id_apli_".strtolower($apli)." = '".$id_apli."')";
	$result_registro = mysqli_query($cnx, $sql);
	$row_registro = mysqli_fetch_array($result_registro);


	if($_GET['accion'] == 'elimina')
	{
		mysqli_query($cnx, "UPDATE apli_".$apli." SET `id_apli_tag` = '".str_replace($_GET['id_elimina'].";", '', $row_registro['id_apli_tag'])."' WHERE id_apli_".strtolower($apli)." = '".$id_apli."';");
	}
	elseif($_GET['accion'] == 'agrega')
	{
		// Recorro el TAGDETAG solo para saber si admite selección multiple o no
		$sql = "SELECT unico FROM apli_TAGDETAG WHERE id_apli_tagdetag = '".$id_apli_tagdetag."' LIMIT 1";
		$result_tagdetag = mysqli_query($cnx, $sql);
		$row_tagdetag = mysqli_fetch_array($result_tagdetag);

		// Esta sección es para el caso en que solo puede ser seleccionado solo 1 TAG
		if($row_tagdetag['unico'] == '1')
		{ 
			$sql = "SELECT * FROM apli_TAG WHERE ((estado > 1) AND (id_apli_tagdetag LIKE '%".$id_apli_tagdetag."%'))";
			$result_tag = mysqli_query($cnx, $sql);
			while($row_tag = mysqli_fetch_array($result_tag))
			{
				$row_registro['id_apli_tag'] = str_replace($row_tag['id_apli_tag'].';', '', $row_registro['id_apli_tag']);
			}
		}

		mysqli_query($cnx, "UPDATE apli_".$apli." SET `id_apli_tag` = '".$row_registro['id_apli_tag'].$id.";' WHERE id_apli_".strtolower($_GET['apli'])." = '".$id_apli."';");

		/*

		if($row_tagdetag['unico'] == 1)
		{
			$result_tags = mysqli_query($cnx, "SELECT * FROM apli_TAG WHERE id_apli_tagdetag = '".$row_tagdetag['id_apli_tagdetag'].";';");
			while($row_tags = mysqli_fetch_array($result_tags))
			{
				$row['id_apli_tag'] = str_replace($row_tags['id_apli_tag'].';', '', $row['id_apli_tag']); 
			} 

		} 
		$insert_id_apli_tagdetag = $row['id_apli_tag'].$_GET['id_apli_tag'];
		mysqli_query($cnx, "UPDATE apli_".$_GET['apli']." SET `".$_GET['id_apli_tagdetag']."` = '".$insert_id_apli_tagdetag.";' WHERE id_apli_".strtolower($_GET['apli'])." = '".$_GET['id_apli']."';");
		*/
	}
	tag_formu_v2($id_apli_tagdetag, $apli, $id_apli);
?>