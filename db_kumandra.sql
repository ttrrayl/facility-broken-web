-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2024 pada 08.59
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kumandra`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 1, 5, 'pembuatan-website-profil', 'Pembuatan Website Profil', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', '<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>Paket Dasar</h3>\r\n<table class=\"table table-bordered table-stripped table-hover tiny-table\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Website UKM Dasar</td>\r\n<td>Hosting 250MB<br />Bandwidth Unlimited</td>\r\n<td>Rp. 1.500.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td>Website Perusahaan Kecil</td>\r\n<td>Hosting dan bandwidth unlimeted<br />Fully responsive web design</td>\r\n<td>Rp. 3.000.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><span class=\"text-danger\">* Harga dasar dengan syarat tertentu</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Berita', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', 'website-perusahaan-company-profile-web-javawebmedia1.jpg', '', 5, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2021-04-24 03:01:11'),
(2, 1, 5, 'kursus-statistik', 'Kursus Statistik', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.', '<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>', 'Publish', 'Layanan', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.', 'instagram-kursus-statistik-javawebmedia.png', 'fa fa-chart-bar', 7, '2019-05-17 04:15:33', '2019-05-17 04:06:15', '2021-04-24 05:08:01'),
(3, 1, 5, 'sejarah-java-web-media', 'Sejarah Java Web Media', 'Yuk pelajari sejarah dan awal mula berdirinya Java Web Media.', '<h2>Java Web Media</h2>\r\n<p>Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.</p>\r\n<h2>Tentang Andoyo</h2>\r\n<p><strong>Andoyo&nbsp;</strong>adalah pendiri Java Web Media. Aktif mengajar Graphic Design, Web Design dan Web Programming. Lahir di Blora, 22 Februari 1983.</p>\r\n<p>Lulus dengan predikat Wisudawan Terbaik dari Teknik Sipil&nbsp; Universitas Negeri Semarang pada tahun 2006. Pernah bekerja sebagai Site Engineer di sebuah perusahaan kontraktor. Mulai blogging sejak masih bekerja sebagai kontraktor di tahun 2008.</p>\r\n<p>Kecintaanya pada teknologi web akhirnya mengarahkannya untuk mempelajari Graphic Design dan Web Design di Natcoll Design Technology, Wellington New Zealand di tahun 2009. Semenjak itu, Graphic Design dan Web Design menjadi salah satu&nbsp;<em>passion&nbsp;</em>di dalam hidupnya.</p>\r\n<p>Saat ini aktivitas selain mengajar adalah mengelola usahanya yang bergerak di bidang graphic design, web design, web development dan web education. Anda dapat mengunjungi situs resminya di&nbsp;<a href=\"http://www.javawebmedia.com/\">www.javawebmedia.com</a>.</p>\r\n<p>Aktivitas berikutnya adalah sebagai mahasiswa Magister Teknologi Informasi di Universitas Indonesia. Setelah pulang bekerja kemudian berangkat kuliah di Kampus Salemba, Fakultas Ilmu Komputer Universitas Indonesia.</p>', 'Publish', 'Profil', 'Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', 'web-development-javawebmedia11.png', 'fa fa-globe', 18, '2019-05-17 04:37:00', '2019-05-17 04:36:19', '2021-05-03 01:17:05'),
(4, 1, 5, 'profil-java-web-media', 'Profil Java Web Media', 'PT Javawebmedia Edukasi Indonesia atau Java Web Media berdiri pada tanggal 26 April 2010.', '<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>', 'Publish', 'Profil', 'Java Web Media didirikan oleh Andoyo dan online pada tanggal 26 April 2010. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergera di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer Graphic Design, Web Design dan Web Development.', 'logo-javawebmedia-square.png', 'fas fa-check-circle', 5, '2019-07-26 10:38:15', '2019-07-26 10:36:47', '2021-04-24 04:58:20'),
(6, 1, 3, 'kursus-desain-grafis', 'Kursus Desain Grafis', 'Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.', '<h2>Deskripsi ringkas</h2>\r\n<p>Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.</p>\r\n<hr />\r\n<p>Anda akan belajar desain grafis mulai dari tahap brief project, dasar-dasar desain secara manual ataupun dengan program (Photoshop, Illustrator dan Indesign) dan juga praktek langsung bagaimana mencetak dan mengaplikasikan hasil desain tersebut.</p>\r\n<h3>Materi kursus:</h3>\r\n<ul>\r\n<li>Dasar-dasar dan konsep desain</li>\r\n<li>Merencanakan desain dengan&nbsp;<strong>Visual Diary</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Photoshop</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Illustrator</strong></li>\r\n<li>Penggunaan Adobe&nbsp;<strong>Indesign</strong></li>\r\n<li>Aplikasi hasil desain (cetak dan digital media)</li>\r\n</ul>\r\n<h3>Tujuan Kursus</h3>\r\n<ul>\r\n<li>Anda dapat merencanakan dan membuat sebuah konsep desain</li>\r\n<li>Anda dapat membaca sebuah brief project dan mengaplikasikannya&nbsp;</li>\r\n<li>Menjadi seorang&nbsp;<em><strong>Junior Graphic Designer</strong></em></li>\r\n</ul>\r\n<h3>Urutan Materi</h3>\r\n<ul>\r\n<li>Installasi Adobe Photoshop, Illustrator dan Adobe Indesign</li>\r\n<li>Pemahaman Konsep Desain Grafis, Citarasa Warna dan Jenis-jenis gambar</li>\r\n<li>Pengenalan Adobe Photoshop</li>\r\n<li>Pengolahan foto menggunakan Photoshop</li>\r\n<li>Manipulasi dan perbaikan foto dengan Adobe Photoshop</li>\r\n<li>Pengolahan foto untuk diproses lebih lanjut (misalnya untuk leaflet, brosur, banner, spanduk, xbanner, buku dll)</li>\r\n<li>Pengenalan Adobe Illustrator</li>\r\n<li>Membuat logo dengan Adobe Illustrator</li>\r\n<li>Mendesain kartu nama, spanduk, leaflet, banner, xbanner, sticker, book cover dan lain-lain dengan Adobe Illustrator</li>\r\n<li>Pengenalan Adobe Indesign</li>\r\n<li>Membuat layout buku dan penerapannya dengan Adobe Indesign</li>\r\n<li>Mencetak hasil desain secara digital</li>\r\n</ul>', 'Publish', 'Layanan', 'Belajar desain grafis mulai dari tahap brief project, dengan Adobe Photoshop, Illustrator dan Indesign. Belajar membuat logo, edit foto, banner dan juga layout buku.', 'Kursus_Desain_Grafis.jpg', 'fa fa-palette', 3, '2020-02-13 07:42:56', '2020-02-13 07:41:51', '2021-05-03 01:17:11'),
(7, 1, 5, 'web-based-application', 'Web Based Application', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', '<p>Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan &amp; mengembangkan aplikasi tersebut.</p>\r\n<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Otomasi proses bisnis yang bisa diakses 24 jam dengan internet</li>\r\n<li>Menyederhanakan proses pengumpulan data konsumen/customer/siswa dsb</li>\r\n<li>Sarana pengelolaan proses bisnis/usaha yang mudah dan praktis</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li><strong>Fitur pendaftaran online</strong></li>\r\n<li><strong>Fitur login, logout, update profile dan transaksi bagi konsumen/customer</strong></li>\r\n<li><strong>Fitur-fitur lain yang disesuaikan dengan kebutuhan perusahaan</strong></li>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>', 'Publish', 'Berita', 'Aplikasi bisnis berbasis web? Situs pendaftaran online untuk menunjang bisnis Anda? Kami berpengalaman dalam merencanakan & mengembangkan aplikasi tersebut.', 'web-application-pendaftaran-online-javawebmedia.jpg', '', 2, '2020-02-13 07:45:07', '2020-02-13 07:44:27', '2021-04-24 23:11:31'),
(21, 1, 6, 'alasan-kenapa-belajar-website-dari-sekarang', 'Alasan Kenapa Belajar Website dari Sekarang', 'Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?', '<p>Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?&nbsp;<strong>Berikut sedikit pemaparannya</strong>:</p>\r\n<p><strong>1. Agar tidak tertinggal</strong></p>\r\n<p>Alasan dasar kenapa belajar website karena agar kita tidak tertinggal dengan kemajuan teknologi. Diera teknologi seperti sekarang ini semua harus dilakukan dengan serba cepat. Begitu juga dengan informasi atau berkas dan juga data dapat dengan mudah kita peroleh lewat bantuan website. Semua data-data yang kita butuhkan bisa di unggah lewat website dan mudah untuk didapatkan.</p>\r\n<p><strong>2. Website media paling ampuh untuk promosi</strong></p>\r\n<p>Alasan berikutnya kenapa belajar website itu perlu sudah jelas akan sangat berguna bagi kita, utamanya untuk masalah bisnis. Website sangat membantu bisnis utamanya dalam urusan promosi. Dengan website kita dengan sangat mudah bisa mempromosikan berbagai macam bisnis yang kita miliki tanpa harus mengeluarkan banyak waktu dan banyak dana.</p>\r\n<p>Selain itu kenapa belajar website, tentunya juga kan menjadi strategi jitu dalam mencari trik cara pemasaran bisnis kita. dengan adanya website maka dengan mudah akan didapat berbagai macam terobosan pemasaran dari berbagai sumber lalu diaplikasikan pada website promo kita.</p>\r\n<p><strong>3. Media menuangkan kreativitas</strong></p>\r\n<p>Alasan kenapa belajar website tentunya tidak hanya berkutat dengan ranah bisnis maupun mengikuti perkembangan saja. Namun dengan belajar website kita bisa menuangkan kreativitas yang ada dalam diri kita. berbagai bentuk kreasi yang dihasilkan bisa kita masukkan ke dalam website tersebut sehingga tidak hanya menjadi konsumsi sendiri namun juga bisa mendatangkan keuntungan tentunya.</p>\r\n<p><strong>4. Menambah keterampilan</strong></p>\r\n<p>Alasan kenapa belajar website itu perlu yang terakhir adalah sebagai tambahan keterampilan yang kita miliki. Dengan kita belajar membuat website maka akan menjadikan kita memiliki nilai tambah tersendiri. Dengan keterampilan tersebut bukan tidak mungkin akan mendatangkan pekerjaan dan rejeki bagi kita nantinya. Jadi belajar website dari sekarang tidak ada ruginya.</p>', 'Publish', 'Berita', 'Memasuki zaman yang serba canggih seperti ini rasanya sangat perlu untuk kita bisa mengikuti alur perkembangan tersebut. Tujuannya agar kita tidak tertinggal dengan kemajuan tersebut. Salah satunya adalah belajar website. Lalu kenapa belajar website dari sekarang?', 'instagram-kursus-statistik-javawebmedia.png', NULL, 0, '2021-04-24 08:03:21', '0000-00-00 00:00:00', '2021-04-24 03:00:38'),
(22, 1, 6, 'betapa-pentingnya-belajar-web-programming-untuk-kebutuhan-perusahaan', 'Betapa Pentingnya Belajar Web Programming untuk Kebutuhan Perusahaan', 'Pada Mengapa harus Belajar Web Programming?? Pada era teknologi seperti sekarang ini, kedudukan website akan semakin merajai dalam bidang teknologi informasi untuk beberapa tahun kedepan. ', '<p>Pada Mengapa harus Belajar Web&nbsp;<a href=\"https://flashcomindonesia.com/kursus-desain-website\">Programming</a>?? Pada era teknologi seperti sekarang ini, kedudukan<strong>&nbsp;website</strong>&nbsp;akan semakin merajai dalam bidang&nbsp;<strong>teknologi informasi</strong>&nbsp;untuk beberapa tahun kedepan. Alasannya karena dengan adannya internet sebagai jaringannya, anda dapat dengan mudah mendapatkan informasi yang pastinya anda butuhkan. Tidak berhenti disitu saja, website juga bisa berupa aplikasi, dari segi biaya akan lebih terjangkau. Anda hanya butuh membeli sebuah<strong>&nbsp;hosting</strong>&nbsp;dan&nbsp;<strong>domain</strong>, lalu aplikasi akann bisa dibuka dimana saja. Anda tidak perlu mempersiapkan sebuah server sendiri. Dari segi keperluan bisnis, sudah buakn rahasia lagi, sudah banyak website commerce yang bermunculan. Alasannya karena dengan menggunakan internet maka pemasaran dan publikasi pasar semakin luas. Dapat mencakup antar kota, provinsi bahkan antar negara. Jadi&nbsp; web programming ini sangat menjanjikan untuk beberapa tahun kedepan.</p>\r\n<p>Dari prmbahasan di atas kita bisa mengambil kesimpulan bahwa menguasai web programming ini sangat di bermanfaat bagi anda dalam jangka panjang. Mamang banyak anggapan kalau belajar web programming itu susah, kalau anda berfikir seperti itu, maka anda tidak akan pernah bisa menguasai web programming. Jadi anda harus bisa memotifasi diri anda sendiri, jangan hanya melihat dari sudut pandang mengenai pembelajarannya, coba lihat dari sudut pandang lain, seperti prospek kerja yang akan bertahan dalam jangka panjang.</p>\r\n<p>Untuk bisa menjadi web programming profesional, anda harus belajar bahasa pemrograman, mampu menguasai dan mengaplikasikannya dengan baik. Belajar bahasa pemrograman akan menguntungkan juga bagi anda, karena belajar bahasa pemrograman merupakan pembiasaan dalam menuliskan baris-baris kode yang benar, pembiasaan dalam menggunakan penalaran yang tepat, dan pembiasaan dalam meggunakan perumusan.</p>\r\n<p>Beberapa manfaat belajar bahasa pemrograman agar bisa menjadi web programming profesional.</p>\r\n<ul>\r\n<li>Meningkatkan kemampuan berfikir secara logis &ndash; karena dalam dunia web programming kita akan dituntut untuk bahasa pemrograman dan itu membutuhkan logika agar suatu program bisa berjalan dengan baik.</li>\r\n<li>Mengembangkan cara berfikir dengan sistematis &ndash; selain dapat mempertimbangkan dengan tepat bagaimana anda akan menyelesaikan sebuah permasalahan. Ini adalah salah satu manfaat belajar bahasa pemrograman.</li>\r\n<li>Melatih teliti terhadap detail &ndash; dalam membangun sebuah program, sering kali seorang developer mengalami sebuah permasalahan, salah satunya adalah pemrograman yang di bangun eror saar diverifikasi atau di&nbsp;<em>build&nbsp;</em>permsalahan ini akan memerlukan ketelitian untuk mengatasinya. Nah dengan terbiasanya mencari masalah dalam menulis kode, anda akan terbiasa agar lebih teliti dalam menulis kode dalam membuat sebuah program. Hal ini tentu akan berimbas ke dalam aktivitas anda.</li>\r\n</ul>', 'Publish', 'Berita', 'Selamat datang di website Java Web Media', 'web-development-javawebmedia1.png', NULL, 0, '2021-04-24 08:05:28', '0000-00-00 00:00:00', '2021-04-24 02:55:58'),
(23, 1, 6, 'kursus-di-java-web-media', 'Kursus di Java Web Media', 'Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik', '<p>Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik</p>', 'Publish', 'Profil', 'Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik', 'logo-javawebmedia-square.png', 'fa fa-book', 0, '2021-04-24 11:59:48', '0000-00-00 00:00:00', '2021-04-24 04:59:48'),
(24, 1, 6, 'kursus-web-development', 'Kursus Web Development', 'Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', '<h2>Deskripsi ringkas</h2>\r\n<p>Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.</p>\r\n<hr />\r\n<p>Anda akan belajar membangun website&nbsp;<strong>profil perusahaan</strong>&nbsp;dengan menggunakan bootstrap, framework JavaScript,&nbsp;<strong><em>PHP framework</em></strong><em>&nbsp;<strong>Codeigniter / Laravel</strong></em>&nbsp;dan database MySQL.</p>\r\n<h2><a name=\"_Toc32320297\"></a>Materi kursus</h2>\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n<ul>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n<h2><a name=\"_Toc32320298\"></a>Tujuan Kursus</h2>\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n<ul>\r\n<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n<li>Aplikasi pendaftaran online sederhana</li>\r\n<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n<h2><a name=\"_Toc32320299\"></a>Urutan materi</h2>\r\n<ol>\r\n<li>Installasi Software pendukung</li>\r\n<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n<li>CRUD Kompleks dengan relasi database</li>\r\n<li>Laporan PDF dengan MPDF</li>\r\n<li>Security review atas aplikasi yang telah dibuat</li>\r\n<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n<h2><a name=\"_Toc32320300\"></a>Software yang digunakan</h2>\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>', 'Publish', 'Layanan', 'Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.', 'web-development-javawebmedia1.png', 'fa fa-globe', 1, '2021-04-24 12:06:07', '0000-00-00 00:00:00', '2024-05-28 08:21:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `building`
--

CREATE TABLE `building` (
  `id_building` bigint(20) NOT NULL,
  `id_pj` bigint(20) NOT NULL,
  `nama_building` varchar(255) NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `building`
--

INSERT INTO `building` (`id_building`, `id_pj`, `nama_building`, `tanggal_post`, `tanggal`) VALUES
(4, 11, 'H', '2024-05-30 13:18:39', '2024-05-30 13:18:39'),
(5, 10, 'J', '2024-05-30 13:18:48', '2024-05-30 13:18:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `classes`
--

CREATE TABLE `classes` (
  `id_classes` bigint(20) NOT NULL,
  `id_building` bigint(20) NOT NULL,
  `nama_classes` varchar(255) NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `classes`
--

INSERT INTO `classes` (`id_classes`, `id_building`, `nama_classes`, `tanggal_post`) VALUES
(1, 4, 'H 2.3', '2024-05-30 13:23:21'),
(2, 5, 'J 1.1', '2024-05-30 16:12:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_facilities`
--

