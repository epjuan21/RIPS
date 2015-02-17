<!DOCTYPE html>

<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Administración de RIPS</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

        <link rel="stylesheet" href="dist/css/style.css">
    </head>
    <body>

        <!-- Add your site or application content here -->
		<div class="container">


			<div class="head-container">

				<div class="pate-title">
					RIPS Admin
				</div>

				<div class="image-logo">

					imagen

				</div>

			</div>

			<form action="" method="post" enctype="multipart/form-data">

				<input class="btn" type="file" id="file" name="files[]" multiple="multiple" accept="text/*" />

				<input class="btn" type="submit" value="Upload!" />

			</form>

		</div>

    </body>
</html>



<?php
date_default_timezone_set('America/Bogota');
require_once ("class.USRIPS.php");
$valid_formats = array("txt", "png", "gif", "zip", "bmp");
$max_file_size = 1024*100; //100 kb
$path = "uploads/"; // Upload directory
$count = 0;
$objUSRIPS = new usrips();

if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){

	// Loop $_FILES to exeicute all files
	foreach ($_FILES['files']['name'] as $f => $name){

	    if ($_FILES['files']['error'][$f] == 4){
	        continue; // Skip file if any error found
	    }

	    if ($_FILES['files']['error'][$f] == 0){

	        if ($_FILES['files']['size'][$f] > $max_file_size) {
	            $message[] = "$name is too large!.";
	            continue; // Skip large files
	        }

			elseif( ! in_array(pathinfo($name, PATHINFO_EXTENSION), $valid_formats) ){
				$message[] = "$name is not a valid format";
				continue; // Skip invalid file formats
			}
	        else{ // No error found! Move uploaded files 
	            
	            if(move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$name))
	            	
	            	// Definir Que Tipo de Archivo Se Carga
	            	
	            	$tipoArchivo = substr($name, 0,2);
					
					$gestor = @fopen($path.$name, "r");

					$NAME_FILE = strstr($name, '.', true);
	            	
	            	switch ($tipoArchivo) {

	            		case 'US';

						if ($gestor){

								while (!feof($gestor)) {

								    $line = stream_get_line($gestor, 1000000, "\n");
								    
								    if ($line){

								    	$US = explode(",", $line);

									    $NUM_ROWS_US = $objUSRIPS->getNumRowsUS();
									   
									    $US_ID =  $NUM_ROWS_US+1;

									    $now = new DateTime;

									    $US_DATE_ADD = $now->format('Y-m-d H:i');

									   	@$US_TIPO_ID =  $US[0];
									   	@$US_NUM_ID = $US[1];
									   	@$US_COD_ENT = $US[2];
									   	@$US_TIPO_USUARIO = $US[3];
									   	@$US_PRI_AP = $US[4];
									   	@$US_SEG_AP = $US[5];
									   	@$US_PRI_NOM = $US[6];
									   	@$US_SEG_NOM = $US[7];
									   	@$US_EDAD = $US[8];
									   	@$US_UNI_EDAD = $US[9];
									   	@$US_SEXO = $US[10];
									   	@$US_COD_DEP = $US[11];
									   	@$US_COD_MUN = $US[12];
									   	@$US_ZONA = $US[13];

									   	$objUSRIPS->insertUS($US_ID,$NAME_FILE,$US_DATE_ADD,$US_TIPO_ID,$US_NUM_ID,$US_COD_ENT,$US_TIPO_USUARIO,$US_PRI_AP,$US_SEG_AP,$US_PRI_NOM,$US_SEG_NOM,$US_EDAD,$US_UNI_EDAD,$US_SEXO,$US_COD_DEP,$US_COD_MUN,$US_ZONA);

								    }

	
								   	echo $line;
								   	echo "<br>";

								} 

						    if (!feof($gestor)) {
						        echo "Error: fallo inesperado de fgets()\n";
						    }
						    fclose($gestor);
						}

	            	}
	            	$count++; // Number of successfully uploaded file

	        }

		}

	}

}


?>