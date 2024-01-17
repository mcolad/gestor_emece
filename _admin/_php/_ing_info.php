<?PHP function ing_info($titulo_ing_info)
{
	global$cnx;
	$result_info = mysqli_query($cnx, "SELECT * FROM apli_info WHERE (estado > 1 AND fecha < '".date('Y-m-d H:i:s')."') ORDER BY fecha DESC LIMIT 1;");
	$row_info = mysqli_fetch_array($result_info);
      ?> 
      <div class="section section-content">
         <div class="container  pl-md-5 pr-md-3">
            <h2 id="inicio">xccx echo $titulo_ing_info; ?></h2>              
            <div class="card card-raised card-background" style="margin-top: 0px !important; background-image: url('/epec/_fotos/xccx redim(substr(strstr($row_info['destacado'], 'IMG'), 4, 14), 735, 490); echo substr(strstr($row_info['destacado'], 'IMG'), 4, 14) ?>_735x490.jpg')">
               <div class="card-body text-left" style="max-width: 700px;">
                     <h6 class="card-category text-info">xccx echo fecha($row_info['fecha']) ?></h6>
                     <h2 class="card-title">xccx echo $row_info['titulo'] ?></h2>
                     <p class="card-description d-none d-md-block">
                      xccx echo cuerpo($row_info['bajada']) ?>
                     </p>
                        <button class='btn btn-ingenieria btn-sm modalButton' data-toggle='modal' data-src='/epec/posgrado/novedades/noti.php?modal=1&h&id_apli_info=xccx echo $row_info['id_apli_info']; ?>' data-width=100% data-target='#myModal'>ver nota</button>

               </div>
            </div>
         </div>
      </div>
      <?PHP }
?>