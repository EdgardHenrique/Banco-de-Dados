<DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="index.css">
        <title>BUT MY HTML WILL NEVER DIE</title>
    </head>
</html>
</DOCTYPE>



<?php
$link = mysqli_connect('localhost','root');
if (!$link) {
    die('Não foi possível conectar: ' . mysqli_error());
}
mysqli_select_db($link, 'basededados');

$resultado = mysqli_query($link, "SELECT * FROM produtos");

while ( $linha = mysqli_fetch_assoc($resultado) ) {
	echo "<a href='produto.php?p=$linha[id]'>";
	echo "Nome: $linha[nome]<br>";
	echo "Valor: $linha[valor]<br>";
	echo "</a><br>";
}
?>

<html>
clike aki e ganhe bolo gratez:
    <a href="conto.html">bolu</a>
</html>