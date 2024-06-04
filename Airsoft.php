<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title></title>
</head>
<body>
    <?php

        function NajdiBitvu($bitva){
            echo "<div class=\"bitva\">
            <h3>$bitva->nazev (lokace: $bitva->lokace)</h3>
            <div>Popis okoli: $bitva->description<br>Vyhra tymu: $bitva->fk_winner</div>
            </div>";
        }
        function NajdiTeam($zaznam){
            echo "<span style=\"font-weight: bold\">$zaznam->nazev [Tým $zaznam->id]</span>";
        }
        function NajdiRank($zaznam){
            echo "<div class=\"rank\">
            <h2>$zaznam->nazev_ranku</h2>
            <div><img src='$zaznam->url_ranku' width=\"100%\"></div>
            </div>";
        }
    ?>
<div class="div">
  <div class="div-2">
    <div class="column">
      <div class="div-3">
        <div class="div-4">
          <div class="div-5">
            <div class="column-2"><input class="div-6" type="file"></input></div>
            <div class="column-3">
              <div class="div-7">
                <div class="div-8"></div>
                <div class="div-9">Barva týmu</div>
                <div class="div-10">
                	<input type="color" class="div-10-color" list="presetColors">
                	  <datalist id="presetColors">
    					 <option>#ff0000</option>
   						 <option>#0000ff</option>
   						 <option>#ffffff</option>
  					  </datalist>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="div-11">
          <div class="div-12">
            <div class="column-4">
              <div class="div-13">
                <div class="div-14">
                  <div class="div-15">Username</div> // get name
                  <input class="div-16"></input>
                  <button class="userNameSave">Save</button>
                  <div class="div-17">Mail/phone</div> // get user mail
                  <div class="div-18"></div>
                  <div class="div-19">Rank</div>
                </div>
                <div class="div-20">
                  <?php
                        $con = new mysqli("localhost","root","","airsoft") or die;
                        $sql = "SELECT * FROM rank;";
                        $result = $con->query($sql);
                        
                        $zaznam = $result->fetch_object();
                        NajdiRank($zaznam); 
                    ?>
                </div>
              </div>
            </div>
            <div class="column-5">
              <div class="div-21">
                <div class="div-22">Název týmu</div>
                <div class="div-23">
                  <?php
                    $con = new mysqli("localhost","root","","airsoft") or die;
                    $sql = "SELECT * FROM team;";
                    $result = $con->query($sql);
                    $zaznam = $result->fetch_object();
                    NajdiTeam($zaznam);
                  ?>
                </div>
                <div class="div-24">Týmové foto/logo</div>
                <div class="div-25"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="column-6">
      <div class="div-26">
        <div class="div-27">Historie bitev</div>
        <div class="div-28">
        <?php
            $con = new mysqli("localhost","root","","airsoft") or die;
            $sql = "SELECT * FROM vojak WHERE id = 1;"; //request id prihlaseneho uzivatele
            $result = $con->query($sql);
            $sql2 = "SELECT * FROM bitvy;";
            $result2 = $con->query($sql2);
            while($bitva = $result2->fetch_object()){
                NajdiBitvu($bitva);
                echo "<br>";
            }
        ?>
        <br>
        </div>
      </div>
    </div>
  </div>
