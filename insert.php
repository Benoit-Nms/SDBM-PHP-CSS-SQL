<?php
$servername = 'localhost';
$dbname = 'sdbm';
$username = 'root';
$password = '';
$Nom_Biere = $_POST["Nom_Biere"];
$Description_Biere = $_POST["Description_Biere"];
$Type_Biere = $_POST["Type_Biere"];
$Couleur_Biere = $_POST["Couleur_Biere"];
$Prix_Unite_Biere = $_POST["Prix_Unite_Biere"];
$marque = $_POST["marque"];
$continent= $_POST["continent"];

try{
    $dbco = new PDO("mysql:host=localhost;dbname=$dbname", $username, $password);
    $dbco->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $sql = "INSERT INTO biere(Nom_Biere,Description_Biere,Type_Biere,Couleur_Biere,Prix_Unite_Biere,ID__Marque,ID_Continent)
            VALUES('$Nom_Biere','$Description_Biere','$Type_Biere','$Couleur_Biere','$Prix_Unite_Biere','$marque','$continent')";
    
    $dbco->exec($sql);
    echo 'Entrée ajoutée dans la table';
}

catch(PDOException $e){
  echo "Erreur : " . $e->getMessage();
}
?>