<?PHP
function destacado($destacado)
{
	// para recojer los datos:
	// list($img, $img_url, $pdf, $pdf_url, $zip, $zip_url) = destacado()
	
	global $path, $cnx;
	$array = explode(";", $destacado);
	foreach($array as $value)
	{
		$url = '';
		$var = strtolower(substr($value, 0, 3));
		$var_url = strtolower(substr($value, 0, 3)).'_url';
		if($var == 'img')
		{ 
			$result = mysqli_query($cnx, "SELECT ext FROM apli_IMG WHERE id_apli_img = '".substr($value, 4)."' LIMIT 1;");
			$row  = mysqli_fetch_array($result);
			$url = $path.'_fotos/'.substr($value, 4).".".$row['ext']; 
		}
		if($var == 'pdf'){ $url = $path.'_pdf/'.substr($value, 4).'.pdf'; }
		if($var == 'zip')
		{ 
			$result = mysqli_query($cnx, "SELECT ext FROM apli_ZIP WHERE id_apli_zip = '".substr($value, 4)."' LIMIT 1;");
			$row  = mysqli_fetch_array($result);
			$url = $path.'_zip/'.substr($value, 4).".".$row['ext'];  
		}
		$$var = substr($value, 4);
		$$var_url = $url;
	}
	if(empty($img)){ $img = ''; }; if(empty($pdf)){ $pdf = ''; }; if(empty($zip)){ $zip = ''; };
	if(empty($img_url)){ $img_url = ''; }; if(empty($pdf_url)){ $pdf_url = ''; }; if(empty($zip_url)){ $zip_url = ''; };
	return array($img, $img_url, $pdf, $pdf_url, $zip, $zip_url);
}

function url_destacado($id, $apli, $tipo)
{
	// devuelve url de la ubicación del destacado... 
	// ATENCION: está funcional solo para pdf o zip
	global $path, $cnx;
	$result = mysqli_query($cnx, "SELECT destacado FROM apli_".$apli." WHERE id_apli_".$apli." = ".$id." LIMIT 1;");
	$row  = mysqli_fetch_array($result);
	if($row['destacado']){ 	return $path."_".strtolower($tipo)."/".substr(strstr($row['destacado'], $tipo), 4, 14).".".strtolower($tipo); }
	else { $vacio = ''; return $vacio; }
}

function xxxdestacado($id_apli, $tipo)
{
	return substr(strstr($id_apli, $tipo), 4, 14);
}
?>