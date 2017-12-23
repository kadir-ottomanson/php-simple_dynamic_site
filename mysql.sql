-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 Ara 2017, 16:20:12
-- Sunucu sürümü: 10.1.16-MariaDB
-- PHP Sürümü: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `odev`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `alt_konu`
--

CREATE TABLE `alt_konu` (
  `id` int(11) NOT NULL,
  `anaid` int(11) NOT NULL,
  `baslik` varchar(50) NOT NULL,
  `icerik` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `alt_konu`
--

INSERT INTO `alt_konu` (`id`, `anaid`, `baslik`, `icerik`) VALUES
(10, 1, 'PHPâ€™ye basliyoruz', 'PHP kÄ±saca web tabanlÄ± bir programlama dilidir. Eskiden aÃ§Ä±lÄ±mÄ± â€œPersonal Home Pageâ€ yani KiÅŸisel Anasayfa iken gÃ¼nÃ¼mÃ¼zde geliÅŸmesi ve daha iyi anlam kazanmasÄ± ile â€œPHP: Hypertext Preprocessorâ€ yani ÃœstÃ¼n YazÄ± Ã–niÅŸlemcisi olmuÅŸ.\r\n\r\nDiÄŸer web tabanlÄ± dillere gÃ¶re onlarca avantajÄ± olan ve gÃ¼nÃ¼mÃ¼zde en popÃ¼ler dillerden birisi. Ä°nternet Ã¼zerindeki duraÄŸan sabit yazÄ±lara dinamiklik katmamÄ±zÄ± saÄŸlayan bir web tabanlÄ± dil olan PHP, en iyi performansÄ± MYSQL veritabanÄ± ve linux iÅŸletim sistemi ile gÃ¶sterir.\r\n\r\n1995 yÄ±lÄ±nda Rasmus Lerdorf tarafÄ±ndan oluÅŸturulan PHP gÃ¼nÃ¼mÃ¼zde halen geliÅŸtirilmesine devam edilmekte. En son sÃ¼rÃ¼mÃ¼ PHP5 olmasÄ±yla beraber tamamen aÃ§Ä±k kaynaklÄ± ve Ã¼cretsizdir.'),
(11, 1, 'PHP ile neler yapÄ±labilir?', 'AslÄ±nda PHP ile neler yapÄ±lamaz diye sorsan daha rahat cevap verirdim. Malum HTML5â€˜in gelmesi ile artÄ±k browserlar ile neredeyse her ÅŸeyi yapabiliyoruz. DÃ¶kÃ¼manlar, resimler, videolar, oyunlar ve internette aklÄ±nÄ±za ne gelirseâ€¦\r\n\r\nBu durumda PHP gibi bir web tabanlÄ± programlama dili ile ve geliÅŸen browser Ã¶zellikleri sayesinde artÄ±k her ÅŸeyi yapabiliriz. Ä°ÅŸin aslÄ± sana bu konuda bir sÄ±nÄ±r koymamak iÃ§in bÃ¶yle sÃ¶ylÃ¼yorum. AklÄ±na ne geliyorsa yeterli bir birikim ile yapabilirsin.\r\n\r\nBiraz saymamÄ± istersen;\r\n\r\nÄ°Ã§erik yÃ¶netim sistemleri (WordPress, Drupal, â€¦)\r\nDinamik sayfalar\r\nVeri depolama sistemleri (Senduit, Imageshack.us, â€¦)\r\nAnlÄ±k bilgi paylaÅŸÄ±mÄ± (Facebook, â€¦)\r\nE-ticaret sistemleri (ShopPhp, â€¦)\r\nOtomasyon yazÄ±lÄ±mlarÄ±\r\nResim oluÅŸturma ve dÃ¼zenleme\r\nOnline oyunlar (Travian, Ogame, â€¦)\r\nForumlar, makaleler, sÃ¶zlÃ¼kler (Wikipedia, Vbulletin, MyBB, â€¦)\r\nÄ°Ã§erik bulup derleyen botlar\r\nWeb tabanlÄ± robotlar\r\nve daha temel anlamda sayamadÄ±ÄŸÄ±m ve senin gerÃ§ekleÅŸtirmeni bekleyen sonsuz ÅŸeyler.'),
(12, 1, 'Wamp Server kurulumu ve kullanimi', 'Kurulum gayet basit, kendisi tamamen Ã¼cretsiz ve TÃ¼rkÃ§e dilide mevcut.\r\n\r\nÃ–nce Wampâ€™Ä± buradan indirin ve olaÄŸan ÅŸekilde kurun. Kurulum sonlarÄ±na doÄŸru gÃ¼venlik duvarÄ± uyarÄ±sÄ± verebilir. Bu uyarÄ±da Wampâ€™Ä±n gÃ¼venlik duvarÄ±nÄ± aÅŸmasÄ±na izin vermeniz gerekiyor. Ã‡Ã¼nkÃ¼ Wamp lokal bir sunucu oluÅŸturabilmeniz iÃ§in Ã¼stÃ¼n yetkilere ihtiyaÃ§ duyar.\r\n\r\nWamp nasÄ±l kullanÄ±lÄ±r?\r\nWampÄ± aÃ§tÄ±ktan hemen sonra ister saÄŸ altta Ã§Ä±kan ikonuna sol tÄ±klayÄ±p oradan www dizinine gidebilirsiniz. Bu dizin varsayÄ±lan olarak ÅŸÃ¶yledir: â€œC:Wampwwwâ€œ.\r\n\r\nwww klasÃ¶rÃ¼nÃ¼n iÃ§erisine attÄ±ÄŸÄ±nÄ±z tÃ¼m PHP ve diÄŸer tÃ¼rdeki dosyalara http://localhost adresinden ulaÅŸÄ±yorsunuz.\r\n\r\nÃ–rneÄŸin ben www klasÃ¶rÃ¼nde Wampâ€™Ä±n varsayÄ±lan olarak eklediÄŸi index.phpâ€™yi silip yeni bir index.php dosyasÄ± oluÅŸturuyorum ve iÃ§ine aÅŸaÄŸÄ±daki kodlarÄ± yazÄ±yorum;\r\n\r\n\r\nArdÄ±ndan browserdan http://localhost/index.php adresine giriyorum ve karÅŸÄ±ma â€œSelam DÃ¼nya!â€ sonucu Ã§Ä±kÄ±yor.\r\n\r\nWamp ile IP adresinden nasÄ±l yayÄ±n yapÄ±lÄ±r?\r\nBunun iÃ§in yapman gereken modem ayarlarÄ±ndan â€œ80â€ portunu aÃ§mak ve ardÄ±ndan Wamp ikonunu sol tÄ±klayÄ±p â€œPut Onlineâ€ (Ã‡evrimiÃ§i Hale Getir)â€™e basmak.\r\n\r\nPort aÃ§mak konusunda bir fikrin yoksa buralarÄ± kurcalayabilirsin.\r\n\r\nPort aÃ§ma iÅŸlemini hallettikten hemen sonra whatismyip.org gibi bir adresten IP adresini Ã¶ÄŸrenip eÅŸe, dosta daÄŸÄ±tÄ±p kendi yaptÄ±ÄŸÄ±n Ã§alÄ±ÅŸmalarÄ± paylaÅŸabilirsin.\r\n\r\nWampâ€™da farklÄ± bir port kullanmak\r\nEÄŸer 80 portunda bir hata yaÅŸadÄ±ysanÄ±z ya da 80 portu baÅŸka bir yazÄ±lÄ±m ile kullanÄ±lÄ±yorsa Wampâ€™Ä±n config dosyalarÄ± ile kullanacaÄŸÄ± port adresini deÄŸiÅŸtirebilirsin.\r\n\r\nWampâ€™Ä±n ikonunu sol tÄ±kla oradan Apache sekmesine gelip â€œhttpd.confâ€ dosyasÄ±na tÄ±kla. YazÄ± editÃ¶rÃ¼nde aÃ§Ä±lan httpd.conf dosyasÄ±nÄ±n iÃ§inde aÅŸaÄŸÄ±daki satÄ±rÄ± bulup istediÄŸin port rakamlarÄ± ile deÄŸiÅŸtir ve Wampâ€™Ä± yeniden baÅŸlat.'),
(13, 3, 'PHP Data Objects (PDO)', 'ArtÄ±k â€œmysql_connectâ€œ, â€œmysql_queryâ€ fonksiyonlarÄ±nÄ±n mÃ¼fredattan kalkma zamanÄ± geliyor, PHPâ€™de kendi resmi dÃ¶kÃ¼mantasyonunda da bunun sinyalini vermeye baÅŸlamÄ±ÅŸ; â€œmysqlâ€ fonksiyonlarÄ±nÄ±n sayfasÄ±nda aÅŸaÄŸÄ±daki gibi bir Ã¶neriyle karÅŸÄ±laÅŸÄ±yoruz;\r\n\r\nThis extension is not recommended for writing new code. Instead, either the mysqli or PDO_MySQL extension should be used. See also the MySQL API Overview for further help while choosing a MySQL API.\r\n\r\nÃ–zetle artÄ±k bunlarÄ± kullanmanÄ±zÄ± Ã¶nermiyoruz, PDO ya da MySQLiâ€˜ye geÃ§in diyor. Peki nedir bunlar? Åžuradaki karÅŸÄ±laÅŸtÄ±rmaya baktÄ±ÄŸÄ±mÄ±zda MySQLi ile PDO arasÄ±nda Ã§ok fark olmadÄ±ÄŸÄ±nÄ± gÃ¶rebilirsiniz.\r\n\r\nPDOâ€™da Ã§oÄŸu veritabanÄ± sÃ¼rÃ¼cÃ¼sÃ¼ kullanÄ±lmasÄ±na olanak saÄŸlayan, MySQLi ise sadece MySQL destekleyen ve PDOâ€™ya gÃ¶re biraz daha karmaÅŸÄ±k ve kapsamlÄ± bir arayÃ¼z diyebiliriz. SonuÃ§ olarak ikisi de Ã¶neriliyor. Ben burada PDOâ€™dan bahsetmeye Ã§alÄ±ÅŸacaÄŸÄ±m, iksinden birisinin kullanÄ±m ÅŸeklini kavradÄ±ÄŸÄ±nÄ±zda diÄŸerini de rahatlÄ±kla kullana bileceÄŸinize inanÄ±yorum. '),
(16, 4, 'PDO nedir?', 'PDO(PHP Data Objects / PHP Veri Objeleri) Ã¶zetle; hafif ve tutarlÄ± bir ÅŸekilde veritabanÄ±na eriÅŸimi saÄŸlayan bir arayÃ¼z. AdÄ±ndan da anlayacaÄŸÄ±nÄ±z Ã¼zerie â€œObject Oriented Programmingâ€ arayÃ¼zÃ¼ne sahip, onlarca veritabanÄ± sÃ¼rÃ¼cÃ¼sÃ¼ destekliyor; Cubrid FreeTDS / Microsoft SQL Server / Sybase Firebird/Interbase 6 IBM DB2 IBM Informix Dynamic Server MySQL 3.x/4.x/5.x Oracle Call Interface ODBC v3 (IBM DB2, unixODBC and win32 ODBC) PostgreSQL SQLite 3 and SQLite 2 Microsoft SQL Server / SQL Azure Ä°leride daha farklÄ± bir veritabanÄ± sÃ¼rÃ¼cÃ¼sÃ¼ne geÃ§mek istediÄŸinizde sisteminizi temelli olarak deÄŸiÅŸtirmek yerine PDO ile kaldÄ±ÄŸÄ±nÄ±z yerden bir takÄ±m ufak modifikasyonlar ile bu iÅŸi gerÃ§ekleÅŸtirebilirsiniz. BunlarÄ±n haricinde PDO 5.1â€˜den itibaren geliyor, yani Ã§alÄ±ÅŸabilmesi iÃ§in gÃ¼ncel versiyonlara ihtiyacÄ±nÄ±z olacak.\r\n\r\n');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ana_baslik`
--

CREATE TABLE `ana_baslik` (
  `id` int(11) NOT NULL,
  `baslik` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ana_baslik`
--

INSERT INTO `ana_baslik` (`id`, `baslik`) VALUES
(1, 'php Gris'),
(2, 'form'),
(3, 'Veritabani'),
(4, 'OOP');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resim`
--

CREATE TABLE `resim` (
  `id` int(11) NOT NULL,
  `konuid` int(11) NOT NULL,
  `resim_yol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `resim`
--

INSERT INTO `resim` (`id`, `konuid`, `resim_yol`) VALUES
(6, 0, '79f80babbb08f1ab5f446d1efa46f6d8.png'),
(7, 6, '0dd69fcbb94fe869313d5d9c473ba571.png'),
(8, 7, 'd59d55244f3ca84d92f4668af3e6ba0f.png'),
(9, 7, '6bec803cb778a913e31821c54d0e9c08.png'),
(10, 7, '76a29ce55759a26735217c2eb5cadd79.png'),
(12, 10, '88caec248ad7a1adc9073debc2ba275c.png'),
(13, 11, 'ba670486f4a94e98d194cf49a12d351c.jpg'),
(14, 12, 'c7bc45f153e5fa672a87bc40e37fa93c.png'),
(15, 13, 'a968716025e1d117e6f4015863bc1edf.png'),
(18, 16, '292c0080aab7b7d621f8fc169418dbcb.png');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `alt_konu`
--
ALTER TABLE `alt_konu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ana_baslik`
--
ALTER TABLE `ana_baslik`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resim`
--
ALTER TABLE `resim`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `alt_konu`
--
ALTER TABLE `alt_konu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Tablo için AUTO_INCREMENT değeri `ana_baslik`
--
ALTER TABLE `ana_baslik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `resim`
--
ALTER TABLE `resim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
