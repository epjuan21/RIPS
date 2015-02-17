<?php
require_once ("class.ConnectionMySQL.php");

class usrips extends ConnectionMySQL {

		public function importarUSRIPS ($archivo) {
		$this->query = $this->conn->prepare('LOAD DATA INFILE "C:/wamp/www/PruebaUploadMultiple/'.$archivo.'" INTO TABLE us FIELDS TERMINATED BY "," LINES TERMINATED BY "\n"');
		$this->query->execute();
		//header ("Location: index.php");
	}

	public function getNumRowsUS () {
		$this->query = $this->conn->prepare('SELECT * FROM us');
		$this->query->execute();
		return $numRows = $this->query->rowCount();
	}


	public function insertUS ($US_ID,$NAME_FILE,$US_DATE_ADD,$US_TIPO_ID,$US_NUM_ID,$US_COD_ENT,$US_TIPO_USUARIO,$US_PRI_AP,$US_SEG_AP,$US_PRI_NOM,$US_SEG_NOM,$US_EDAD,$US_UNI_EDAD,$US_SEXO,$US_COD_DEP,$US_COD_MUN,$US_ZONA){
		$this->query = $this->conn->prepare
		('INSERT INTO us VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)');
		
		$this->query->bindValue(1,$US_ID,PDO::PARAM_INT);
		$this->query->bindValue(2,$NAME_FILE,PDO::PARAM_STR);
		$this->query->bindValue(3,$US_DATE_ADD,PDO::PARAM_STR);
		$this->query->bindValue(4,$US_TIPO_ID,PDO::PARAM_STR);
		$this->query->bindValue(5,$US_NUM_ID,PDO::PARAM_STR);
		$this->query->bindValue(6,$US_COD_ENT,PDO::PARAM_STR);
		$this->query->bindValue(7,$US_TIPO_USUARIO,PDO::PARAM_INT);
		$this->query->bindValue(8,$US_PRI_AP,PDO::PARAM_STR);
		$this->query->bindValue(9,$US_SEG_AP,PDO::PARAM_STR);
		$this->query->bindValue(10,$US_PRI_NOM,PDO::PARAM_STR);
		$this->query->bindValue(11,$US_SEG_NOM,PDO::PARAM_STR);
		$this->query->bindValue(12,$US_EDAD,PDO::PARAM_STR);
		$this->query->bindValue(13,$US_UNI_EDAD,PDO::PARAM_STR);
		$this->query->bindValue(14,$US_SEXO,PDO::PARAM_STR);
		$this->query->bindValue(15,$US_COD_DEP,PDO::PARAM_STR);
		$this->query->bindValue(16,$US_COD_MUN,PDO::PARAM_STR);
		$this->query->bindValue(17,$US_ZONA,PDO::PARAM_STR);

		$this->query->execute();


	}


}

?>