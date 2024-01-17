<?PHP $no_registro = 1; $include = "config.php"; $i = 0; while ((!file_exists($include) XOR $i == 20)){$include = "../".$include; $i++; } include_once($include);  ?>
<?PHP

//	echo $_GET['apli_rel'];

	///$id_apli_tagdetag = $_GET['id_apli_tagdetag'];
	$apli_rel = $_GET['apli_rel'];
	$apli = $_GET['apli'];
	$id_apli = $_GET['id_apli'];
	$campo = $_GET['campo'];

	$sql = "SELECT * FROM apli_".$apli." WHERE (id_apli_".strtolower($apli)." = '".$id_apli."')";
	$result_registro = mysqli_query($cnx, $sql);
	$row_registro = mysqli_fetch_array($result_registro);


	if($_GET['accion'] == 'elimina')
	{
		mysqli_query($cnx, "UPDATE apli_".$apli." SET `".$campo."` = '".str_replace($_GET['id_elimina'].";", '', $row_registro[$campo])."' WHERE id_apli_".strtolower($apli)." = '".$id_apli."';");
	}
	elseif($_GET['accion'] == 'agrega')
	{
		mysqli_query($cnx, "UPDATE apli_".$apli." SET `".$campo."` = '".$row_registro[$campo].$id.";' WHERE id_apli_".strtolower($_GET['apli'])." = '".$id_apli."';");

	}
	tag_apli_v2($apli_rel, $apli, $id_apli, $campo);
?>