-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 29 Mei 2016 pada 20.24
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forummasakini`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `commenter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `commenter`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 34, 'newgreentea', 'newgreentea@gmail.com', 'yang juara biasa aja. beruntung doang.', '2016-05-29 16:20:04', '2016-05-29 16:20:04'),
(3, 35, 'edo', 'edo@gmail.com', 'seru banget ini pertandingannya min. buat highlightnya dong', '2016-05-29 09:14:20', '2016-05-29 09:14:20'),
(4, 35, 'bento', 'bento@gmail.com', 'good game well played madrid!', '2016-05-29 11:23:15', '2016-05-29 11:23:15'),
(5, 31, 'sing', 'singing@joni.com', 'tahun depan bisa juara nih rio', '2016-05-29 15:56:32', '2016-05-29 15:56:32'),
(6, 34, 'irfan', 'irfan@gmail.com', 'wow menang tipis 5 poin', '2016-05-29 16:53:52', '2016-05-29 16:53:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_05_06_111058_buat_table_post', 1),
('2015_05_06_111129_buat_table_comments', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `read_more` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment_count` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `read_more`, `content`, `image`, `comment_count`, `created_at`, `updated_at`) VALUES
(35, 'Real Madrid Juara Liga Champions 2015/2016', 'Pada awal pertandingan, Madrid memegang kendali permainan. Mereka bahkan unggul saat laga baru berjalan 15 menit. Berawal dari tendangan bebas Toni Kroos, bola kemudian disundul oleh Gareth Bale. Si kulit bundar akhirnya', 'Pada awal pertandingan, Madrid memegang kendali permainan. Mereka bahkan unggul saat laga baru berjalan 15 menit. Berawal dari tendangan bebas Toni Kroos, bola kemudian disundul oleh Gareth Bale. Si kulit bundar akhirnya masuk ke dalam gawang usai mengenai kaki Sergio Ramos.\r\n\r\nMemasuki menit 35 barulah Atletico lancar melakukan serangan. Tapi tim asuhan Diego Simeone tak bisa memberi ancaman serius ke gawang Madrid yang dikawal Keylor Navas. Lini belakang Los Blancos masih terlalu tangguh untuk dirobohkan Fernando Torres dan kawan-kawan.\r\n\r\nPada awal babak kedua, Pepe melakukan kesalahan. Ia dianggap melanggar Torres di area kotak penalti. Wasit langsung menunjuk titik putih dan Antoine Griezmann dipercaya sebagai eksekutor. Namun sayang, pemain kebangsaan Prancis itu tak bisa menyamakan kedudukan. Bola yang disepaknya membentur mistar gawang.\r\n\r\nKejadian menarik juga terekam di menit 52. Bek kanan Madrid, Daniel Carvajal menangis saat berjalan keluar lapangan. Ia mengalami cedera dan perannya digantikan oleh Danilo.\r\n\r\nPada babak kedua ini, terjadi banyak peluang. Madrid sempat mengancam lewat aksi Karim Benzema, Garteh Bale dan Cristiano Ronaldo. Di sisi lain Atletico membalasnya melalui Griezmann, Torres dan juga Koke.\r\n\r\nPeruangan keras Atletico akhirnya membuahkan hasil di menit 79. Umpan silang Juanfran berhasil dimaksimalkan oleh Yannick Ferreira Carrasco. Pemain yang masuk di awal babak kedua ini lolos dari kawalan bek Madrid. Tanpa ampun ia langsung mengoyak gawang Madrid untuk mengubah skor jadi 1-1.\r\n\r\nSelebrasi unik langsung diperlihatkan sang pemain. Ia berlari ke pinggir lapangan untuk mencium bibir seorang wanita yang diduga sebagai pasangan hidupnya.\r\n\r\nKedudukan imbang bertahan hingga akhir babak kedua. Karena belum ada pemenang, laga dilanjutkan ke masa extra time.\r\n\r\nDi babak tambahan waktu, tak banyak peluang yang tercipta. Para pemain dari kedua kubu terlihat kelelahan dan hal tersebut sangat berpengaruh pada alur pertandingan.\r\n\r\nSetelah melalui 2x15 menit, kedudukan imbang tetap terpampang di papan skor. Laga akhirnya berlanjut ke drama adu penalti.\r\n\r\nDi fase inilah, dewi keberuntungan menjauhi Atletico. Mereka hanya bisa mencetak tiga gol lewat Antoine Griezmann, Gabi dan Saul Niguez. Sementara Juanfran yang jadi eksekutor keempat gagal menuntaskan tugasnya. Bola mengenai tiang gawang sebelah kanan.\r\n\r\nDi sisi lain, lima algojo Madrid sukses menjebol gawang lawan. Sepakan Lucas Vazquez, Marcelo, Gareth Bale, Sergio Ramos dan Cristiano Ronaldo berhasil mengecoh kiper Atletico.\r\n\r\nKemenangan ini menjadikan Madrid sebagai penguasa di benua Eropa sebab mereka sudah memiliki 11 trofi Liga Champions. Khusus untuk Zinedine Zidane, pelatih Madrid itu juga mencatatkan prestasi gemilang. Hanya dalam waktu enam bulan, ia bisa membawa timnya meraih prestasi tertinggi di benua biru.', 'uploads/99012.jpg', 2, '2016-05-29 00:21:28', '2016-05-29 08:37:26'),
(34, 'CLS Juarai IBL 2016', 'Jakarta - CLS Knights Surabaya berhasil menjadi juara kompetisi Indonesian Basketball League 2016. Di babak final, mereka mengalahkan Pelita Jaya EMP Jakarta.\r\n\r\nDi pertandingan yang berlangsung di Britama Arena, Minggu ', 'Jakarta - CLS Knights Surabaya berhasil menjadi juara kompetisi Indonesian Basketball League 2016. Di babak final, mereka mengalahkan Pelita Jaya EMP Jakarta.\r\n\r\nDi pertandingan yang berlangsung di Britama Arena, Minggu (29/5/2016) malam WIB, CLS mengawali kuarter pertama dengan amat bagus. Mereka unggul 17-8.\r\n\r\nPertandingan final seakan bakal berlangsung antiklimaks karena di kuarter kedua CLS mampu menjauh dengan skor 40-22.\r\n\r\nTapi, Pelita lalu bangkit di kuarter ketiga. Mereka menggalang defense dengan catatan 14 kali kemasukkan, sembari 19 kali mencetak skor. CLS masih unggul 54-41.\r\n\r\nDi kuarter pamungkas, Pelita Jaya terus berupaya keras untuk mengejar ketertinggalan. Mereka bisa menambah 20 poin lagi, sembari menahan laju angka CLS di angka 13 poin. Saat pertandingan selesai klub asal kota pahlawan itu menang dengan skor akhir 67-61.\r\n\r\nDengan kemenangan ini, CLS pun menjadi juara OBL dengan skor 2-1. Pertandingan final IBL menggunakan format the best of three. Di laga pertama, Pelita Jaya menang dengan skor 77-70. Sementara di laga kedua, CLS yang berhasil menang dengan skor 59-54.', 'uploads/55693.jpg', 2, '2016-05-29 15:41:00', '2016-05-29 15:41:00'),
(32, 'Hendra Setiawan dkk. Siap Tempur di Indonesia Terbuka', 'Jakarta - Para pemain Indonesia siap tempur dalam Indonesia Terbuka Super Series Premier 2016. Menjadi pekerjaan besar bagi PBSI untuk mendapatkan gelar juara di Istora.\r\n\r\nIndonesia Terbuka akan dihelat di Istora, Senay', 'Jakarta - Para pemain Indonesia siap tempur dalam Indonesia Terbuka Super Series Premier 2016. Menjadi pekerjaan besar bagi PBSI untuk mendapatkan gelar juara di Istora.\r\n\r\nIndonesia Terbuka akan dihelat di Istora, Senayan, Jakarta, mulai 30 Mei sampai 5 Juni. Berkaca hasil dua tahun terakhir, tuan rumah malah nirgelar.\r\n\r\nTerakhir kali titel didapatkan di tahun 2013. Adalah Hendra Setiawan/Mohammad Ahsan yang menjadi juaranya.\r\n\r\nKekuatan Indonesia relatif tak berubah dalam tiga tahun terakhir. Pasukan ''Merah Putih'' juga masih bertumpu kepada Hendra/Ahsan, Tontowi Ahmad/Liliyana Natsir, dan Greysia Polii/Nitya Krishinda Maheswari. Harapan juga diberikan kepada Praveen Jordan/Debby Susanto, setelah menjadi juara All England.\r\n\r\n"Saya rasa waktu satu minggu untuk bersitirahat (setelah Piala Thomas dan Uber) sudah cukup bagi para atlet," kata Ricky Soebagdja, manajer tim pelatnas ke Indonesia Terbuka, dalam konferensi pers di Hotel Sultan, Minggu (29/5/2016).\r\n\r\n"Seluruh atlet yang turun dalam turnamen ini sudah dalam keadaan 100 persen. Karena itulah kami memasang target tiga gelar juara," imbuh Ricky.\r\n\r\nRicky menyebut pelatnas menurunkan 44 pemain di turnamen berhadiah total USD 900 ribu tersebut. Sebagian pemain pelatnas harus melewati babak kualifikasi, sebagian lain sudah otomatis ke babak utama.\r\n\r\nFirman Abdul Kholik adalah salah satu pemain pelatnas tunggal putra yang harus merangkak lewat babak kualfikasi. Dia akan menghadapi Zi Liang Derek Wong dari Singapura. Di sektor tunggal putri, di antaranya Gregoria Mariska Tunjung yang akan menghadapi Jauza Fadhila Sugiarto di babak pertama kualifikasi.\r\n\r\nSementara itu mereka yang langsung tampil di babak utama di antaranya Hendra/Ahsan. Sebagai unggulan kedua, mereka akan menghadapi Or Chin Chung/Tang Chun Man dari Hong Kong.\r\n\r\n"Untuk pemain lain (di luar yang dijagokan juara) Indonesia Terbuka ini bertujuan untuk menambah jam terbang dan menaikkan peringkat," jelas Ricky. ', 'uploads/28756.jpg', 0, '2016-05-29 12:10:00', '2016-05-29 12:10:00'),
(31, 'Hamilton Menangi GP Monako, Rio Finis Urutan 15', 'Monako - Driver tim Mercedes, Lewis Hamilton, berhasil menjadi juara seri GP Monako. Sementara itu, pebalap Manor asal Indonesia, Rio Haryanto, finis di posisi 15.\r\n\r\nBalapan di Circuit de Monaco, Minggu (29/5/2016), dim', 'Monako - Driver tim Mercedes, Lewis Hamilton, berhasil menjadi juara seri GP Monako. Sementara itu, pebalap Manor asal Indonesia, Rio Haryanto, finis di posisi 15.\r\n\r\nBalapan di Circuit de Monaco, Minggu (29/5/2016), dimulai dengan lintasan basah karena guyuran hujan. Start pun harus dilakoni di belakang safety car.\r\n\r\nSetelah melahap sebanyak 78 putaran, Hamilton menjadi yang pertama menyentuh garis finis dengan catatan waktu satu jam 59 menit 29,133 detik. Driver Red Bull, Daniel Ricciardo, ada di posisi kedua dengan catatan 7,252 detik lebih lambat.\r\n\r\nMelengkapi podium ada Sergio Perez dengan catatan 13,825 detik lebih lambat dari Hamilton. Berturut-turut ada di posisi empat dan lima ada Sebastian Vettel dan Fernando Alonso.\r\n\r\nRio, kendati mencapai finis terbaiknya, sesungguhnya menjadi pebalap terakhir yang menyentuh garis finis, karena tujuh pebalap lain tak mampu menyelesaikan lomba.\r\n\r\nBagi Hamilton, ini merupakan kemenangan pertama di musim balap 2016. Dia kini menempati posisi dua klasemen pebalap dengan raihan angka sebanyak 82 poin. Pebalap Mercedes lainnya, Nico Rosberg, yang menjadi pemuncak klasemen pebalap dengan catatan 106 poin.\r\n\r\nJalannya Balapan\r\n\r\nBalapan GP Monako dimulai di belakang safety car. Sebabnya, lintasan balapan masih amat basah akibat hujan deras yang turun di Monako.\r\n\r\nBalapan baru berjalan normal saat lap ketujuh. Safety car sudah ditarik keluar. Tapi, belum ada satu lap balapan berjalan, ada kecelakaan hingga balapan dalam situasi virtual safety car.\r\n\r\nKecelakaan yang menimpa driver Renault, Jolyon Palmer, menjadi sebabnya. Palmer menabrak dinding pembatas, hingga pecahan mobilnya harus dibersihkan dari lintasan.\r\n\r\nDengan adanya sejumlah insiden, pebalap Indonesia, Haryanto, mampu memperbaiki posisi. Di lap delapan, dia ada di posisi 15.\r\n\r\nPebalap Ferrari, Kimi Raikkonen, mengalami kecelakaan di lap kedelapan. Dia menghantam dinding yang mengakibatkan bagian depan mobilnya hancur.\r\n\r\nVettel mengganti ban di lap 14. Saat kembali ke lintasan, dia ada di posisi 11. Hingga lap 15, Ricciardo masih memimpin balapan. Dia unggul sekitar 11 detik dari lawan-lawannya.\r\n\r\nPosisi Rio terus melorot hingga delapan lap setelah menempati posisi 15. Dia ada di posisi 18 saat balapan berjalan sebanyak 16 putaran. Sementara rekan setimnya, Pascal Wehrlein ada di posisi 12.\r\n\r\nInsiden yang antara Kevin Magnussen dan Daniil Kvyat membawa berkah untuk Rio. Dia pun naik ke posisi 17 di lap 21.\r\n\r\nHamilton untuk pertama kalinya menjadi pemimpin balapan di lap 24. Ricciardo melakukan pit, hingga pebalap asal Inggris itu bisa menjadi pebalap terdepan. Max Verstappen yang mengawal balapan dari posisi 21, sudah berada di peringkat 10 saat lap 25.\r\n\r\nSatu strategi pit yang tak mulus membuat Ricciardo kehilangan posisi pertama balapan di lap 32. Tim Red Bull masih belum siap menyediakan ban cadangan, hingga dia harus masuk ke lintasan di posisi dua.\r\n\r\nPenampilan impresif Verstappen terhenti di lap 35. Mobilnya menghantam pembatas hingga dia gagal melanjutkan balapan.\r\n\r\nPertarungan antara Hamilton dan Ricciardo di posisi dua pebalap terdepan menjadi suguhan utama balapan di Monako kali ini. Hingga lap 53, Hamilton masih ada di posisi terdepan.\r\n\r\nRio ada di posisi 16 saat lap 53. Dia sudah tertinggal dua lap dari pebalap-pebalap di posisi sembilan besar.\r\n\r\nDi sisa balapan, kompsisi dua pebalap terdepan tak berubah. Hamilton berhasil menjadi juara GP Monako 2016.\r\n\r\nHasil Balapan GP Monako\r\n\r\n1. Lewis Hamilton (Britain) Mercedes 1:59:29.133\r\n2. Daniel Ricciardo (Australia) Red Bull - TAG Heuer +00:07.252\r\n3. Sergio Perez (Mexico) Force India - Mercedes 00:13.825\r\n4. Sebastian Vettel (Germany) Ferrari 00:15.846\r\n5. Fernando Alonso (Spain) McLaren 01:25.076\r\n6. Nico Huelkenberg (Germany) Force India - Mercedes 01:32.999\r\n7. Nico Rosberg (Germany) Mercedes 01:33.290\r\n8. Carlos Sainz Jr (Spain) Toro Rosso - Ferrari 1 lap\r\n9. Jenson Button (Britain) McLaren 1 lap\r\n10. Felipe Massa (Brazil) Williams-Mercedes 1 lap\r\n11. Valtteri Bottas (Finland) Williams-Mercedes 1 lap\r\n12. Esteban Gutierrez (Mexico) Haas - Ferrari 1 lap\r\n13. Romain Grosjean (France) Haas - Ferrari 2 laps\r\n14. Pascal Wehrlein (Germany) Manor - Mercedes 2 laps\r\n15. Rio Haryanto (Indonesia) Manor - Mercedes 4 laps\r\n\r\nTidak Finis\r\n\r\nMarcus Ericsson (Sweden) Sauber - Ferrari 26 laps\r\nFelipe Nasr (Brazil) Sauber - Ferrari 29 laps r.\r\nMax Verstappen (Netherlands) Red Bull - TAG Heuer 44 laps\r\nKevin Magnussen (Denmark) Renault 45 laps\r\nDaniil Kvyat (Russia) Toro Rosso - Ferrari 58 laps\r\nKimi Raikkonen (Finland) Ferrari 67 laps\r\nJolyon Palmer (Britain) Renault 72 laps\r\n', 'uploads/99951.jpg', 1, '2016-05-29 15:00:00', '2016-05-29 15:00:00'),
(33, 'Kemenangan di Mugello Jadi Cara Lorenzo Jawab Kritik', 'Mugello - Jorge Lorenzo tak lepas dari kritik yang menyebut dirinya kerap "main aman". Namun, kemenangan di Italia kemarin jadi cara Lorenzo menjawab kritik tersebut.\r\n\r\nKualitas Lorenzo tak dipungkiri lagi dengan tiga g', 'Mugello - Jorge Lorenzo tak lepas dari kritik yang menyebut dirinya kerap "main aman". Namun, kemenangan di Italia kemarin jadi cara Lorenzo menjawab kritik tersebut.\r\n\r\nKualitas Lorenzo tak dipungkiri lagi dengan tiga gelar juara dunia MotoGP. Sudah begitu, dia adalah pebalap keempat dengan torehan podium terbanyak yakni 140.\r\n\r\nSejak debutnya di balapan MotoGP tahun 2008, Lorenzo memang sudah mencuri perhatian. Namun, tetap ada saja suara sumbang yang mengiringi kesuksesan Lorenzo di atas lintasan.\r\n\r\nTak hanya soal rivalitasnya dengan Valentino Rossi yang merupakan pebalap paling populer, tapi juga karena gaya membalapnya yang kerap main aman ketika sudah memimpin sehingga balapan berjalan membosankan. Tidak seperti Rossi atau Marc Marquez yang doyan bertarung wheel-on-wheel.\r\n\r\nNamun, Lorenzo membuktikan bahwa dia bukan pebalap seperti itu ketika meraih kemenangan ketiganya musim ini di Mugelloa akhir pekan lalu. Di lap terakhir, Lorenzo salip-menyalip dengan Marquez sebelum memenangi duel di tikungan trek lurus terakhir dengan hanya selisih 0,019 detik.\r\n\r\n"Tentu saja orang-orang yang tidak menyukai Anda akan terus mencari cara mengkritk Anda," ujar Lorenzo di Autosport.\r\n\r\n"Saya sudah sering memenangi balapan dari posisi belakang, menjalani start buruk, memangkas jarak waktu dengan banyak pebalap dan akhirnya menang di lap terakhir," sambungnya.\r\n\r\n"Saya melakukannya di 125cc, 250cc, dan tahun pertama saya di MotoGP ketika saya tidak start dengan baik."\r\n\r\n"Tapi tentu saja jika Anda start dengan baik dan Anda punya lap pertama yang sangat bagus, kenapa Anda tidak menggunakan itu sebagai keuntungan?."\r\n\r\n"Di Mugello, saya menunjukkan bahwa saya bisa menang meski tidak punya kecepatan terbaik dan tidak mulai dari pole position."\r\n\r\n"Ini jadi motivasi lain lagi untuk membungkam sedikit mulut orang-orang yang mengkritik tanpa melihat sejarah atau statistik," tuntas pebalap asal Spanyol itu.\r\n\r\nKemenangan itu membawa Lorenzo memuncaki klasemen pebalap dengan 110 poin, unggul 10 poin dari Marquez.\r\n', 'uploads/22178.jpg', 1, '2016-05-25 14:00:00', '2016-05-25 14:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Administrator', 'admin@admin.com', '$2y$10$nDA8X0fl80Dzz7TRbGWRm.KhlEIgcrLua7l6OGDs00Jsv1DXddGdG', '1wt7TkBjqRUn4LNJGKWvzgtW0wmRByFYsTw6kqO4Hv0I17j75eQKNyxsufnk', '2015-05-12 05:26:49', '2015-05-12 12:27:42'),
(3, 'abc', 'bca@gmail.com', '$2y$10$v7CpmthEKbxqZ7t.qS8JiOMyGXssCRujK.mdFn.X/KTVIF9hx87eG', '8DshmEatxtX4UDTSjWcm9IhHcqzCc4vSRn3mtAnjGSbYDmmDynfPOfnzJWbh', '2016-05-29 08:36:36', '2016-05-29 08:47:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `posts` ADD FULLTEXT KEY `search` (`title`,`content`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
