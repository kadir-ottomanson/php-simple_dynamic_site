<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>PHP</title>
        <link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
		<div id="bg">
			<div id="outer">
				<div id="header">
					<div id="logo">
						<h1>
							<a href="index.php">PHP Konu Anlatımı</a>
						</h1>
					</div>
					<div id="nav">
						<?php 

						include("veritabani\islem.php");
						$islem=new Islem();
						$islem=$islem->ustbaslik();

						$txt="<ul>";
						
						foreach ($islem as $key) {
							$txt.="<li>
								<a href=\"index.php?b=".$key['id']."\">".$key['baslik']."</a>
							</li>";
						}

						$txt.="<li><a href=\"index.php?g\">
						Giriş Yap</a>
					</li></ul>";
						echo $txt;
						?>
						
							
						
						<br class="clear" />
					</div>
				</div>