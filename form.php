<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/form.css">
</head>
<body>
	
	
	<?php
	session_start();
  if(!isset($_SESSION["login"])){
    //sessionda tanımlı değil ise sayfanın urlden girişine izin vermeyen alan 
  echo "Bu sayfayı görüntüleme yetkiniz yoktur.";
  header("Refresh: 2; url=index.php");
  }else{
  	include("veritabani\islem.php");
  	$islem=new Islem();
  	if (isset($_GET['sil'])) {
  	if(!$islem->konusil($_GET['sil']))
  		echo "HATA!";
header("Refresh:0; url=form.php");
  	}
  	$baslik="";
  	$icerik="";
  	if (isset($_GET['guncelle'])) {
  		$getir=$islem->konugetir($_GET['guncelle']);
  		$baslik=$getir[0]['baslik'];
  		$icerik=$getir[0]['icerik'];
  	}
  	if (isset($_POST['guncelle'])) {
  		if (!$islem->konuguncelle($_POST['baslik'],$_POST['icerik'],$_GET['guncelle'])) {
  			echo "HATA!!";
  		}
  	
  	header("Refresh:0; url=form.php");
  	}
  	?>
  	<div id="cikis">
  		<form method="post" action="index.php">
		<input type="submit" name=" cikis" value="ÇIKIŞ YAP">
	</form>
  	</div>
  	
<div id="ust_div">
	<form action="" method="post" enctype="multipart/form-data">
		<table>

			<tr>
				<td>Ana Başlık : </td>
				<td>
					<?php
					
					
						$islem=new Islem();
						$islem1=$islem->ustbaslik();

						$txt="<select name=\"anabaslik\">";
						
						foreach ($islem1 as $key) {
							$txt.=" <option value=\"".$key['id']."\">".$key['baslik']."</option>";
						}
						$txt.="</select>";
						echo $txt;
					?>
				</td>
			</tr>

			<tr>
				<td>
					Konu Başlık : 
				</td>
				<td>
					<input id="baslik" type="text" name="baslik" value="<?=$baslik?>">
				</td>
			</tr>
			<tr>
				<td>
					İçerik : 
				</td>
				<td>
					<textarea id="icerik" cols="100" rows="8" name="icerik" ><?=$icerik?></textarea>
				</td>
				</tr>
				
			<tr>
				<td colspan="2">
					<input type="file" name="imagesUpload[]"  data-file-accept="jpg, jpeg, png, gif" multiple="">
					<input type="submit" id="ekle" name="ekle" value="KAYDET" >
					<input type="submit" name="guncelle" value="GÜNCELLE" >
				</td>
				
				
			</tr>

		</table>

	</form>
</div>
<div id="alt_konu">
	<table>
		<tr>
			<th>Konu Başlık</th>
			<th>İslemler</th>
		</tr>
		<?php
		$islem=new Islem();
		$konular=$islem->konularigetir();
		$txt="";
		foreach ($konular as $key) {
			$txt.="<tr>
			<td>".$key['baslik']."</td>
			<td><a href=\"form.php?sil=".$key['id']."\">Sil</a></td>
			<td><a href=\"form.php?guncelle=".$key['id']."\">GÜNCELLE</a></td>
		</tr>";
		}
		echo $txt;

		?>

	</table>

<?php

if (isset($_POST['ekle'])) {
  $islem=new Islem();
$img_target = "img/"; //Resmin yükleneceği yer

if(!$islem->konukaydet($_POST['anabaslik'],$_POST['baslik'],$_POST['icerik'])){
	echo "hata oluştu";
	die();
}
foreach ($_FILES["imagesUpload"]["error"] as $upload => $error) {//Foreach döngüsü kurarak toplu seçimde array olaran gelen resimleri alıyoruz

    if ($error == UPLOAD_ERR_OK) {//Resim seçilmiş ve hata yok ise upload yap

        $img_source = $_FILES["imagesUpload"]["tmp_name"][$upload];

        $img_name = $_FILES["imagesUpload"]["name"][$upload];

        $uzanti= explode('.', $img_name);

        move_uploaded_file($img_source,$img_target.'/'.md5($img_name.time()).".".$uzanti[count($uzanti)-1]);

        $resim = md5($img_name.time()).".".$uzanti[count($uzanti)-1];
     
       $id=$islem->sonkonuid();
       $id= $id[0]['id'];
       $islem->resimkaydet($id,$resim);

        //$query = mysql_query("INSERT INTO resimler (resim) VALUES ('$resim')");

        //echo '<meta http-equiv="refresh" content="2;URL=index.php">';

    }else{//Resim seçilmemiş ve hata var ise

        echo "Bir resim seçmelisiniz!";

    }

}
}
}
?>
</div>
</body>
</html>