<?php

/**
* 
*/
class Baglan 
{
	
	function __construct()
	{
		try {

			return new PDO("mysql:host=localhost;dbname=odev","root",""); // bağlantı geri dönderildi
		} catch (Exception $e) {
			echo "VERİTABANI HATASI!!!  ".$e;
		}
	}
}


?>