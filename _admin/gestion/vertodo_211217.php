<?PHP $include = "config.php"; $i = 0; while ((!file_exists($include) XOR $i == 20)){$include = "../".$include; $i++; } include_once($include); ?>
<!DOCTYPE html>
<html lang="en">
<head>
<?PHP $include = "../_admin/header.php"; $i = 0; while ((!file_exists($include) XOR $i == 20)){$include = "../".$include; $i++; } include_once($include); ?>


<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.4.0/css/buttons.dataTables.min.css">
</head>
<body>
	<script>
		$(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
	</script>


        <div class="row">
             <div class="col-lg-12">
                <table class="table table-striped" id="example">
                  <tbody>
                    <?PHP
						$result = mysqli_query($cnx, "SELECT * FROM apli_".$_GET['apli']);
						$row = mysqli_fetch_array($result);
							$result_column = mysqli_query($cnx, "SHOW COLUMNS FROM apli_".$_GET['apli']);
							echo "<tr>";
							while($row_column = mysqli_fetch_array($result_column))
							{
								
								echo "<td style='cursor:help' scope='row' title='".$row_column['Type']."'>".$row_column['Field']."</td>";
							} 
							echo "</tr>";
						while($row = mysqli_fetch_array($result))
						{
							echo "<tr>";
							$result_column = mysqli_query($cnx, "SHOW COLUMNS FROM apli_".$_GET['apli']);
							while($row_column = mysqli_fetch_array($result_column))
							{
								echo "<td><div style='float:left; word-wrap:break-word;'><code>".htmlspecialchars($row[$row_column['Field']])."</code></div></td>";
							} 
							echo "</tr>";
						} 

                    ?>
                  </tbody> 
                </table> 
              </div> 
           </div>
</body>