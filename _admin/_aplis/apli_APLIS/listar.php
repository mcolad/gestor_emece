<?PHP $include = "config.php"; $i = 0; while ((!file_exists($include) XOR $i == 20)){$include = "../".$include; $i++; } include_once($include);  ?>

<?PHP if(empty($_GET['menu_admin'])){ $menu_admin = 'aplis'; } else { $menu_admin = $_GET['menu_admin']; }?>

<?PHP if($menu_admin == 'aplis') { $menu_admin_sql = "AND menu_admin > 1"; $menu_admin_active = 'success'; } else { $menu_admin_active = 'admin'; }?>  
<button class='btn btn-<?PHP echo $menu_admin_active ?> btn-sm' onclick="window.location.href='index.php?menu_admin=aplis'"> APLICACIONES</button>

<?PHP if($menu_admin == 'gestion') { $menu_admin_sql = "AND menu_admin = '00000000000000' OR menu_admin = '00000000000001'"; $menu_admin_active = 'success'; } else { $menu_admin_active = 'admin'; }?>  
<button class='btn btn-<?PHP echo $menu_admin_active ?> btn-sm' onclick="window.location.href='index.php?menu_admin=gestion'"> GESTION</button>

<?PHP

	$select = "*";
	$from = "apli_$apli";
	$where = "WHERE titulo <> '' $menu_admin_sql";
	$order_que = "listorder";
	$order = "DESC";
	$var = "menu_admin=$menu_admin"; 
	list($rowp) = paginador($select, $from, $where, $order_que, $order, $var, 5);
?> 

  	<?PHP
	$countrow = 0;
	while(!empty($rowp[$countrow]))
	{
	?>
    
	<div class="card">
        <div class='card-header'>
            <div style="float:left">		
                    <button class='btn btn-admin btn-sm' onclick="window.location.href='index.php?editar=1&play=<?PHP echo $play; ?>&id=<?PHP echo $rowp[$countrow]["id_apli_".strtolower($apli)] ?>'"><span><?PHP svg('svgadmin/pen.svg', '15', '15') ?></span> EDITAR</button>
                    <button class='btn btn-admin btn-sm modalButton' data-toggle='modal' data-src='sql.php?apli=<?PHP echo $apli ?>&id=<?PHP echo $rowp[$countrow]["id_apli_".strtolower($apli)] ?>' data-width=100% data-target='#myModal'><?PHP svg('svgadmin/database.svg', '15', '15') ?></span> SQL</button>
                    <button class='btn btn-admin btn-sm modalButton' data-toggle='modal' data-src='<?PHP echo $path ?>_admin/gestion/ver.php?apli=<?PHP echo $apli ?>&id=<?PHP echo $rowp[$countrow]["id_apli_".strtolower($apli)] ?>' data-width=100% data-target='#myModal'><?PHP svg('svgadmin/eye.svg', '15', '15') ?></span> VER</button>
				<?PHP if($rowp[$countrow]["menu_admin"] == '00000000000000'){ ?>
                    <button class='btn btn-admin btn-sm' onclick="window.location.href='../<?PHP echo "apli_".$rowp[$countrow]["titulo"] ?>/'"><span><?PHP svg('svgadmin/external-link-alt.svg', '15', '15') ?></span> IR</button>
				<?PHP } 
				elseif($rowp[$countrow]["menu_admin"] != '00000000000001')
				{
				?>
                    <button class='btn btn-admin btn-sm' onclick="window.location.href='../../__aplis/<?PHP echo "apli_".$rowp[$countrow]["titulo"] ?>/'"><span><?PHP svg('svgadmin/external-link-alt.svg', '15', '15') ?></span> IR</button>
                    <?PHP
				}
				?>
            </div>
            <div style="float:right">
                <div style="float:left" class='d-none d-lg-block'><button disabled="disabled" class="btn btn-fecha btn-sm"><?PHP echo substr($rowp[$countrow]['fecha'], 0, -3); ?></button></div>
                <div style="float:left; margin-top:6px;" id='estado<?PHP echo $rowp[$countrow]["id_apli_".strtolower($apli)] ?>'>
					<?PHP $tipo = "apli_$apli"; $id_tipo = $rowp[$countrow]["id_apli_".strtolower($apli)]; include("$path/_admin/gestion/estado.php"); ?>
                </div>
            </div>
  		</div>
        <div class="card-body">		
                        <div style='float:left;'><?PHP  if(!empty($rowp[$countrow]['destacado'])){echo "<a title='ver nota' href='".$path."/_fotos/".$rowp[$countrow]['destacado']."_original.jpg' onclick=\"return hs.expand(this)\"><img style='padding:5px' width=65px; src='".$path."/_fotos/".$rowp[$countrow]['destacado']."_300x300.jpg'></a>";} ?> </div>
                        <h5><?PHP echo $rowp[$countrow]['bajada']; ?></h5>  (<?PHP echo $rowp[$countrow]['titulo']; ?>)
        </div>
        <div class="card-footer">	 
           <?PHP tagdeaplis($apli, $rowp[$countrow]["id_apli_".strtolower($apli)], 0);?>	
        </div>
    </div>
    <br />
	<?PHP	
		$countrow++;	
	}
	if(!$countrow)
	{
		?>
          <div class="text-center">
		<?PHP
		svg('svgadmin/frown.svg', 300, 300, '#DCE7E9'); 
		?>
          </div>
		<?PHP
	}

?>

