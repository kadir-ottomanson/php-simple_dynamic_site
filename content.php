<div id="content">
	
		

						<?php 

							if (isset($_GET['b'])) {
								if (isset($_GET['k'])) {

									$text="<div id=\"box1\">";

								$islem=new Islem();
								$konu=$islem->konugetir($_GET['k']);
								$resim=$islem->resimgetir($_GET['k']);

								foreach ($konu as $key) {

									$text.="<h2>".$key['baslik']."</h2>";
									if ($resim!=null) {
									$text.="<img class=\"left\" src=\"img/".$resim[0]['resim_yol']."\" width=\"130\" height=\"160\" />";
									}
							
									$text.="<p>".$key['icerik']."</p>";
							
								}

								foreach ($resim as $key) {
									if ($key['resim_yol']!=$resim[0]['resim_yol']) {
									
									$text.="<img class=\"left\" src=\"img/".$key['resim_yol']."\" width=\"130\" height=\"160\" />";}
								}
								$text.="</div>";

									
								}else{

								$text="<div>";

								$islem=new Islem();
								$islem=$islem->altbaslik($_GET['b']);

								foreach ($islem as $key) {
									$text.="<h2>".$key['baslik']."</h2>";
									$str=substr($key['icerik'], 0,50);
									$text.="<p>".$str."<a href=\"index.php?b=".$_GET['b']."&k=".$key['id']."\" style=\"text-decoration: none;color: red;font-size: 20px;\">...</a></p>";

								}
								$text.="</div>";
								
							}
							echo $text;
							}
							else if (isset($_GET['g'])) {
								echo "
								<div>
						<form method=\"post\" action=\"#\">
						Kullanıcı Adı : <input autocomplete=\"off\" type=\"text\" name=\"ad\">
						Şifre : <input type=\"password\" name=\"sifre\">
					<input type=\"submit\" name=\"giris\"  value=\"Giriş\">
					</form>
		
						</div>
								";
								if (isset($_POST['giris'])) {
								session_start();
 								 ob_start();
 								 if ($_POST['ad']=="Admin" && $_POST['sifre']=="123456") {
 								 	$_SESSION["login"] = "true";
  									$_SESSION["user"] = $_POST['ad'];
  									$_SESSION["pass"] = $_POST['sifre'];
  									header("Location:form.php");
 								 }
							}

						}else
						echo "<img src=\"index.jpg\" style=\"width: 100%;margin-right:10%;\">";

						?>

						
						<br class="clear" />
					</div>