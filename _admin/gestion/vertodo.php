<?PHP $include = "config.php"; $i = 0; while ((!file_exists($include) XOR $i == 20)){$include = "../".$include; $i++; } include_once($include); ?>
<html>
<head>

<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.4.0/css/buttons.dataTables.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.1.0/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.1.0/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.1.0/js/buttons.print.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.1.0/js/buttons.colVis.min.js"></script>

<?PHP //$_GET['apli'] = 'inscripciones' ?>

<script>
$(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                extend: 'copyHtml5',
                exportOptions: {
                    columns: [':visible' ]
                }
            },
            {
                extend: 'excelHtml5',
                exportOptions: {
                    columns: [':visible' ]
                }
            },
            {
                extend: 'csvHtml5',
                exportOptions: {
                    columns: [':visible' ]
                }
            },
			{
                extend: 'pdfHtml5',
                exportOptions: {
                    columns: [':visible' ]
                }
            },
			{
                extend: 'print',
                exportOptions: {
                    columns: [':visible' ]
                }
            },			
            'colvis'
        ]
    } );



} );
</script>
</head>

<body>
<table id="example"  class="display" style="width:100%">

<?PHP
							$result = mysqli_query($cnx, "SELECT * FROM apli_".$_GET['apli']);
							$row = mysqli_fetch_array($result);
							$result_column = mysqli_query($cnx, "SHOW COLUMNS FROM apli_".$_GET['apli']);
							echo "<thead>\n<tr>";
							while($row_column = mysqli_fetch_array($result_column))
							{
								echo "<th>".$row_column['Field']."</th>";
							} 
							echo "</tr>\n</thead>\n\n";


							echo "<tbody>\n";
							while($row = mysqli_fetch_array($result))
							{
								echo "<tr>";
								$result_column = mysqli_query($cnx, "SHOW COLUMNS FROM apli_".$_GET['apli']);
								while($row_column = mysqli_fetch_array($result_column))
								{
									echo "<td>".htmlspecialchars($row[$row_column['Field']])."</td>";
								} 
								echo "</tr>\n";
							} 
							echo "</tbody>\n\n";

?>

</table> 
</body>
</html>