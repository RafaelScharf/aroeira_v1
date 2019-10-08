<?php
$host = 'localhost';
$usuario = 'jrnextco_pdv17';
$senha = 'amarelo17';
$banco = 'jrnextco_pdv17';

	$bd = mysql_connect($host,$usuario,$senha);
	mysql_select_db($banco) or die(mysql_error());
	
define('EMPRESA', "Jrnext");	
define('CNPJ',  "12.473.309/0001-88");
define('INSCRICAOESTADUAL',  "");
define('EMPRESA_ENDERECO',  "Rua Josene Nenem");	
define('EMPRESA_CIDADE',  "383");
define('EMPRESA_UF',  "PI");
define('EMPRESA_CEP',  "64540-000");
define('EMPRESA_TEL',  "89 9 9430-2106");
define('EMPRESA_IBGE',  "123456");

define('API_BLING',  "2061af2d2fbfb2dd29fdbd122c680aa8830fb4e8");
	
	
	
?>
