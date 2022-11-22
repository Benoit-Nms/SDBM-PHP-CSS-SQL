<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="text/css" rel="stylesheet" href="style.css">
    <title>TP formulaire PHP</title>
</head>
<body>
    <div class="container">
                <div class="form">
                    <pre>
                        <form action="insert.php" method="post">
                            <label for="ajouterBiere" id="titreForm">AJOUTER UNE BIERE A LA BASE DE DONNEES</label>

                            Nom : <input type="text" name="Nom_Biere" />

                            Description de la bière :

                            <textarea id="description" name="Description_Biere"
                            rows="6" cols="30"></textarea> 

                            Type : <input type="text" name="Type_Biere" />

                            Couleur : <input type="text" name="Couleur_Biere" />

                            Prix : <input type="text" name="Prix_Unite_Biere" />

                            <select class="selMarque" name="marque">
                            <option value="">Sélectionnez une marque</option>
                            <option value="1">BREWDOG</option>
                            <option value="2">LINDEMANS</option>   
                            <option value="3">KWAK</option>   
                            <option value="4">Cuvée des Trolls</option>   
                            <option value="5">CH'TI</option>   
                            <option value="6">GOOSE ISLAND</option>   
                            <option value="7">TRIPEL KARMELIET</option>   
                            <option value="8">BARBAR</option>   
                            <option value="9">CHIMAY</option>   
                            <option value="11">DELIRIUM</option>   
                            <option value="12">SAINT BERNARDUS</option>   
                            <option value="13">CAMDEN</option>   
                            <option value="14">LA CHOUFFE</option>   
                            <option value="15">GUINNESS</option>
                            <option value="16">WESTMALLE</option>   
                            <option value="17">CORSENDONK</option>   
                            <option value="18">STRAFFE HENDRIK</option>   
                            <option value="19">CORNE DU BOIS DES PENDUS</option>
                            <option value="20">GOUDEN CAROLUS</option>     
                            <option value="22">MAREDSOUS</option>               
                            </select>

                            <select class="selCont" name="continent">
                            <option value="">Sélectionnez un continent</option>
                            <option value="1">EUROPE</option>
                            <option value="2">AMERIQUE DU NORD</option>   
                            <option value="3">AMERIQUE DU SUD</option>   
                            <option value="4">ASIE</option>   
                            <option value="5">AFRIQUE</option>   
                            <option value="6">OCEANIE</option>                             
                            </select>
                            
                            <input class="button" type="submit" value="Valider" />
                            </form>       
                    </pre>
                </div>    
    </div>
</body>
</html>