CREATE TABLE `detail_facilities` (
  `id_detail_facilities` bigint(20) NOT NULL,
  `id_facilities` bigint(20) NOT NULL,
  `id_classes` bigint(20) NOT NULL,
  `nama_detail_facilities` varchar(255) NOT NULL,
  `quantity` int(80) NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal_post`, `tanggal`) VALUES
(3, 2, 1, 'Paket Harga Kursus Desain dan Programming Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Desain dan Programming Java Web Media 2020</p>', 'Daftar_Harga_Kursus_2020_v2.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:27'),
(4, 1, 1, 'Formulir Pendaftaran Siswa Kursus', 'Download', '<p>Formulir Pendaftaran Siswa Kursus</p>', 'FORMULIR_PENDAFTARAN_SISWA_KURSUS.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:10'),
(5, 2, 1, 'Paket Harga Kursus Statistik Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Statistik Java Web Media 2020</p>', 'KURSUS_STATISTIK.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:48'),
(6, 2, 1, 'Panduan Untuk Admin Engineering Utama aaa', 'Download', '<p>Panduan Untuk Admin Engineering Utama</p>', '010-Undangan-Workshop-Rekonsiliasi-Feb-2021.pdf', '', 0, '2021-04-23 20:06:25', '2021-04-24 01:27:48'),
(7, 2, 1, 'Panduan Untuk Admin Engineeringa', 'Panduan', '', 'SURAT-TUGAS-BOGOR-27-29-NOVEMBER-2019.pdf', '', 0, '2021-04-24 02:31:13', '2021-04-24 01:26:00'),
(8, 2, 1, 'Panduan Website', 'Download', '<p>Panduan Website</p>', 'RENCANA-JADWAL-MAS-FAISAL-BSM.pdf', '', 4, '2021-04-24 08:20:48', '2021-04-24 03:51:42'),
(9, 2, 1, 'judul ssss', 'Download', '<p>judul</p>', '0cfa3785a8c0b88326655d2d4c84e3f4.jpg', 'https://stackoverflow.com/questions/65511559/unable-to-insert-data-in-codeigniter-4', 0, '2024-05-30 08:24:10', '2024-05-30 02:36:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `facilities`
--

CREATE TABLE `facilities` (
  `id_facilities` bigint(20) NOT NULL,
  `type_facilities` varchar(255) NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `facilities`
--

INSERT INTO `facilities` (`id_facilities`, `type_facilities`, `tanggal_post`) VALUES
(2, 'Kursi', '2024-05-30 16:11:54'),
(3, 'Meja', '2024-05-30 16:12:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `status_text`, `tanggal_post`, `tanggal`) VALUES
(4, 5, 1, 'Kursus di Java Web Media', 'Homepage', '<div class=\"align-items-center d-none d-md-flex\">Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik. Anda dapat memilih program kursus sesuai kebutuhan.</div>\r\n<div class=\"d-flex align-items-center\">&nbsp;</div>', 'DESAIN-AWS-1980-x-1080.jpg', 'http://javawebmedia.com', NULL, 'Ya', NULL, '2021-04-24 05:46:34'),
(5, 5, 1, 'Kursus Codeigniter di Java Web Media', 'Homepage', '<p>Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.</p>', '5.jpg', 'https://javawebmedia.com', NULL, 'Ya', NULL, '2021-04-24 05:45:51'),
(7, 5, 1, 'Kursus Web Development Java Web Media', 'Galeri', '<p>Kursus Web Development Java Web Media</p>', 'web-development-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-13 00:52:02'),
(8, 5, 1, 'Web Application Java Web Media', 'Galeri', '<p>Web Application Java Web Media</p>', 'web-application-pendaftaran-online-javawebmedia1.jpg', '', NULL, 'Ya', NULL, '2020-02-13 00:52:18'),
(9, 5, 1, 'Kursus Statistik di Java Web Media', 'Galeri', '<p>Kursus Statistik di Java Web Media</p>', 'instagram-kursus-statistik-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-13 00:53:55'),
(10, 5, 1, 'Web Development Java Web Media', 'Galeri', '<p>Web Development Java Web Media</p>', 'website-perusahaan-company-profile-web-javawebmedia12.jpg', '', NULL, 'Ya', NULL, '2020-02-13 00:54:28'),
(12, 6, 1, 'Festival Kabupaten Lestari 2019', 'Galeri', '<p>Festival Kabupaten Lestari 2019</p>', '1.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 02:45:16', '2021-04-24 05:27:53'),
(13, 6, 1, 'Welcome to Java Web Media', 'Galeri', '<p>Welcome to Java Web Media</p>', 'Kursus-Banner-02.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 08:13:13', '2021-04-24 01:13:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 1, 'web-design', 'Web Design', 1, 0, '2021-04-20 22:20:49'),
(2, 1, 'berita', 'Berita', 2, 0, '2021-04-20 22:20:57'),
(3, 1, 'java-web-media', 'Java Web Media', 3, 0, '2021-04-20 22:21:06'),
(4, 1, 'updates', 'Updates', 4, 0, '2021-04-20 22:26:59'),
(5, 1, 'web-programming', 'Web Programming', 5, 8, '2021-05-03 01:17:08'),
(6, 1, 'kursus-web', 'Kursus Web', 2, 3, '2021-04-24 23:10:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `id_user`, `slug_kategori_download`, `nama_kategori_download`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'formulir-pendaftaran', 'Formulir Pendaftaran', 1, 0, '2021-04-21 00:37:58'),
(2, 1, 'promosi-java-web-media-2021', 'Promosi Java Web Media 2021', 2, 0, '2021-04-21 01:08:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `id_user`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`, `hits`, `tanggal`) VALUES
(4, 0, 'kegiatan', 'Kegiatan', 4, 0, '2021-04-21 00:38:46'),
(5, 0, 'banner-website', 'Banner Website', 4, 0, '2021-04-21 00:38:46'),
(6, 1, 'family-gathering', 'Family gathering', 2, 0, '2021-04-21 00:40:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `id_user`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1, 0, '2021-04-21 00:44:24'),
(2, 0, 'pejabat-struktural', 'Pejabat Struktural', 2, 0, '2021-04-21 00:44:24'),
(3, 1, 'team-inti', 'Team Inti', 2, 0, '2021-04-21 01:54:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `id_user`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `youtube`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_youtube`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `tanggal`) VALUES
(1, 1, 'Java Web Media', 'JWM', 'Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik', '<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>', 'Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik', 'Depok Town Square Lantai 2 Unit SS 5-7', 'javawebmedia@gmail.com', 'javawebmedia@gmail.com', '<p><strong>Java Web Media</strong><br />MALL DEPOK TOWN SQUARE<br />Lantai 2 Unit SS No. 5-7<br />(Samping Gerai Samsung)<br />Jl. Margonda Raya No 1<br />Kemiri Muka, Kecamatan Beji, Kota Depok, Jawa Barat 16424<br />Telepon: 085715100485<br />Whatsapp: +6281210697841<br />Email: contact@javawebmedia.co.id</p>', '+6285715100485', '+6281210697841', 'logo-java-web-media-01-01.png', 'logo-javawebmedia-square.png', 'Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik\r\n', 'adada', 'https://www.facebook.com/javawebmedia', 'http://twitter.com/javawebmedia', 'https://instagram.com/javawebmedia', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', 'Java Web Media', 'Java Web Media', 'Java Web Media', 'Java Web Media', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.1145209004862!2d106.82752101476999!3d-6.379215695384046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ec0869e31b4f%3A0xaa40278d69385917!2sHotel+Bumi+Wiyata!5e0!3m2!1sid!2sid!4v1532643481549\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', '2021-04-24 04:36:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_reporting` bigint(20) NOT NULL,
  `id_category_fa` bigint(20) NOT NULL,
  `id_facilities` bigint(11) NOT NULL,
  `id_building` bigint(11) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_state` int(11) NOT NULL,
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_reporting`, `id_category_fa`, `id_facilities`, `id_building`, `id_user`, `id_state`, `description`, `tanggal_post`, `tanggal`) VALUES
(2, 0, 1, 0, 0, 0, '0', '0000-00-00 00:00:00', '2021-04-24 05:14:19'),
(3, 0, 1, 0, 0, 0, '0', '0000-00-00 00:00:00', '2021-04-24 05:21:38'),
(5, 0, 1, 0, 0, 0, '0', '2021-04-24 00:34:12', '2021-04-24 05:21:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-06-11-054559', 'App\\Database\\Migrations\\AddStudent', 'default', 'App', 1718085357, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pictures`
--

CREATE TABLE `pictures` (
  `id_pictures` bigint(20) NOT NULL,
  `id_report` bigint(20) NOT NULL,
  `nama_pictures` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lon` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pj`
--

CREATE TABLE `pj` (
  `id_pj` bigint(20) NOT NULL,
  `nama_pj` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pj`
--

INSERT INTO `pj` (`id_pj`, `nama_pj`, `contact`, `tanggal_post`, `tanggal`) VALUES
(10, 'kap', '12', '2024-05-29 09:13:15', '2024-05-29 09:13:15'),
(11, 'qaaqab', '123', '2024-05-30 01:11:18', '2024-05-30 01:42:44'),
(12, 'qaaqa', '081244521981', '2024-05-30 01:43:00', '2024-05-30 01:43:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `id_report` bigint(20) NOT NULL,
  `id_detail_facilities` bigint(20) NOT NULL,
  `id_building` bigint(20) NOT NULL,
  `id_classes` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `id_status` bigint(20) NOT NULL,
  `description` varchar(300) NOT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `response`
--

CREATE TABLE `response` (
  `id_response` bigint(20) NOT NULL,
  `id_report` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `content` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `nama`, `alamat`, `telepon`, `website`, `email`, `jabatan`, `keahlian`, `gambar`, `status_staff`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(9, 1, 3, 'Andoyo Cakep', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', 'https://sidatablkbogorkab.com', 'lalu-kekah@bkkbn.go.id', 'Direktur', 'ada', '6.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-24 01:51:22'),
(10, 1, 3, 'Andoyo Cakep', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://javawebmedia.com', 'javawebmedia@gmail.com', 'Graphic Designer', '', '4.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-24 01:50:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` bigint(20) NOT NULL,
  `nama_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `nama_status`) VALUES
(1, 'Laporan Baru'),
(2, 'Sedang Diproses'),
(3, 'Ditolak'),
(4, 'Selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `email`, `username`, `password`, `token`, `created_at`, `updated_at`) VALUES
(1, 'aaa@gmail.com', 'aku', '$2y$10$8Ol6O2jbk8oZQ4Plz5YYGethmaKoSVolZ/3JhUIuf6Z/Ghjxml.Qa', '', '2024-06-11 08:38:57', '2024-06-11 08:38:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(1, 'Admin Kasi', 'admin@gmail.com', 'adminkasi', '10727fff458abcffe2d4077af4e87b0658dc996d', 'Admin', 'icon-educamedia.png', '2019-10-12 15:50:21', '2024-05-23 06:26:09'),
(2, 'Rayyan', 'andoyoandoyo@gmail.com', 'rayyan', 'acc5d43e0936dbf3f27b906891aaafdf9ede4508', 'User', NULL, '2019-04-24 17:21:18', '2019-04-24 10:21:18'),
(3, 'Kheira Alexandrina', 'andoyoandoyo@gmail.com', 'diana', '6a90af129eeefc2f6e6a38746a2b33cb04c2c632', 'User', NULL, '2019-10-12 14:10:05', '2021-04-21 01:07:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_logs`
--

CREATE TABLE `user_logs` (
  `id_user_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_logs`
--

INSERT INTO `user_logs` (`id_user_log`, `id_user`, `ip_address`, `username`, `url`, `tanggal_updates`) VALUES
(1, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2021-05-03 01:19:34'),
(2, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 06:23:08'),
(3, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 06:24:11'),
(4, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/client', '2024-05-23 06:24:13'),
(5, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/user', '2024-05-23 06:24:15'),
(6, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/user/edit/1', '2024-05-23 06:24:19'),
(7, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/user/edit/1', '2024-05-23 06:24:48'),
(8, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/user', '2024-05-23 06:24:48'),
(9, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/akun', '2024-05-23 06:26:15'),
(10, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 06:26:17'),
(11, 1, '::1', 'javawebmedia', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 06:26:19'),
(12, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 06:26:31'),
(13, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:27:20'),
(14, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 06:27:22'),
(15, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:27:26'),
(16, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/user', '2024-05-23 06:27:28'),
(17, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 06:35:42'),
(18, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:37:19'),
(19, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:48:54'),
(20, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:49:02'),
(21, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:49:20'),
(22, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:49:26'),
(23, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:50:07'),
(24, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:51:28'),
(25, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:51:41'),
(26, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:51:43'),
(27, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:52:20'),
(28, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:53:24'),
(29, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:54:02'),
(30, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:54:19'),
(31, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 06:54:23'),
(32, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:54:26'),
(33, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:54:42'),
(34, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:55:14'),
(35, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:55:16'),
(36, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:55:46'),
(37, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:56:01'),
(38, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:56:02'),
(39, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:56:04'),
(40, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 06:56:07'),
(41, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 08:02:38'),
(42, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:03:07'),
(43, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 08:03:12'),
(44, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 08:07:40'),
(45, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 08:08:19'),
(46, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-23 08:08:22'),
(47, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:08:25'),
(48, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:09:07'),
(49, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:09:22'),
(50, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:09:42'),
(51, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:09:53'),
(52, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:10:04'),
(53, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:11:05'),
(54, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:11:16'),
(55, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 08:11:27'),
(56, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 08:12:38'),
(57, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 08:13:02'),
(58, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 08:13:14'),
(59, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-23 08:13:26'),
(60, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:24:16'),
(61, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/video', '2024-05-23 08:31:44'),
(62, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 04:55:28'),
(63, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 04:56:11'),
(64, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 04:57:15'),
(65, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 04:57:17'),
(66, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:02:03'),
(67, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:02:41'),
(68, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:03:18'),
(69, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:03:41'),
(70, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:05:01'),
(71, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:05:16'),
(72, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:05:21'),
(73, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:05:29'),
(74, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:11:23'),
(75, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:11:25'),
(76, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:11:35'),
(77, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:11:35'),
(78, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 05:12:22'),
(79, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 05:13:24'),
(80, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 05:13:43'),
(81, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:13:47'),
(82, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 05:13:51'),
(83, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/user', '2024-05-24 05:14:12'),
(84, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-24 05:14:14'),
(85, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/user', '2024-05-24 05:14:17'),
(86, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-24 05:14:18'),
(87, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-24 05:19:07'),
(88, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:19:09'),
(89, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-24 05:19:14'),
(90, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-24 05:19:15'),
(91, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-25 02:46:49'),
(92, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 02:46:54'),
(93, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 02:47:13'),
(94, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 02:47:14'),
(95, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/5', '2024-05-25 02:47:27'),
(96, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/5', '2024-05-25 02:47:35'),
(97, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 02:47:35'),
(98, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/5', '2024-05-25 02:48:12'),
(99, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/5', '2024-05-25 02:48:16'),
(100, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 02:48:16'),
(101, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 02:51:05'),
(102, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/5', '2024-05-25 02:51:10'),
(103, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 02:51:13'),
(104, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/user', '2024-05-25 02:52:35'),
(105, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-25 02:52:55'),
(106, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 03:21:20'),
(107, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 03:21:38'),
(108, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 03:21:38'),
(109, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 03:23:19'),
(110, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 03:23:19'),
(111, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-25 05:03:33'),
(112, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita/tambah', '2024-05-25 05:03:37'),
(113, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 05:05:42'),
(114, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-25 05:12:41'),
(115, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-25 07:08:51'),
(116, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-25 07:10:20'),
(117, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-25 07:12:55'),
(118, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-25 07:13:56'),
(119, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-25 08:29:56'),
(120, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-28 07:57:00'),
(121, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-28 07:57:03'),
(122, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/delete/6', '2024-05-28 07:57:10'),
(123, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-28 07:57:11'),
(124, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-28 07:57:20'),
(125, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-28 07:57:20'),
(126, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/8', '2024-05-28 07:57:30'),
(127, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/8', '2024-05-28 07:57:33'),
(128, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-28 07:57:33'),
(129, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-28 08:20:40'),
(130, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/berita', '2024-05-28 08:24:32'),
(131, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-28 08:27:03'),
(132, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-28 08:42:56'),
(133, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-28 08:45:45'),
(134, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-28 08:52:17'),
(135, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-28 08:58:03'),
(136, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/edit/8', '2024-05-28 08:58:05'),
(137, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-28 09:16:11'),
(138, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-28 09:16:16'),
(139, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-28 09:30:55'),
(140, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-28 09:30:58'),
(141, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-28 09:45:05'),
(142, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-28 09:46:35'),
(143, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/8', '2024-05-28 09:48:36'),
(144, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-28 09:48:40'),
(145, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-28 09:48:46'),
(146, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri', '2024-05-28 09:58:44'),
(147, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-28 09:59:08'),
(148, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-29 04:14:19'),
(149, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:14:27'),
(150, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 04:14:31'),
(151, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri', '2024-05-29 04:28:41'),
(152, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:50:42'),
(153, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:50:49'),
(154, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:52:00'),
(155, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:52:40'),
(156, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:52:45'),
(157, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:53:03'),
(158, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:53:51'),
(159, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:53:56'),
(160, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:53:56'),
(161, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/delete/9', '2024-05-29 04:55:41'),
(162, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 04:55:41'),
(163, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-29 07:28:55'),
(164, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 07:29:01'),
(165, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 07:35:21'),
(166, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 07:35:26'),
(167, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 07:54:56'),
(168, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri', '2024-05-29 07:57:04'),
(169, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 07:57:12'),
(170, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri', '2024-05-29 07:58:02'),
(171, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri/tambah', '2024-05-29 07:58:06'),
(172, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-29 07:58:22'),
(173, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-29 07:58:25'),
(174, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 07:58:31'),
(175, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 07:58:32'),
(176, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 07:58:34'),
(177, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:00:01'),
(178, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:00:46'),
(179, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:01:10'),
(180, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:01:33'),
(181, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:01:35'),
(182, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:01:42'),
(183, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri/tambah', '2024-05-29 08:26:36'),
(184, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:27:19'),
(185, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:27:33'),
(186, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:27:35'),
(187, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:30:32'),
(188, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:31:48'),
(189, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:31:49'),
(190, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:31:57'),
(191, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:32:30'),
(192, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:32:49'),
(193, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:32:50'),
(194, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:35:34'),
(195, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:35:35'),
(196, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 08:35:44'),
(197, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:35:45'),
(198, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:36:31'),
(199, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:37:52'),
(200, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 08:38:29'),
(201, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 09:12:37'),
(202, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 09:13:15'),
(203, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 09:13:15'),
(204, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:14:23'),
(205, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 09:14:25'),
(206, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:14:42'),
(207, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 09:14:47'),
(208, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:14:53'),
(209, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:21:57'),
(210, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 09:22:01'),
(211, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:22:02'),
(212, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:27:28'),
(213, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 09:27:29'),
(214, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:27:38'),
(215, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:29:27'),
(216, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:29:57'),
(217, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 09:29:59'),
(218, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:30:05'),
(219, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 09:31:53'),
(220, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:31:58'),
(221, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:55:00'),
(222, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 09:55:09'),
(223, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:55:21'),
(224, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/delete/1', '2024-05-29 09:55:25'),
(225, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 09:55:25'),
(226, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 10:10:07'),
(227, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-29 10:10:26'),
(228, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 10:10:31'),
(229, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-29 10:11:51'),
(230, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-29 10:12:16'),
(231, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-30 01:03:44'),
(232, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 01:03:49'),
(233, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 01:03:52'),
(234, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 01:03:58'),
(235, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 01:08:47'),
(236, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 01:08:49'),
(237, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 01:08:54'),
(238, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 01:11:06'),
(239, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:11:09'),
(240, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:11:18'),
(241, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:11:18'),
(242, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 01:11:23'),
(243, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 01:11:25'),
(244, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 01:11:32'),
(245, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/client', '2024-05-30 01:22:19'),
(246, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri', '2024-05-30 01:22:26'),
(247, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri/tambah', '2024-05-30 01:22:31'),
(248, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri/tambah', '2024-05-30 01:23:28'),
(249, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri/tambah', '2024-05-30 01:23:33'),
(250, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/galeri', '2024-05-30 01:23:37'),
(251, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-30 01:23:39'),
(252, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-30 01:23:43'),
(253, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-30 01:24:10'),
(254, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-30 01:24:10'),
(255, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:38:30'),
(256, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:42:29'),
(257, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/11', '2024-05-30 01:42:37'),
(258, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/11', '2024-05-30 01:42:44'),
(259, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:42:44'),
(260, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:43:00'),
(261, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 01:43:01'),
(262, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-30 01:45:18'),
(263, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-30 01:45:21'),
(264, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/tambah', '2024-05-30 02:02:11'),
(265, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:02:14'),
(266, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:02:15'),
(267, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:02:22'),
(268, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:27:12'),
(269, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 02:27:15'),
(270, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:27:17'),
(271, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:27:18'),
(272, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:27:24'),
(273, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:27:29'),
(274, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:27:45'),
(275, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:32:35'),
(276, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:32:35'),
(277, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:32:38'),
(278, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 02:32:47'),
(279, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:32:47'),
(280, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/delete/2', '2024-05-30 02:34:14'),
(281, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:34:14'),
(282, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:34:17'),
(283, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:34:46'),
(284, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:35:18'),
(285, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:35:23'),
(286, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-30 02:35:43'),
(287, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/edit/9', '2024-05-30 02:35:47'),
(288, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/edit/9', '2024-05-30 02:36:03'),
(289, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download/edit/9', '2024-05-30 02:36:21'),
(290, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/download', '2024-05-30 02:36:21'),
(291, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:44:08'),
(292, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:44:11'),
(293, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:44:21'),
(294, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 02:44:24'),
(295, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/12', '2024-05-30 02:44:26'),
(296, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:44:28'),
(297, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:44:30'),
(298, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:44:33'),
(299, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:46:39'),
(300, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 02:46:41'),
(301, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj/edit/11', '2024-05-30 02:46:43'),
(302, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:46:45'),
(303, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:46:47'),
(304, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:46:49'),
(305, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:46:54'),
(306, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:46:59'),
(307, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:47:38'),
(308, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:47:46'),
(309, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:47:46'),
(310, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:47:50'),
(311, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:47:52'),
(312, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:47:53'),
(313, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:47:56'),
(314, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/edit/3', '2024-05-30 02:47:59'),
(315, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:47:59'),
(316, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/delete/3', '2024-05-30 02:48:03'),
(317, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 02:48:03'),
(318, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-05-30 13:18:12'),
(319, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 13:18:21'),
(320, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 13:18:25'),
(321, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 13:18:27'),
(322, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 13:18:39'),
(323, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 13:18:39'),
(324, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 13:18:43'),
(325, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building/tambah', '2024-05-30 13:18:48'),
(326, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 13:18:48'),
(327, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 13:18:52'),
(328, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 13:19:00'),
(329, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 13:19:20'),
(330, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 13:19:31'),
(331, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 13:21:55'),
(332, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 13:21:57'),
(333, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 13:22:04'),
(334, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 13:23:21'),
(335, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 13:23:22'),
(336, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 13:23:58'),
(337, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 13:25:00'),
(338, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 13:25:15'),
(339, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 13:25:18'),
(340, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 13:25:20'),
(341, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 14:10:43'),
(342, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 15:22:26'),
(343, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 15:26:03'),
(344, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 15:26:18'),
(345, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 15:26:21'),
(346, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 15:27:27'),
(347, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 15:27:28'),
(348, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities/edit/1', '2024-05-30 15:27:32'),
(349, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities/edit/1', '2024-05-30 15:28:00'),
(350, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 15:28:05'),
(351, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 15:28:07'),
(352, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities/edit/1', '2024-05-30 15:28:09'),
(353, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities/edit/1', '2024-05-30 15:28:13'),
(354, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 15:28:13'),
(355, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities/delete/1', '2024-05-30 15:28:19'),
(356, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 15:28:19'),
(357, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 16:11:01'),
(358, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities', '2024-05-30 16:11:05'),
(359, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities', '2024-05-30 16:11:42'),
(360, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 16:11:48'),
(361, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 16:11:54'),
(362, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 16:11:55'),
(363, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 16:12:03'),
(364, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 16:12:03'),
(365, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 16:12:06'),
(366, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 16:12:09'),
(367, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes/tambah', '2024-05-30 16:12:15'),
(368, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 16:12:15'),
(369, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/building', '2024-05-30 16:12:29'),
(370, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/classes', '2024-05-30 16:12:31'),
(371, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/pj', '2024-05-30 16:12:32'),
(372, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/facilities', '2024-05-30 16:12:47'),
(373, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities', '2024-05-30 16:12:54'),
(374, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities/tambah', '2024-05-30 16:12:57'),
(375, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities/tambah', '2024-05-30 16:13:32'),
(376, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities', '2024-05-30 16:13:32'),
(377, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities/edit/1', '2024-05-30 16:13:37'),
(378, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities/edit/1', '2024-05-30 16:13:44'),
(379, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities', '2024-05-30 16:13:44'),
(380, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities/delete/1', '2024-05-30 16:13:50'),
(381, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/detail_facilities', '2024-05-30 16:13:50'),
(382, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-06-02 13:41:31'),
(383, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-06-11 05:00:13'),
(384, 1, '::1', 'adminkasi', 'http://localhost/kumandra/admin/dasbor', '2024-06-13 14:01:27');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id_building`);

--
-- Indeks untuk tabel `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id_classes`);

--
-- Indeks untuk tabel `detail_facilities`
--
ALTER TABLE `detail_facilities`
  ADD PRIMARY KEY (`id_detail_facilities`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id_facilities`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indeks untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indeks untuk tabel `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_reporting`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id_pictures`);

--
-- Indeks untuk tabel `pj`
--
ALTER TABLE `pj`
  ADD PRIMARY KEY (`id_pj`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_report`);

--
-- Indeks untuk tabel `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id_response`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id_user_log`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `building`
--
ALTER TABLE `building`
  MODIFY `id_building` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `classes`
--
ALTER TABLE `classes`
  MODIFY `id_classes` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `detail_facilities`
--
ALTER TABLE `detail_facilities`
  MODIFY `id_detail_facilities` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id_facilities` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_reporting` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id_pictures` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pj`
--
ALTER TABLE `pj`
  MODIFY `id_pj` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `id_report` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `response`
--
ALTER TABLE `response`
  MODIFY `id_response` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id_user_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=385;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
