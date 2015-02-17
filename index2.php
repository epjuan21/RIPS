
<?php
$gestor = @fopen("uploads/AH000017.txt", "r");
if ($gestor) {
		while (!feof($gestor)) {
		    $line = stream_get_line($gestor, 1000000, "\n");
		    //echo $line;
		    $us = explode(",", $line);
		   
		    if(isset($us[18]))
		    	{
		    echo $us[18];
		    echo "<br>";
		    	}

		} 
    if (!feof($gestor)) {
        echo "Error: fallo inesperado de fgets()\n";
    }
    fclose($gestor);
}
?>

