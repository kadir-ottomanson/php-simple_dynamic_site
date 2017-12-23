<div id="main">
					<div id="sidebar">
						<h3>
							sidebar başlık
						</h3>
						<?php


						if(isset($_GET['b'])){
							
						$islem=new Islem();
						$islem=$islem->altbaslik($_GET['b']);

						$txt="<ul class=\"linkedList\">";

						foreach ($islem as $key) {
							$txt.="<li>
							<a href=\"index.php?b=".$_GET['b']."&k=".$key['id']."\">".$key['baslik']."</a>
							</li>";

						}

						$txt.="</ul>";

						echo $txt;

					}else echo "<h3>Hoşgeldiniz</h3>";
						?>

					</div>