</div>
<style>
  .div {
    background-color: #fff;
    padding: 20px 0 0 42px;
  }
  @media (max-width: 991px) {
    .div {
      padding-left: 20px;
    }
  }
  .div-2 {
    gap: 20px;
    display: flex;
  }
  @media (max-width: 991px) {
    .div-2 {
      flex-direction: column;
      align-items: stretch;
      gap: 0px;
    }
  }
  .column {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 63%;
    margin-left: 0px;
  }
  @media (max-width: 991px) {
    .column {
      width: 100%;
    }
  }
  .div-3 {
    display: flex;
    margin-top: 38px;
    flex-direction: column;
  }
  @media (max-width: 991px) {
    .div-3 {
      max-width: 100%;
      margin-top: 40px;
    }
  }
  .div-4 {
    margin-left: 44px;
    width: 424px;
    max-width: 100%;
  }
  .div-5 {
    gap: 20px;
    display: flex;
  }
  @media (max-width: 991px) {
    .div-5 {
      flex-direction: column;
      align-items: stretch;
      gap: 0px;
    }
  }
  .column-2 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 61%;
    margin-left: 0px;
  }
  @media (max-width: 991px) {
    .column-2 {
      width: 100%;
    }
  }
  .div-6 {
    background-color: #d9d9d9;
    border-radius: 50%;
    width: 218px;
    height: 218px;
    aspect-ratio: 1;
    margin: 0 auto;
  }
  @media (max-width: 991px) {
    .div-6 {
      margin-top: 40px;
    }
  }
  .column-3 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 39%;
    margin-left: 20px;
  }
  @media (max-width: 991px) {
    .column-3 {
      width: 100%;
    }
  }
  .div-7 {
    display: flex;
    flex-direction: column;
    font-size: 24px;
    color: #000;
    font-weight: 400;
  }
  @media (max-width: 991px) {
    .div-7 {
      margin-top: 40px;
    }
  }
  .div-8 {
    background-color: #d9d9d9;
    border-radius: 50%;
    width: 69px;
    height: 69px;
  }
  .div-9 {
    font-family: Inter, sans-serif;
    margin-top: 35px;
  }
  .div-10 {
    background-color: #d9d9d9;
    height: 39px;
  }
   .div-10-color {
    background-color: #d9d9d9;
    height: 39px;
    width: 100%;
  }
  .div-11 {
    margin-top: 29px;
  }
  @media (max-width: 991px) {
    .div-11 {
      max-width: 100%;
    }
  }
  .div-12 {
    gap: 20px;
    display: flex;
  }
  @media (max-width: 991px) {
    .div-12 {
      flex-direction: column;
      align-items: stretch;
      gap: 0px;
    }
  }
  .column-4 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 50%;
    margin-left: 0px;
  }
  @media (max-width: 991px) {
    .column-4 {
      width: 100%;
    }
  }
  .div-13 {
    display: flex;
    flex-grow: 1;
    flex-direction: column;
    font-size: 24px;
    color: #000;
    font-weight: 400;
    white-space: nowrap;
  }
  @media (max-width: 991px) {
    .div-13 {
      margin-top: 40px;
      white-space: initial;
    }
  }
  .div-14 {
    display: flex;
    flex-direction: column;
    padding: 0 44px;
  }
  @media (max-width: 991px) {
    .div-14 {
      white-space: initial;
      padding: 0 20px;
    }
  }
  .div-15 {
    font-family: Inter, sans-serif;
  }
  .div-16 {
    background-color: #d9d9d9;
    margin-top: 7px;
    height: 50px;
  }
  .userNameSave{
    height: 30px;
    width: 100%;
  }
  .div-17 {
    font-family: Inter, sans-serif;
    margin-top: 5px;
  }
  .div-18 {
    background-color: #d9d9d9;
    height: 47px;
  }
  .div-19 {
    font-family: Inter, sans-serif;
    align-self: center;
    margin-top: 32px;
  }
  .div-20 {
    background-color: #d9d9d9;
    margin-top: 12px;
    height: 306px;
    aspect-ratio: 1;
  }
  .column-5 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 50%;
    margin-left: 20px;
  }
  @media (max-width: 991px) {
    .column-5 {
      width: 100%;
    }
  }
  .div-21 {
    display: flex;
    flex-direction: column;
    align-self: stretch;
    font-size: 24px;
    color: #000;
    font-weight: 400;
    margin: auto 0;
  }
  @media (max-width: 991px) {
    .div-21 {
      margin-top: 40px;
    }
  }
  .div-22 {
    font-family: Inter, sans-serif;
  }
  .div-23 {
    background-color: #d9d9d9;
    margin-top: 5px;
    height: 51px;
  }
  .div-24 {
    font-family: Inter, sans-serif;
    margin-top: 26px;
  }
  .div-25 {
    background-color: #d9d9d9;
    margin-top: 7px;
    height: 189px;
  }
  .column-6 {
    display: flex;
    flex-direction: column;
    line-height: normal;
    width: 37%;
    margin-left: 20px;
  }
  @media (max-width: 991px) {
    .column-6 {
      width: 100%;
    }
  }
  .div-26 {
    display: flex;
    flex-grow: 1;
    flex-direction: column;
    font-size: 40px;
    color: #000;
    font-weight: 400;
    text-align: center;
  }
  @media (max-width: 991px) {
    .div-26 {
      max-width: 100%;
      margin-top: 40px;
    }
  }
  .div-27 {
    font-family: Inter, sans-serif;
    align-self: center;
  }
  .div-28 {
    background-color: #d9d9d9;
    margin-top: 8px;
    height: 966px;
  }
  @media (max-width: 991px) {
    .div-28 {
      max-width: 100%;
    }
  }
</style>
</body>
</html>