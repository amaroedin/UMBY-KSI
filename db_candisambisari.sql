-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Inang: localhost:3306
-- Waktu pembuatan: 19 Des 2015 pada 12.41
-- Versi Server: 10.0.22-MariaDB
-- Versi PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `jogloind_candisambisaridb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id_banner` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `content` text,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `id_user` int(3) DEFAULT NULL,
  PRIMARY KEY (`id_banner`),
  KEY `FK_banners_to_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id_banner`, `title`, `content`, `image`, `status`, `id_user`) VALUES
(2, 'Slide 1', '', 'assets/uploads/slide/slide-013.jpg', 1, 1),
(3, 'Candi Sambi Sari', '', 'assets/uploads/slide/slide-02.jpg', 1, 1),
(4, 'Candi Sambi Sari', '', 'assets/uploads/slide/slide-03.jpg', 1, 1),
(5, 'Candi Sambi Sari', '', 'assets/uploads/slide/slide-04.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guest_book`
--

CREATE TABLE IF NOT EXISTS `guest_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `no_telp` varchar(16) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `message` text,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `guest_book`
--

INSERT INTO `guest_book` (`id`, `name`, `no_telp`, `email`, `message`, `date_create`) VALUES
(1, 'suparyanto', '089671872083', 'suparyanto@yahoo.com', 'terima kasih ... :D', '2015-01-07 17:07:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_location` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `langitude` varchar(100) DEFAULT NULL,
  `url_website` varchar(150) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `no_telp` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_location`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `location`
--

INSERT INTO `location` (`id_location`, `name`, `description`, `image`, `alamat`, `latitude`, `langitude`, `url_website`, `email`, `no_telp`) VALUES
(1, 'Candi Prambanan', '<h1>CANDI PRAMBANAN&nbsp;<br />\nCandi Hindu Tercantik di Dunia</h1>\n\n<blockquote>\n<p><em>Candi Prambanan adalah mahakarya kebudayaan Hindu dari abad ke-10. Bangunannya yang langsing dan menjulang setinggi 47 meter membuat kecantikan arsitekturnya tak tertandingi.</em></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<h3><big>Tiket Candi Prambanan</big></h3>\n\n<p><em>(diperbarui tgl 11/27/2014)</em></p>\n\n<p><strong>Tiket</strong><br />\nRp. 30.000 (dewasa)<br />\nRp. 12.500 (anak)<br />\nUSD 18 (WNA)</p>\n\n<p><strong>Buka setiap hari</strong><br />\nPk 06:00 - 17:00 WIB</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Candi Prambanan adalah bangunan luar biasa cantik yang dibangun di abad ke-10 pada masa pemerintahan dua raja, Rakai Pikatan dan Rakai Balitung. Menjulang setinggi 47 meter (5 meter lebih tinggi dari&nbsp;<a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/borobudur/">Candi Borobudur</a>), berdirinya candi ini telah memenuhi keinginan pembuatnya, menunjukkan kejayaan Hindu di tanah Jawa. Candi ini terletak 17 kilometer dari pusat kota Yogyakarta, di tengah area yang kini dibangun taman indah.</p>\n\n<p>Ada sebuah legenda yang selalu diceritakan masyarakat Jawa tentang candi ini. Alkisah, lelaki bernama Bandung Bondowoso mencintai Roro Jonggrang. Karena tak mencintai, Jonggrang meminta Bondowoso membuat candi dengan 1000 arca dalam semalam. Permintaan itu hampir terpenuhi sebelum Jonggrang meminta warga desa menumbuk padi dan membuat api besar agar terbentuk suasana seperti pagi hari. Bondowoso yang baru dapat membuat 999 arca kemudian mengutuk Jonggrang menjadi arca yang ke-1000 karena merasa dicurangi.</p>\n\n<p>Candi Prambanan memiliki 3 candi utama di halaman utama, yaitu Candi Wisnu, Brahma, dan Siwa. Ketiga candi tersebut adalah lambang Trimurti dalam kepercayaan Hindu. Ketiga candi itu menghadap ke timur. Setiap candi utama memiliki satu candi pendamping yang menghadap ke barat, yaitu Nandini untuk Siwa, Angsa untuk Brahma, dan Garuda untuk Wisnu. Selain itu, masih terdapat 2 candi apit, 4 candi kelir, dan 4 candi sudut. Sementara, halaman kedua memiliki 224 candi.</p>\n\n<p>Memasuki candi Siwa yang terletak di tengah dan bangunannya paling tinggi, anda akan menemui 4 buah ruangan. Satu ruangan utama berisi arca Siwa, sementara 3 ruangan yang lain masing-masing berisi arca Durga (istri Siwa), Agastya (guru Siwa), dan Ganesha (putra Siwa). Arca Durga itulah yang disebut-sebut sebagai arca Roro Jonggrang dalam legenda yang diceritakan di atas.</p>\n\n<p>Di Candi Wisnu yang terletak di sebelah utara candi Siwa, anda hanya akan menjumpai satu ruangan yang berisi arca Wisnu. Demikian juga Candi Brahma yang terletak di sebelah selatan Candi Siwa, anda juga hanya akan menemukan satu ruangan berisi arca Brahma.</p>\n\n<p>Candi pendamping yang cukup memikat adalah Candi Garuda yang terletak di dekat Candi Wisnu. Candi ini menyimpan kisah tentang sosok manusia setengah burung yang bernama Garuda. Garuda merupakan burung mistik dalam mitologi Hindu yang bertubuh emas, berwajah putih, bersayap merah, berparuh dan bersayap mirip elang. Diperkirakan, sosok itu adalah adaptasi Hindu atas sosok&nbsp;<em>Bennu</em>(berarti &#39;terbit&#39; atau &#39;bersinar&#39;, biasa diasosiasikan dengan Dewa Re) dalam mitologi Mesir Kuno atau<em>Phoenix</em>&nbsp;dalam mitologi Yunani Kuno. Garuda bisa menyelamatkan ibunya dari kutukan Aruna (kakak Garuda yang terlahir cacat) dengan mencuri Tirta Amerta (air suci para dewa).</p>\n\n<p>Kemampuan menyelamatkan itu yang dikagumi oleh banyak orang sampai sekarang dan digunakan untuk berbagai kepentingan. Indonesia menggunakannya untuk lambang negara. Konon, pencipta lambang Garuda Pancasila mencari inspirasi di candi ini. Negara lain yang juga menggunakannya untuk lambang negara adalah Thailand, dengan alasan sama tapi adaptasi bentuk dan kenampakan yang berbeda. Di Thailand, Garuda dikenal dengan istilah&nbsp;<em>Krut</em>&nbsp;atau&nbsp;<em>Pha Krut</em>.</p>\n\n<p>Prambanan juga memiliki relief candi yang memuat kisah Ramayana. Menurut para ahli, relief itu mirip dengan cerita Ramayana yang diturunkan lewat tradisi lisan. Relief lain yang menarik adalah pohon Kalpataru yang dalam agama Hindu dianggap sebagai pohon kehidupan, kelestarian dan keserasian lingkungan. Di Prambanan, relief pohon Kalpataru digambarkan tengah mengapit singa. Keberadaan pohon ini membuat para ahli menganggap bahwa masyarakat abad ke-9 memiliki kearifan dalam mengelola lingkungannya.</p>\n\n<p>Sama seperti sosok Garuda, Kalpataru kini juga digunakan untuk berbagai kepentingan. Di Indonesia, Kalpataru menjadi lambang Wahana Lingkungan Hidup (Walhi). Bahkan, beberapa ilmuwan di Bali mengembangkan konsep&nbsp;<em>Tri Hita Karana</em>&nbsp;untuk pelestarian lingkungan dengan melihat relief Kalpataru di candi ini. Pohon kehidupan itu juga dapat ditemukan pada gunungan yang digunakan untuk membuka kesenian wayang. Sebuah bukti bahwa relief yang ada di Prambanan telah mendunia.</p>\n\n<p>Kalau cermat, anda juga bisa melihat berbagai relief burung, kali ini burung yang nyata. Relief-relief burung di Candi Prambanan begitu&nbsp;<em>natural</em>&nbsp;sehingga para biolog bahkan dapat mengidentifikasinya sampai tingkat&nbsp;<em>genus</em>. Salah satunya relief Kakatua Jambul Kuning (<em>Cacatua sulphurea</em>) yang mengundang pertanyaan. Sebabnya, burung itu sebenarnya hanya terdapat di Pulau Masakambing, sebuah pulau di tengah Laut Jawa. Lalu, apakah jenis itu dulu pernah banyak terdapat di Yogyakarta? Jawabannya silakan cari tahu sendiri. Sebab, hingga kini belum ada satu orang pun yang bisa memecahkan misteri itu.</p>\n\n<p>Nah, masih banyak lagi yang bisa digali di Prambanan. Anda tak boleh jemu tentunya. Kalau pun akhirnya lelah, anda bisa beristirahat di taman sekitar candi.</p>\n\n<p>sumber :&nbsp;<a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/prambanan/">yogyes.com</a></p>\n', 'assets/uploads/location/422-candi-prambanan4.jpg', 'Jl. Jogja-Solo Km. 16 Prambanan, Yogyakarta INDONESIA 55282', NULL, NULL, NULL, 'prambanan.temple@gmail.com', '+62-274-496408'),
(2, 'Candi Borobudur', '<h1>CANDI BOROBUDUR&nbsp;<br />\nMahakarya Arsitektur Abad ke-9</h1>\n\n<blockquote>\n<p><em>Candi Borobudur merupakan monumen Buddha termegah dan kompleks stupa terbesar di dunia yang diakui oleh UNESCO. Bangunan Candi Borobudur secara keseluruhan menjadi galeri akan mahakarya para pemahat batu.</em></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<h3>Tiket Candi Borobudur</h3>\n\n<p>(diperbarui tgl 11/27/2014)</p>\n\n<p><strong>Tiket</strong><br />\nRp 30.000 (dewasa)<br />\nRp 12.500 (anak)<br />\nUSD 20 (WNA)</p>\n\n<p><strong>Buka setiap hari</strong><br />\nPk 06:00 - 17:00 WIB</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Jauh sebelum Angkor Wat berdiri di Kamboja dan katedral-katedral agung ada di Eropa, Candi Borobudur telah berdiri dengan gagah di tanah Jawa. Bangunan yang disebut UNESCO sebagai monumen dan kompleks stupa termegah serta terbesar di dunia ini ramai dikunjungi oleh peziarah pada pertengahan abad ke-9 hingga awal abad ke-11. Umat Buddha yang ingin mendapatkan pencerahan berduyun-duyun datang dari India, Kamboja, Tibet, dan China. Tidak hanya megah dan besar, dinding Candi Borobudur dipenuhi pahatan 2672 panel relief yang jika disusun berjajar akan mencapai panjang 6 km! Hal ini dipuji sebagai&nbsp;<em>ansambel</em>&nbsp;relief Buddha terbesar dan terlengkap di dunia, tak tertandingi dalam nilai seni.</p>\n\n<p>Relief yang terpahat di dinding candi terbagi menjadi 4 kisah utama yakni Karmawibangga, Lalita Wistara, Jataka dan Awadana, serta Gandawyuda. Selain mengisahkan tentang perjalanan hidup Sang Buddha dan ajaran-ajarannya, relief tersebut juga merekam kemajuan masyarakat Jawa pada masa itu. Bukti bahwa nenek moyang Bangsa Indonesia adalah pelaut yang ulung dan tangguh dapat dilihat pada 10 relief kapal yang ada. Salah satu relief kapal dijadikan model dalam membuat replika kapal yang digunakan untuk mengarungi&nbsp;<em>The Cinnamon Route</em>&nbsp;dari Jawa hingga benua Afrika. Saat ini replika kapal yang disebut sebagai Kapal Borobudur itu disimpan di Museum Samudra Raksa.</p>\n\n<p>Untuk mengikuti alur jalinan kisah yang terpahat pada dinding candi, pengunjung harus berjalan mengitari candi searah jarum jam atau yang dikenal dengan istilah&nbsp;<em>pradaksina</em>. Masuk melalui pintu timur, berjalan searah jarum jam agar posisi candi selalu ada di sebelah kanan, hingga tiba di tangga timur dan melangkahkan kaki naik ke tingkat berikutnya. Hal ini dilakukan berulang-ulang hingga semua tingkat terlewati dan berada di puncak candi yang berbentuk stupa induk. Sesampainya di puncak, layangkanlah pandangan ke segala arah maka akan terlihat deretan Perbukitan Menoreh, Gunung Sindoro, Gunung Sumbing, Gunung Merapi, dan Gunung Merbabu yang berdiri tegak mengitari candi. Gunung dan perbukitan tersebut seolah-olah menjadi penjaga yang membentengi keberadaan Candi Borobudur.</p>\n\n<p>Berdasarkan prasasti Kayumwungan yang bertanggal 26 Mei 824, Candi Borobudur dibangun oleh Raja Samaratungga antara abad ke-8 hingga abad ke-9, berbarengan dengan&nbsp;<a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/mendut/">Mendut</a>&nbsp;dan&nbsp;<a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/pawon/">Pawon</a>. Proses pembangunan berlangsung selama 75 tahun di bawah kepemimpinan arsitek Gunadarma. Meski belum mengenal komputer dan peralatan canggih lainnya, Gunadarma mampu menerapkan sistem&nbsp;<em>interlock</em>dalam pembangunan candi. Sebanyak 60.000 meter kubik batu andesit yang berjumlah 2.000.000 balok batu yang diusung dari Sungai Elo dan Progo dipahat dan dirangkai menjadi&nbsp;<em>puzzle</em>&nbsp;raksasa yang menutupi sebuah bukit kecil hingga terbentuk Candi Borobudur.</p>\n\n<p>Borobudur tidak hanya memiliki nilai seni yang teramat tinggi, karya agung yang menjadi bukti peradaban manusia pada masa lalu ini juga sarat dengan nilai filosofis. Mengusung konsep&nbsp;<em>mandala</em>yang melambangkan kosmologi alam semesta dalam ajaran Buddha, bangunan megah ini dibagi menjadi tiga tingkatan, yakni dunia hasrat atau nafsu (Kamadhatu), dunia bentuk (Rupadhatu), dan dunia tanpa bentuk (Arupadhatu). Jika dilihat dari ketinggian, Candi Borobudur laksana ceplok teratai di atas bukit. Dinding-dinding candi yang berada di tingkatan Kamadatu dan Rupadatu sebagai kelopak bunga, sedangkan deretan stupa yang melingkar di tingkat Arupadatu menjadi benang sarinya. Stupa Induk melambangkan Sang Buddha, sehingga secara utuh Borobudur menggambarkan Buddha yang sedang duduk di atas kelopak bunga teratai.</p>\n\n<p>Menikmati kemegahan Candi Borobudur tidak hanya cukup dengan berjalan menyusuri lorong dan naik ke tingkat teratas candi. Satu hal yang jangan dilewatkan adalah menyaksikan Borobudur Sunrise dan Borobudur Sunset dari atas candi. Siraman cahaya mentari pagi yang menerpa stupa dan arca Buddha membuat keagungan dan kemegahan candi lebih terasa. Sedangkan berdiri di puncak candi di kala senja bersama deretan stupa dan menyaksikan sinar matahari yang perlahan mulai lindap akan menciptakan perasaan tenang dan damai.</p>\n\n<p>sumber : <a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/borobudur/">yogyes.com</a></p>\n', 'assets/uploads/location/Candi-Borobudur-Jawa-tengah3.jpg', 'Borobudur, Magelang, Jawa Tengah, Indonesia', NULL, NULL, NULL, '-', '(0293) 788 266'),
(3, 'Candi Ijo', '<h1>CANDI IJO&nbsp;<br />\nCandi yang Letaknya Tertinggi di Yogyakarta</h1>\n\n<blockquote>\n<p><em>Candi Ijo adalah candi yang letaknya paling tinggi di Yogyakarta yang menyuguhkan pesona alam dan budaya serta pesawat yang tengah&nbsp;</em><em>landing</em><em>. Candi inilah yang membuat landasan Bandara Adisutjipto tak bisa diperpanjang ke arah timur.</em></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<h3>CANDI IJO</h3>\n\n<p><em>(diperbarui tgl 5/24/2014)</em></p>\n\n<p><strong>Tiket</strong><br />\nGratis</p>\n\n<p><strong>Buka setiap hari</strong><br />\nPk 07:30 - 16:00 WIB</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Menyusuri jalan menuju bagian selatan kompleks Istana Ratu Boko adalah sebuah perjalanan yang mengasyikkan, terutama bagi penikmat wisata budaya. Bagaimana tidak, bangunan candi di sana bertebaran bak cendawan di musim hujan. Satu diantaranya yang belum banyak menjadi perbincangan adalah Candi Ijo, sebuah candi yang letaknya paling tinggi di antara candi-candi lain di Daerah Istimewa Yogyakarta.</p>\n\n<p>Candi Ijo dibangun sekitar abad ke-9, di sebuah bukit yang dikenal dengan Bukit Hijau atau Gumuk Ijo yang ketinggiannya sekitar 410 m di atas permukaan laut. Karena ketinggiannya, maka bukan saja bangunan candi yang bisa dinikmati tetapi juga pemandangan alam di bawahnya berupa teras-teras seperti di daerah pertanian dengan kemiringan yang curam. Meski bukan daerah yang subur, pemandangan alam di sekitar candi sangat indah untuk dinikmati.</p>\n\n<p>Kompleks candi terdiri dari 17 struktur bangunan yang terbagi dalam 11 teras berundak. Teras pertama sekaligus halaman menuju pintu masuk merupakan teras berundak yang membujur dari barat ke timur. Bangunan pada teras ke-11 berupa pagar keliling, delapan buah lingga patok, empat bangunan yaitu candi utama, dan tiga candi perwara. Peletakan bangunan pada tiap teras didasarkan atas kesakralannya. Bangunan pada teras tertinggi adalah yang paling sakral.</p>\n\n<p>Ragam bentuk seni rupa dijumpai sejak pintu masuk bangunan yang tergolong candi Hindu ini. Tepat di atas pintu masuk terdapat kala makara dengan motif kepala ganda dan beberapa atributnya. Motif kepala ganda dan atributnya yang juga bisa dijumpai pada candi Buddha menunjukkan bahwa candi itu adalah bentuk akulturasi kebudayaan Hindu dan Buddha. Beberapa candi yang memiliki motif kala makara serupa antara lain Ngawen, Plaosan dan Sari.</p>\n\n<p>Ada pula arca yang menggambarkan sosok perempuan dan laki-laki yang melayang dan mengarah pada sisi tertentu. Sosok tersebut dapat mempunyai beberapa makna. Pertama, sebagai suwuk untuk mngusir roh jahat dan kedua sebagai lambang persatuan Dewa Siwa dan Dewi Uma. Persatuan tersebut dimaknai sebagai awal terciptanya alam semesta. Berbeda dengan arca di Candi Prambanan, corak naturalis pada arca di Candi Ijo tidak mengarah pada erotisme.</p>\n\n<p>Menuju bangunan candi perwara di teras ke-11, terdapat sebuah tempat seperti bak tempat api pengorbanan (homa). Tepat di bagian atas tembok belakang bak tersebut terdapat lubang-lubang udara atau ventilasi berbentuk jajaran genjang dan segitiga. Adanya tempat api pengorbanan merupakan cermin masyarakat Hindu yang memuja Brahma. Tiga candi perwara menunjukkan penghormatan masyarakat pada Hindu Trimurti, yaitu Brahma, Siwa, dan Whisnu.</p>\n\n<p>Salah satu karya yang menyimpan misteri adalah dua buah prasasti yang terletak di bangunan candi pada teras ke-9. Salah satu prasasti yang diberi kode F bertuliskan Guywan atau Bluyutan berarti pertapaan. Prasasti lain yang terbuat dari batu berukuran tinggi 14 cm dan tebal 9 cm memuat mantra-mantra yang diperkirakan berupa kutukan. Mantra tersebut ditulis sebanyak 16 kali dan diantaranya yang terbaca adalah &quot;Om Sarwwawinasa, Sarwwawinasa.&quot; Bisa jadi, kedua prasasti tersebut erat dengan terjadinya peristiwa tertentu di Jawa saat itu. Apakah peristiwanya? Hingga kini belum terkuak.</p>\n\n<p>Mengunjungi candi ini, anda bisa menjumpai pemandangan indah yang tak akan bisa dijumpai di candi lain. Bila menghadap ke arah barat dan memandang ke bawah, anda bisa melihat pesawat take off dan landing di Bandara Adisutjipto. Pemandangan itu bisa dijumpai karena Pegunungan Seribu tempat berdiri candi ini menjadi batas bagian timur bandara. Karena keberadaan candi di pegunungan itu pula, landasan Bandara Adisutjipto tak bisa diperpanjang ke arah timur.</p>\n\n<p>Setiap detail candi menyuguhkan sesuatu yang bermakna dan mengajak penikmatnya untuk berefleksi sehingga perjalanan wisata tak sekedar ajang bersenang-senang. Adanya banyak karya seni rupa hebat tanpa disertai nama pembuatnya menunjukkan pandangan masyarakat Jawa saat itu yang lebih menitikberatkan pada pesan moral yang dibawa oleh suatu karya seni, bukan si pembuat atau kemegahan karya seninya.</p>\n\n<p>sumber : <a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/ijo/">yogyes.com</a></p>\n', 'assets/uploads/location/candi-ijo-21.jpg', 'Bukit Ijo, Desa Sambirejo, Prambanan, Sleman, Yogyakarta, Indonesia', NULL, NULL, NULL, '-', '-'),
(4, 'Istana Ratu Boko', '<h1>ISTANA RATU BOKO&nbsp;<br />\nKemegahan di Bukit Penuh Kedamaian</h1>\n\n<blockquote>\n<p><em>Istana Ratu Boko adalah kompleks istana megah yang dibangun pada abad ke-8. Bangunan yang bisa dikatakan termegah di jamannya itu dibangun oleh salah satu kerabat pendiri Borobudur.</em></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<h3>ISTANA RATU BOKO</h3>\n\n<p><em>(diperbarui tgl 5/29/2014)</em></p>\n\n<p><strong>Tiket</strong><br />\nRp. 25.000 (dewasa)<br />\nRp. 10.000 (anak)<br />\nUSD 13 (WNA)</p>\n\n<p><strong>Buka setiap hari</strong><br />\nPk 06:00 - 17:00 WIB</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Istana Ratu Boko adalah sebuah bangunan megah yang dibangun pada masa pemerintahan Rakai Panangkaran, salah satu keturunan Wangsa Syailendra. Istana yang awalnya bernama&nbsp;<em>Abhayagiri Vihara</em>&nbsp;(berarti biara di bukit yang penuh kedamaian) ini didirikan untuk tempat menyepi dan memfokuskan diri pada kehidupan spiritual. Berada di istana ini, anda bisa merasakan kedamaian sekaligus melihat pemandangan kota Yogyakarta dan Candi Prambanan dengan latar Gunung Merapi.</p>\n\n<p>Istana ini terletak di 196 meter di atas permukaan laut. Areal istana seluas 250.000 m2&nbsp;terbagi menjadi empat, yaitu tengah, barat, tenggara, dan timur. Bagian tengah terdiri dari bangunan gapura utama, lapangan, Candi Pembakaran, kolam, batu berumpak, dan Paseban. Sementara, bagian tenggara meliputi Pendopo, Balai-Balai, 3 candi, kolam, dan kompleks Keputren. Kompleks gua, Stupa Budha, dan kolam terdapat di bagian timur. Sedangkan bagian barat hanya terdiri atas perbukitan.</p>\n\n<p>Bila masuk dari pintu gerbang istana, anda akan langsung menuju ke bagian tengah. Dua buah gapura tinggi akan menyambut anda. Gapura pertama memiliki 3 pintu sementara gapura kedua memiliki 5 pintu. Bila anda cermat, pada gapura pertama akan ditemukan tulisan &#39;Panabwara&#39;. Kata itu, berdasarkan prasasti Wanua Tengah III, dituliskan oleh Rakai Panabwara, (keturunan Rakai Panangkaran) yang mengambil alih istana. Tujuan penulisan namanya adalah untuk melegitimasi kekuasaan, memberi &#39;kekuatan&#39; sehingga lebih agung dan memberi tanda bahwa bangunan itu adalah bangunan utama.</p>\n\n<p>Sekitar 45 meter dari gapura kedua, anda akan menemui bangungan candi yang berbahan dasar batu putih sehingga disebut Candi Batu Putih. Tak jauh dari situ, akan ditemukan pula Candi Pembakaran. Candi itu berbentuk bujur sangkar (26 meter x 26 meter) dan memiliki 2 teras. Sesuai namanya, candi itu digunakan untuk pembakaran jenasah. Selain kedua candi itu, sebuah batu berumpak dan kolam akan ditemui kemudian bila anda berjalan kurang lebih 10 meter dari Candi Pembakaran.</p>\n\n<p>Sumur penuh misteri akan ditemui bila berjalan ke arah tenggara dari Candi Pembakaran. Konon, sumur tersebut bernama Amerta Mantana yang berarti air suci yang diberikan mantra. Kini, airnya pun masih sering dipakai. Masyarakat setempat mengatakan, air sumur itu dapat membawa keberuntungan bagi pemakainya. Sementara orang-orang Hindu menggunakannya untuk Upacara Tawur agung sehari sebelum Nyepi. Penggunaan air dalam upacara diyakini dapat mendukung tujuannya, yaitu untuk memurnikan diri kembali serta mengembalikan bumi dan isinya pada harmoni awalnya. YogYES menyarankan anda berkunjung ke Candi Prambanan sehari sebelum Nyepi jika ingin melihat proses upacaranya.</p>\n\n<p>Melangkah ke bagian timur istana, anda akan menjumpai dua buah gua, kolam besar berukuran 20 meter x 50 meter dan stupa Budha yang terlihat tenang. Dua buah gua itu terbentuk dari batuan sedimen yang disebut Breksi Pumis. Gua yang berada lebih atas dinamakan Gua Lanang sedangkan yang berada di bawah disebut Gua Wadon. Persis di muka Gua Lanang terdapat sebuah kolam dan tiga stupa. Berdasarkan sebuah penelitian, diketahui bahwa stupa itu merupakan Aksobya, salah satu Pantheon Budha.</p>\n\n<p>Meski didirikan oleh seorang Budha, istana ini memiliki unsur-unsur Hindu. Itu dapat dilihat dengan adanya Lingga dan Yoni, arca Ganesha, serta lempengan emas yang bertuliskan &quot;<em>Om Rudra ya namah swaha</em>&quot; sebagai bentuk pemujaan terhadap Dewa Rudra yang merupakan nama lain Dewa Siwa. Adanya unsur-unsur Hindu itu membuktikan adanya toleransi umat beragama yang tercermin dalam karya arsitektural. Memang, saat itu Rakai Panangkaran yang merupakan pengikut Budha hidup berdampingan dengan para pengikut Hindu.</p>\n\n<p>Sedikit yang tahu bahwa istana ini adalah saksi bisu awal kejayaan di tanah Sumatera. Balaputradewa sempat melarikan diri ke istana ini sebelum ke Sumatera ketika diserang oleh Rakai Pikatan. Balaputradewa memberontak karena merasa sebagai orang nomor dua di pemerintahan Kerajaan Mataram Kuno akibat pernikahan Rakai Pikatan dengan Pramudhawardani (saudara Balaputradewa. Setelah ia kalah dan melarikan diri ke Sumatera, barulah ia menjadi raja di Kerajaan Sriwijaya.</p>\n\n<p>Sebagai sebuah bangunan peninggalan, Istana Ratu Boko memiliki keunikan dibanding peninggalan lain. Jika bangunan lain umumnya berupa candi atau kuil, maka sesuai namanya istana ini menunjukkan ciri-ciri sebagai tempat tinggal. Itu ditunjukkan dari adanya bangunan berupa tiang dan atap yang terbuat dari bahan kayu, meski kini yang tertinggal hanya batur-batur dari batu saja. Telusurilah istana ini, maka anda akan mendapatkan lebih banyak lagi, salah satunya pemandangan senja yang sangat indah. Seorang turis asal Amerika Serikat mengatakan, &quot;Inilah senja yang terindah di bumi.&quot;</p>\n\n<p>sumber : <a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/ratu-boko/">yogyes.com</a></p>\n', 'assets/uploads/location/1347443859869626884.jpg', 'Jalan Raya Jogja-Solo, Prambanan, Yogyakarta, Indonesia', NULL, NULL, NULL, '-', '(0274) 496 510'),
(5, 'Candi Plaosan', '<h1>CANDI PLAOSAN&nbsp;<br />\nCandi Kembar di Yogyakarta</h1>\n\n<blockquote>\n<p><em>Candi Plaosan yang dibangun Rakai Pikatan memiliki beberapa keunikan dibanding candi lain, yaitu dua candi utamanya yang &quot;kembar&quot; serta teras yang permukaannya halus. Di candi ini juga terdapat figur Vajrapani, Amitbha, dan Prajnaparamitha.</em></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<h3>CANDI PLAOSAN</h3>\n\n<p><em>(diperbarui tgl 5/24/2014)</em></p>\n\n<p><strong>Tiket</strong><br />\nGratis</p>\n\n<p><strong>Buka setiap hari</strong><br />\nPk 09:00 - 17:00 WIB</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Anda tak perlu terburu-buru kembali ke penginapan usai berkunjung ke Candi Prambanan, sebab tidak jauh dari candi Hindu tercantik di dunia itu anda juga akan menemui candi-candi lain yang sama menariknya. Melaju ke utara sejauh 1 km, anda akan menemui Candi Plaosan, sebuah candi yang dibangun oleh Rakai Pikatan untuk permaisurinya, Pramudyawardani. Terletak di Dusun Bugisan Kecamatan Prambanan, arsitektur candi ini merupakan perpaduan Hindu dan Budha.</p>\n\n<p>Kompleks Plaosan dibagi menjadi 2 kelompok, yaitu Candi Plaosan Lor dan Candi Plaosan Kidul. Kedua candi itu memiliki teras berbentuk segi empat yang dikelilingi oleh dinding, tempat semedi berbentuk gardu di bagian barat serta stupa di sisi lainnya. Karena kesamaan itu, maka kenampakan Candi Plaosan Lor dan Kidul hampir serupa jika dilihat dari jauh sehingga sampai sekarang Candi Plaosan juga sering disebut candi kembar.</p>\n\n<p>Bangunan Candi Plaosan Lor memiliki halaman tengah yang dikelilingi oleh dinding dengan pintu masuk di sebelah barat. Pada bagian tengah halaman itu terdapat pendopo berukuran 21,62 m x 19 m. Pada bagian timur pendopo terdapat 3 buah altar, yaitu altar utara, timur dan selatan. Gambaran Amitbha, Ratnasambhava, Vairochana, dan Aksobya terdapat di altar timur. Stupa Samantabadhara dan figur Ksitigarbha ada di altar utara, sementara gambaran Manjusri terdapat di altar barat.</p>\n\n<p>Candi Plaosan Kidul juga memiliki pendopo di bagian tengah yang dikelilingi 8 candi kecil yang terbagi menjadi 2 tingkat dan tiap-tiap tingkat terdiri dari 4 candi. Ada pula gambaran Tathagata Amitbha, Vajrapani dengan atribut vajra pada utpala serta Prajnaparamita yang dianggap sebagai &quot;ibu dari semua Budha&quot;. Beberapa gambar lain masih bisa dijumpai namun tidak pada tempat yang asli. Figur Manujri yang menurut seorang ilmuwan Belanda bernama Krom cukup signifikan juga bisa dijumpai.</p>\n\n<p>Bagian Bas relief candi ini memiliki gambaran unik pria dan wanita. Terdapat seorang pria yang digambarkan tengah duduk bersila dengan tangan menyembah serta figur pria dengan tangan vara mudra dan vas di kaki yang dikelilingi enam pria yang lebih kecil. Seorang wanita ada yang digambarkan sedang berdiri dengan tangan vara mudra, sementara di sekelilingnya terdapat buku, pallet dan vas. Krom berpendapat bahwa figur pria wanita itu adalah gambaran patron supporter dari dua wihara.</p>\n\n<p>Seluruh kompleks Candi Plaosan memiliki 116 stupa perwara dan 50 candi perwara. Stupa perwara bisa dilihat di semua sisi candi utama, demikian pula candi perwara yang ukurannya lebih kecil. Bila berjalan ke bagian utara, anda bisa melihat bangunan terbuka yang disebut Mandapa. Dua buah prasati juga bisa ditemui, yaitu prasasti yang di atas keping emas di sebelah utara candi utama dan prasasti yang ditulis di atas batu di Candi Perwara baris pertama.</p>\n\n<p>Salah satu kekhasan Candi Plaosan adalah permukaan teras yang halus. Krom berpendapat teras candi ini berbeda dengan teras candi lain yang dibangun di masa yang sama. Menurutnya, hal itu terkait dengan fungsi candi kala itu yang diduga untuk menyimpan teks-teks kanonik milik para pendeta Budha. Dugaan lain yang berasal dari para ilmuwan Belanda, jika jumlah pendeta di wilayah itu sedikit maka mungkin teras itu digunakan sebagai sebuah wihara (tempat ibadah umat Budha).</p>\n\n<p>Jika melihat sekeliling candi, anda akan tahu bahwa Candi Plaosan sebenarnya merupakan kompleks candi yang luas. Hal itu dapat dilihat dari adanya pagar keliling sepanjang 460 m dari utara ke selatan serta 290 m dari barat ke timur, juga interior pagar yang terdiri atas parit sepanjang 440 m dari utara ke selatan dan 270 m dari barat ke timur. Parit yang menyusun bagian interior pagar itu bisa dilihat dengan berjalan ke arah timur melewati sisi tengah bangunan bersejarah ini.</p>\n\n<p>sumber : <a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/plaosan/">yogyes.com</a></p>\n', 'assets/uploads/location/sojiwan_3.jpg', 'Dukuh Plaosan, Desa Bugisan, Prambanan, Jawa Tengah 57454, Indonesia', NULL, NULL, NULL, '-', '-'),
(6, 'Candi Tara', '<h1>CANDI TARA&nbsp;<br />\nPeninggalan Budha Tertua di Yogyakarta</h1>\n\n<blockquote>\n<p><em>Candi Tara adalah candi yang dipersembahkan untuk Dewi Tara yang dinding luarnya dilapisi semen kuno. Candi Budha tertua di Yogyakarta ini dibangun oleh Rakai Panangkaran, raja dari dinasti Syailendra yang juga mengkonsep pendirian Borobudur.</em></p>\n</blockquote>\n\n<p>&nbsp;</p>\n\n<h2>CANDI TARA</h2>\n\n<p><em>(diperbarui tgl 5/24/2014)</em></p>\n\n<p><strong>Tiket</strong><br />\nGratis</p>\n\n<p><strong>Buka setiap hari</strong><br />\nPk 09:00 - 16:00 WIB</p>\n\n<hr />\n<p>&nbsp;</p>\n\n<p>Banyak orang selalu menyebut Borobudur saat membicarakan bangunan candi Budha. Padahal, ada banyak candi bercorak Budha yang terdapat di Yogyakarta, salah satu yang berkaitan erat dengan Borobudur adalah Candi Tara. Candi yang terletak di Kalibening, Kalasan ini dibangun oleh konseptor yang sama dengan Borobudur, yaitu Rakai Panangkaran. Karena letaknya di daerah Kalasan, maka candi ini lebih dikenal dengan nama Candi Kalasan.</p>\n\n<p>Selesai dibangun pada tahun 778 M, Candi Tara menjadi candi Budha tertua di Yogyakarta. Candi yang berdiri tak jauh dari Jalan Yogya Solo ini dibangun sebagai penghargaan atas perkawinan Pancapana dari Dinasti Sanjaya dengan Dyah Pramudya Wardhani dari Dinasti Syailendra. Selain sebagai hadiah perkawinan, candi itu juga merupakan tanggapan usulan para raja untuk membangun satu lagi bangunan suci bagi Dewi Tara dan biara bagi para pendeta.</p>\n\n<p>Candi Tara adalah bangunan berbentuk dasar bujur sangkar dengan setiap sisi berukuran 45 meter dan tinggi 34 meter. Bangunan candi secara vertikal terdiri dari tiga bagian, yaitu kaki candi, tubuh candi dan atap candi. Bagian kaki candi adalah sebuah bangunan yang berdiri di alas batu berbentuk bujur sangkar dan sebuah batu lebar. Pada bagian itu terdapat tangga dengan hiasan makara di ujungnya. Sementara, di sekeliling kaki candi terdapat hiasan sulur-suluran yang keluar dari sebuah pot.</p>\n\n<p>Tubuh candi memiliki penampilan yang menjorok keluar di sisi tengahnya. Di bagian permukaan luar tubuh candi terdapat relung yang dihiasi sosok dewa yang memegang bunga teratai dengan posisi berdiri. Bagian tenggaranya memiliki sebuah bilik yang di dalamnya terdapat singgasana bersandaran yang dihiasi motif singa yang berdiri di atas punggung gajah. Bilik tersebut dapat dimasuki dari bilik penampil yang terdapat di sisi timur.</p>\n\n<p>Bagian atap candi berbentuk segi delapan dan terdiri dari dua tingkat. Sebuah arca yang melukiskan manusia Budha terdapat pada tingkat pertama sementara pada tingkat kedua terdapat arca yang melukiskan Yani Budha. Bagian puncak candi berupa bujur sangkar yang melambangkan Kemuncak Semeru dengan hiasan stupa-stupa. Pada bagian perbatasan tubuh candi dengan atap candi terdapat hiasan bunga makhluk khayangan berbadan kerdil disebut Gana.</p>\n\n<p>Bila anda mencermati detail candi, anda juga akan menjumpai relief-relief cantik pada permukaannya. Misalnya relief pohon dewata dan awan beserta penghuni khayangan yang tengah memainkan bunyi-bunyian. Para penghuni khayangan itu membawa rebab, kerang dan camara. Ada pula gambaran kuncup bunga, dedaunan dan sulur-suluran. Relief di Candi Tara memiliki kekhasan karena dilapisi dengan semen kuno yang disebut Brajalepha, terbuat dari getah pohon tertentu.</p>\n\n<p>Di sekeliling candi terdapat stupa-stupa dengan tinggi sekitar 4,6 m berjumlah 52 buah. Meski stupa-stupa itu tak lagi utuh karena bagiannya sudah tak mungkin dirangkai utuh, anda masih bisa menikmatinya. Mengunjungi candi yang sejarah berdirinya diketahui berdasarkan Prasasti Candi yang berhuruf Panagari ini, anda akan semakin mengakui kehebatan Rakai Panangkaran yang bahkan sempat membangun bangunan suci di Thailand.</p>\n\n<p>Candi ini juga menjadi bukti bahwa pada masa lalu telah ada upaya untuk merukunkan pemeluk agama satu dengan yang lain. Terbukti, Panangkaran yang beragama Hindu membangun Candi Tara atas usulan para pendeta Budha dan dipersembahkan bagi Pancapana yang juga beragama Budha. Candi ini pulalah yang menjadi salah satu bangunan suci yang menginspirasi Atisha, seorang Budhis asal India yang pernah mengunjungi Borobudur dan menyebarkan Budha ke Tibet.</p>\n\n<p>sumber : <a href="http://www.yogyes.com/id/yogyakarta-tourism-object/candi/tara/">yogyes.com</a></p>\n', 'assets/uploads/location/CANDI-TARA1.jpg', 'Jl. Jogja-Solo km 13, Kalasan, Yogyakarta, Indonesia', NULL, NULL, NULL, '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `map`
--

CREATE TABLE IF NOT EXISTS `map` (
  `id_map` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `info` text,
  `fasilitas` text,
  `latitude` varchar(100) DEFAULT NULL,
  `langitude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_map`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `map`
--

INSERT INTO `map` (`id_map`, `name`, `info`, `fasilitas`, `latitude`, `langitude`) VALUES
(1, 'LOKASI CANDI SAMBISARI', '<p><a href="https://www.google.com/search?q=candi+sambisari+alamat&amp;stick=H4sIAAAAAAAAAGOovnz8BQMDgy4HnxCXfq6-gZlJdpJJkpZsdrKVfk5-cmJJZn4enGGVmJJSlFpcHO28_4D8XIceURvJIHFbI34_xkm3APWx5r5KAAAA&amp;sa=X&amp;ei=3A6tVJf6LdOiugS-yYHIDQ&amp;ved=0CJABEOgTMBI">Alamat</a>: Jl. Candi Sambisari, Desa Sambisari, Kec. Kalasan, Sleman, Daerah Istimewa Yogyakarta, Indonesia</p>\n', NULL, '-7.762834261027358', '110.38574337301634');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id_page` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(255) DEFAULT NULL COMMENT 'path file',
  `id_user` int(3) NOT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id_page`, `name`, `title`, `content`, `date_update`, `image`, `id_user`) VALUES
(1, 'profil', 'Tentang Candi Sambisari', '<p>Tak ada perasaan aneh yang menghinggapi Karyowinangun pada sebuah pagi di tahun 1966. Tapi sebuah kejadian langka dialaminya di sawah kala itu, ketika sedang mengayunkan cangkulnya ke tanah. Cangkul yang diayunkan ke tanah membentur sebuah batu besar yang setelah dilihat memiliki pahatan pada permukaannya. Karyowinangun dan warga sekitar pun merasa heran dengan keberadaan bongkahan batu itu.</p>\n\n<p>Dinas kepurbakalaan yang mengetahui adanya temuan itu pun segera datang dan selanjutnya menetapkan areal sawah Karyowinangun sebagai suaka purbakala. Batu berpahat yang ditemukan itu diduga merupakan bagian dari candi yang mungkin terkubur di bawah areal sawah. Penggalian akhirnya dilakukan hingga menemukan ratusan bongkahan batu lain beserta arca-arca kuno. Dan benar, batu-batu itu memang merupakan komponen sebuah candi.</p>\n\n<p>Selang 21 tahun sesudahnya, keindahan candi akhirnya bisa dinikmati. Bangunan candi yang dinamai Sambisari itu berdiri megah di Dusun Sambisari, Kelurahan Purwomartani, Kecamatan Kalasan, Sleman, 10 kilometer dari pusat kota Yogyakarta. Anda bisa menjangkau dengan berkendara melewati lintas jalan Yogya-Solo hingga menemukan papan penunjuk menuju candi ini. Selanjutnya, anda tinggal berbelok ke kiri mengikuti alur jalan.</p>\n\n<p>Saat mengarahkan pandangan ke tengah areal candi, hanya tampak susunan batu atap yang seolah hanya bertinggi beberapa meter di atas tanah. Ternyata, Candi Sambisari berada 6,5 meter lebih rendah dari wilayah sekitarnya.</p>\n\n<p>Candi Sambisari diperkirakan dibangun antara tahun 812 - 838 M, kemungkinan pada masa pemerintahan Rakai Garung. Kompleks candi terdiri dari 1 buah candi induk dan 3 buah candi pendamping. Terdapat 2 pagar yang mengelilingi kompleks candi, satu pagar telah dipugar sempurna, sementara satu pagar lainnya hanya ditampakkan sedikit di sebelah timur candi. Masih sebagai pembatas, terdapat 8 buah lingga patok yang tersebar di setiap arah mata angin.</p>\n\n<p>Bangunan candi induk cukup unik karena tidak mempunyai alas seperti candi di Jawa lainnya. Kaki candi sekaligus berfungsi sebagai alas sehingga sejajar dengan tanah. Bagian kaki candi dibiarkan polos, tanpa relief atau hiasan apapun. Beragam hiasan yang umumnya berupa simbar baru dijumpai pada bagian tubuh hingga puncak candi bagian luar. Hiasan itu sekilas seperti motif-motif batik.</p>\n\n<p>Menaiki tangga pintu masuk candi induk, anda bisa menjumpai hiasan berupa seekor singa yang berada dalam mulut&nbsp;<em>makara</em>&nbsp;(hewan ajaib dalam mitologi Hindu) yang menganga. Figur&nbsp;<em>makara</em>&nbsp;di Sambisari dan merupakan evolusi dari bentuk&nbsp;<em>makara</em>&nbsp;di India yang bisa berupa perpaduan gajah dengan ikan atau buaya dengan ekor yang membengkok.</p>\n\n<p>Selasar selebar 1 meter akan dijumpai setelah melewati anak tangga terakhir pintu masuk candi induk. Mengelilinginya, anda akan menjumpai 3 relung yang masing-masing berisi sebuah arca. Di sisi utara, terdapat arca Dewi Durga (isteri Dewa Siwa) dengan 8 tangan yang masing-masing menggenggam senjata. Sementara di sisi timur terdapat Arca Ganesha (anak Dewi Durga). Di sisi selatan, terdapat arca Agastya dengan&nbsp;<em>aksamala</em>&nbsp;(tasbih) yang dikalungkan di lehernya.</p>\n\n<p>Memasuki bilik utama candi induk, bisa dilihat lingga dan yoni berukuran cukup besar, kira-kira 1,5 meter. Keberadaannya menunjukkan bahwa candi ini dibangun sebagai tempat pemujaan Dewa Siwa. Lingga dan yoni di bilik candi induk ini juga dipakai untuk membuat air suci. Biasanya, air diguyurkan pada lingga dan dibiarkan mengalir melewati parit kecil pada yoni, kemudian ditampung dalam sebuah wadah.</p>\n\n<p>Keluar dari candi induk dan menuju ke barat, anda bisa melihat ketiga candi&nbsp;<em>perwara</em>&nbsp;(pendamping) yang menghadap ke arah berlawanan. Ada dugaan bahwa candi&nbsp;<em>perwara</em>&nbsp;ini sengaja dibangun tanpa atap sebab ketika penggalian tak ditemukan batu-batu bagian atap. Bagian dalam candi&nbsp;<em>perwara</em>&nbsp;tengah memiliki lapik bujur sangkar yang berhias naga dan&nbsp;<em>padmasana</em>&nbsp;(bunga teratai) berbentuk bulat cembung di atasnya. Kemungkinan,&nbsp;<em>padmasana</em>&nbsp;dan lapik dipakai sebagai tempat arca atau sesajen.</p>\n\n<p>Bila telah puas menikmati keindahan candi, anda bisa menuju ke ruang informasi. Beberapa foto yang menggambarkan lingkungan sawah Karyowinangun sebelum digali dan kondisi awal candi ketika ditemukan bisa ditemui. Ada pula foto-foto tentang proses penggalian dan rekonstruksi candi yang berjalan puluhan tahun, termasuk foto benda-benda lain yang ditemukan selama penggalian, berupa arca dari perunggu yang kini disimpan di Balai Pelestarian Peninggalan Purbakala.</p>\n\n<p>Keindahan Candi Sambisari yang kini bisa kita nikmati merupakan hasil kerja keras para arkeolog selama 21 tahun. Candi yang semula mirip&nbsp;<em>puzzle</em>&nbsp;raksasa, sepotong demi sepotong disusun kembali demi lestarinya satu lagi warisan kebudayaan agung di masa silam.</p>\n', '2015-01-07 09:54:14', 'assets/uploads/page/Candi_Sambisari_main_temple_2013-11-28_03.jpg', 1),
(2, 'sejarah', 'Latar belakang Sejarah', '<p>Candi Sambisari terletak di desa Sambisari, kelurahan Purwomartani, kecamatan Kalasan, Kabupaten Sleman, Provinsi DIY. Penemuan candi Sambisari terjadi secara kebetulan yaitu pada tanggal Juli 1966, ketika seorang petani yang sedang mengolah sawah milik Bapak Karyoinangun, tiba-tiba merasa cangkulnya membentur batu berukir. Ternyata batu itu merupakan bekas reruntuhan candi. Berita tersebut sampai ke kantor Cabang Lembaga Purbakala dan Peninggalan Nasional di Pramabanan. Langkah selanjutnya segera diadakan peninjauan dan penelitian di tempat temuan. Setelah diperoleh kepastian bahwa penemuan tersebut merupakan sebuah candi yang masih terpendam di dalam tanah, maka segera diputuskan untuk menyelamatkannya dengan mengadakan penggalian atau ekskavasi secepatnya.Langkah-langkah lebih lanjut setelah ekskavasi adalah, melakukan pra-pemugaran yaitu, dengan mengelompokkan batu-batu yang sama jenisnya. Selanjutnya dilakukan penyusunan percobaan dan kemudian pemugaran. Hasil pemugaran candi Sambisari tersebut terlaksana seperti yang terlihat sekarang ini. Satu hal yang unik dari candi Sambisari yaitu, terletak 6.54 m di bawah permukaan tanah.<img alt="13796538651543578924" src="http://stat.ks.kidsklik.com/statics/files/2013/09/13796538651543578924_300x225.jpg" style="height:225px; margin-left:auto; margin-right:auto; width:300px" /></p>\n\n<p><strong>Latar belakang Sejarah</strong></p>\n\n<p>Mengenai tahun pendirian candi Sambisari secara pasti belum dapat diketahui, karena tidak adanya bukti-bukti konkret yang mendukung validitas penentuannya. Oleh karena itu, untuk menentukan tahun pendiriannya harus ditinjau dari berapa segi.Dari segi arsitektur, candi Sambisari oleh Prof. Dr. Soekmono digolongkan ke dalam bangunan dari abad ke 8.&nbsp;Sedangkan berdasarkan batu isian yang digunakan di candi Sambisari yaitu, batu padas, maka masa pendiriannya semasa dengan candi Prambanan, Plaosan, dan Sojiwan sekitar abad ke-9 sampai dengan abab ke-10 M. Jenis batu padas ini banyak terdapat di bukit ratu Boko di Prambanan. Di tempat tersebut nampak bekas-bekas penggalian batu padas pada masa dulu.Berdasarkan kedua tafsiran tersebut, untuk sementara Soediman menempatkan pendidirian candi dalam dekade pertama atau kedua abad ke-9 M (812-838 M). Pendapat tersebut didukung dengan adanya penemuan sekeping daun emas bertulisan, karena berdasarkan tafsiran paleografis, Boechori bahwa tulisan itu berjalan dari sekitar permulaan abad ke-9 M</p>\n\n<p><img alt="13796538981420029376" src="http://stat.ks.kidsklik.com/statics/files/2013/09/13796538981420029376_300x225.jpg" style="height:225px; margin-left:auto; margin-right:auto; width:300px" /></p>\n\n<p><strong>Latar Belakang Keagamaan</strong></p>\n\n<p>Di candi Sambisari, bilik candi tidak ditempati arca Siwa Mahadewa, tetapi dalam aspek lain yaitu, Lingga dan Yoni. Lingga adalah perwujudan dari Dewa Siwa. Kesatuan, lingga dan yoni merupakan lambang persatuan Siwa dan &Ccedil;akti-nya. Selain itu juga sebagai lambang kesuburan. Di samping Lingga da Yoni ada beberapa arca dari pantheon agama Hindhu yaitu, Durga Mahesassuramardini (utara), Gane&ccedil;a (timur), Agastya (selatan), serta Mahakala dan Nandiswara sebagai penjaga pintuBerdasarkan arca-arca yang terdapat di candi Sambisari tersebut, maka dapat diketahui bahwa latar belakang keagaman candi Sambisari bersifat &Ccedil;iwaistis (berpusat pada Siwa)<img alt="13796539281418083656" src="http://stat.ks.kidsklik.com/statics/files/2013/09/13796539281418083656_300x225.jpg" style="height:225px; margin-left:auto; margin-right:auto; width:300px" /></p>\n\n<p><strong>Tafsiran Raja yang Membangun</strong></p>\n\n<p>Sebagai bangunan suci agama Siwa, maka untuk memperkirakan tentang siapa raja yang membangun candi Sambisari harus dicari raja dari dinasti Sailendra yang menganut agama Siwa. Di dalam prasati Wnua Tengah III tahun 908 M, terdapat nama-nama raja dari dinasti Mataram yaitu:</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rahyang I Hara adik Rahyang ri Mdang (Rakai Mataram sang Ratu Sanjaya) 717-784 M.</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Panangkaran 746-784 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Panaraban (panuggalan), 784-803 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Warak Dyah Manara, 803-827 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Gula, 827-828 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Garung, 828-846 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Pikatan, 846-855 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Dyah Tagwas 885 M (Ia yang memerintah selama 8 bulan)</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Panumwangan Dyah Dawendra, 855-887 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Garunwangi Dyah Badra, 887 M (ia memerintah selama satu bulan, kemudian meninggalkan kerajaan, selama 8 tahun tidak ada raja yang memerintah, sampai raja berikutnya naik tahta)</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Wungkalmalang Dyah Jbang, 894-898 M</p>\n\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cri Maharaja Rakai Watukura Dyah Balitung, 898 M</p>\n\n<p><img alt="13796539572094556541" src="http://stat.ks.kidsklik.com/statics/files/2013/09/13796539572094556541_300x225.jpg" style="height:225px; margin-left:auto; margin-right:auto; width:300px" /><img alt="1379653981922531079" src="http://stat.ks.kidsklik.com/statics/files/2013/09/1379653981922531079_300x225.jpg" style="height:225px; margin-left:auto; margin-right:auto; width:300px" /><img alt="13796540081871684319" src="http://stat.ks.kidsklik.com/statics/files/2013/09/13796540081871684319_300x225.jpg" style="height:225px; margin-left:auto; margin-right:auto; width:300px" /></p>\n\n<p>Dari daftar nama-nama raja dalam prasati Wnua Tengah III tersebut di atas yang paling mendekati tahun pendirian candi Sambisari, yaitu Rakai Garung, 828-846 M. Suatu hal yang perlu di ketahui bahwa tidak semua candi dibangun oleh raja yang memerintah.Demikianlah sedikit latar belakang dari Candi Sambisari, salah satu dari candi Hindu yang berada di daerah Yogyakarta. (dari berbagai sumber) Tertarik untuk berkunjung?</p>\n\n<p>&nbsp;</p>\n\n<p>sumber : <a href="http://sejarah.kompasiana.com/2013/09/20/latar-sejarah-candi-sambisari-593515.html">sejarah.kompasiana.com</a></p>\n', '2015-01-07 10:51:37', 'assets/uploads/page/slide-012.jpg', 1),
(7, 'perkembangan', 'Perkembangan Candi', '<p>belum ada konten</p>\n', '2015-01-07 10:14:27', 'assets/uploads/page/Candi_Sambisari_main_temple_2013-11-28_031.jpg', 1),
(9, 'pengelola', 'Pengelola Candi', '<p>belum ada konten</p>\n', '2015-01-07 10:14:44', 'assets/uploads/page/slide-01.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` tinyint(3) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL COMMENT 'path file',
  `post_date` date NOT NULL,
  `post_update` datetime NOT NULL,
  `id_user` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '1=aktif; 0=tidak',
  PRIMARY KEY (`id_post`),
  KEY `post category` (`id_category`),
  KEY `user posting` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id_post`, `id_category`, `title`, `content`, `image`, `post_date`, `post_update`, `id_user`, `status`) VALUES
(1, 1, 'Melihat Kearifan Lokal Tarian Adat Desa Sade, Lombok', '<p>Ragam budaya dari suku-suku di Indonesia sungguh sangat kaya. Mulai dari nyanyian hingga tarian, semuanya selalu menarik wisatawan. Tarian adat dari suku Sasak di Desa Sade, Lombok, adalah salah satunya yang wajib disaksikan.</p>\n\n<p>Desa Sade yang terletak di pinggir jalan raya Praya di daerah Rembitan, Lombok Tengah. Masyarakatnya merupakan suku Sasak asli yang masih mempertahankan keaslian budayanya mulai dari bahasa sehari-hari, sampai bentuk rumah dan juga tarian khas untuk menyambut tamu.&nbsp;</p>\n\n<p>Tari Gendang Beleq dan Paserehan adalah dua di antaranya. Tarian ini seru untuk dinikmati, dan mewakili kearifan masyarakat lokal Lombok.</p>\n', 'assets/uploads/post/lombok2.jpg', '2015-01-07', '0000-00-00 00:00:00', 1, 1),
(2, 1, 'Kain Cantik Ini Buatan Perawan Desa Sade', '<p>Desa Sade sudah jadi salah satu itinerary wajib saat liburan ke Lombok. Selain bisa melihat rumah adat yang unik, wisatawan juga bisa membeli kain tenun khas. Eits, kain ini banyak yang ditenun para perawan lho!</p>\n', 'assets/uploads/post/sade.jpg', '2015-01-07', '0000-00-00 00:00:00', 1, 1),
(3, 1, 'Api Unggun & Gemerlap Gili Trawangan Saat Malam', '<p><strong>Gili Trawangan</strong> - Gili Trawangan di Lombok memang terkenal di kalangan turis, terutama mancanegara. Namun tahukah Anda, pulau ini malah makin &quot;hidup&quot; saat malam. Keramaian malam di Gili Trawangan tak boleh dilewatkan.</p>\n', 'assets/uploads/post/gili.jpg', '2015-01-07', '0000-00-00 00:00:00', 1, 1),
(4, 2, 'Pameran SUPERFOOD EXPO#7 – Yogyakarta', '<p>Yuk datang ke Pameran makanan &amp; minuman paling super,&nbsp;Pameran Superfood ke-7! Pamera ini akan berlangsung di Jogja Expo Center Yogyakarta, pada tanggal 1 &ndash; 5 Mei 2015.</p>\n\n<p>Akan ada banyak&nbsp;aneka makanan, minuman serta ragam&nbsp;kuliner. Selain itu berbagai produk pendukung yang terkait dengan industri makanan dan minuman di Indonesia juga akan dihadirkan dalam pameran bertema kuliner ini.</p>\n\n<p>Juga tak lupa akan ada&nbsp;demo produk dan demo memasak serta aneka lomba dan gelar seni yang menambah daya tarik pengunjung.</p>\n\n<p>Enjoy Food Carnival!</p>\n', 'assets/uploads/post/Pameran-SUPERFOOD-EXPO7-Yogyakarta.jpg', '2015-01-07', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_category`
--

CREATE TABLE IF NOT EXISTS `post_category` (
  `id_category` tinyint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `post_category`
--

INSERT INTO `post_category` (`id_category`, `name`) VALUES
(1, 'Berita'),
(2, 'Event'),
(3, 'Galeri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(35) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_group` smallint(3) NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `user group` (`id_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `username`, `password`, `last_login`, `id_group`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2015-01-08 12:29:22', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `id_group` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`id_group`, `name`) VALUES
(1, 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_track`
--

CREATE TABLE IF NOT EXISTS `user_track` (
  `id_track` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_track`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `FK_banners_to_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `user update` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `category post` FOREIGN KEY (`id_category`) REFERENCES `post_category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user posting` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `user group` FOREIGN KEY (`id_group`) REFERENCES `user_group` (`id_group`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
