<?php
$conn=mysqli_connect('localhost','root','','anime');
            if(!$conn)
            {
            echo("Błąd połączenia z serwerem");
            }
            else{
            $rodzaj=$_POST['gatunek'];
            $tytul=$_POST['tytul'];
            $ocena=$_POST['ocena'];
            $opis=$_POST['opis'];
            $tlum=$_POST['tlumacz'];
            $pytanko="insert into anime (rodzaj, tytul, ocena, opis, tlumacz)values('$rodzaj','$tytul','$ocena','$opis','$tlum');";
            $pyt=mysqli_query($conn,$pytanko);
                $powrot="../index.html";
                $baza= "../odczyt/odczyt (2).php";
                
                echo '<a href="'.$powrot.'">Powrót do strony głównej</a></br>';
                echo '<a href="'.$baza.'">Baza anime</a>';
            }
        
            mysqli_close($conn);
?>