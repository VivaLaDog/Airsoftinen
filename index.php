<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="jquery-3.7.1.min.js"></script>
</head>
<body>
    <?php
        //$_POST = array();
        $con = new mysqli("localhost","root","","airsoft") or die;
        $sql = "SELECT * FROM bitvy;";
        $result = $con->query($sql);
        //print_r($result);

        while($zaznam = $result->fetch_object()){
            echo "<br>";
            NajdiBitvu($zaznam);
        }

        function DeleteBitva($bitv){
            $sql = "DELETE FROM bitvy WHERE id = '$bitv->id';";
        }

        function NajdiBitvu($zaznam){
            echo "<div class=\"bitva\">
		    <h2>$zaznam->nazev (lokace: $zaznam->lokace)</h2>
		    <div><span>Popis okoli: $zaznam->description</span></div>
		    <p>Vyhra tymu: $zaznam->fk_winner</p>
	        </div>";
        }


        if(isset($_POST["bitvaCreator"])){
            $nazev = $_POST["nazev"];
            $lokace = $_POST["lokace"];
            $popis = $_POST["popis"];
            $vitez = $_POST["vitez"];
            $sql = "INSERT INTO bitvy VALUES(NULL, '$nazev', '$popis' ,'$lokace'  ,'$vitez');";
            $con->query($sql);
        }

    ?>
        <div>
            <form action="" method="post">
            <label for="nazev">Nazev bitvy:</label>
            <input type="text" name="nazev" id="nazev" required="required"><br>
            <label for="lokace">Lokace:</label>
            <input type="text" name="lokace" id="lokace" required="required"><br>
            <label for="popis">Popis bitvy:</label>
            <input type="text" name="popis" id="popis" required="required"><br>
            <label for="vitez">Vitez bitvy:</label>
            <select name="vitez" id="vitez" required="required">
                <option value="1">Tym 1</option>
                <option value="2">Tym 2</option>
            </select><br>
            <input type="submit" name="bitvaCreator" value="Pridat bitvu!">
            </form>
        </div>

    <script>
    </script>
</body>
</html>