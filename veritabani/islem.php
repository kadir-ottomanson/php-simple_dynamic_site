<?php
include("baglan.php");

/**
* 
*/
class Islem extends Baglan
{
	private $db;
	function __construct()
	{
		$this->db=parent::__construct();
	}

	public function ustbaslik()
	{
		$getir=$this->db->prepare("Select * from ana_baslik");
		$getir->execute();
		return $getir->fetchall();
	}

	public function altbaslik($id)
	{
		$getir=$this->db->prepare("Select * from alt_konu where anaid=?");
		$getir->bindvalue(1,$id);
		$getir->execute();
		return $getir->fetchall();
	}

	public function konugetir($id)
	{
		$getir=$this->db->prepare("Select * from alt_konu where id=? ");
		$getir->bindvalue(1,$id);
		$getir->execute();
		return $getir->fetchall();
	}

	public function resimgetir($id)
	{
		$getir=$this->db->prepare("Select resim_yol from resim where konuid=?");
		$getir->bindvalue(1,$id);
		$getir->execute();
		return $getir->fetchall();
	}
	public function resimkaydet($konuid,$ad)
	{
		$getir=$this->db->prepare("Insert into resim(konuid,resim_yol)values(?,?)");
		$getir->bindvalue(1,$konuid);
		$getir->bindvalue(2,$ad);
		return $getir->execute();
	}
	public function sonkonuid()
	{
		$getir=$this->db->prepare("SELECT * FROM alt_konu ORDER BY id DESC LIMIT 1");
		 $getir->execute();
		 return $getir->fetchall();
	}
	public function konukaydet($anabaslik,$baslik,$icerik)
	{
		$getir=$this->db->prepare("Insert into alt_konu(anaid,baslik,icerik)values(?,?,?)");
		$getir->bindvalue(1,$anabaslik);
		$getir->bindvalue(2,$baslik);
		$getir->bindvalue(3,$icerik);
		return $getir->execute();
	}
	public function konularigetir()
	{
		$getir=$this->db->prepare("Select * from alt_konu");
		$getir->execute();
		return $getir->fetchall();
	}
	public function konusil($id)
	{
		$getir=$this->db->prepare("Delete from alt_konu where id=?");
		$getir->bindvalue(1,$id);
		$getir1=$this->db->prepare("Delete from resim where konuid=?");
		$getir1->bindvalue(1,$id);
		$getir1->execute();
		return $getir->execute();
	}
	public function konuguncelle($baslik,$icerik,$id)
	{
		$getir=$this->db->prepare("Update alt_konu set baslik=?,icerik=? where id=?");
		$getir->bindvalue(1,$baslik);
		$getir->bindvalue(2,$icerik);
		$getir->bindvalue(3,$id);
		return $getir->execute();
	}
}


?>