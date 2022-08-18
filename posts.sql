/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : svi

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 18/08/2022 11:14:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `Category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Created_date` datetime NULL DEFAULT NULL,
  `Updated_date` datetime NULL DEFAULT NULL,
  `Status` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Proyek MRT Fase 2A Mulai Memasuki Konstruksi Pintu Masuk Stasiun Monas', 'Proyek Moda Raya Terpadu (MRT) Jakarta Fase 2A Paket CP 201 mulai memasuki persiapan konstruksi pada pintu masuk Stasiun Monas di Jalan Museum dan Jalan Merdeka Barat. Adapun proyek MRT Fase 2A Paket CP 201 ini menghubungkan Stasiun Bundaran HI-Monas Corporate Secretary Division Head PT MRT Jakarta (Perseroda) Rendi Alhial di Jakarta menjelaskan, pintu masuk pertama yang akan dibangun dalam fase ini adalah Entrance-1 Stasiun MRT Monas di Jalan Museum dan Jalan Medan Merdeka Barat. Adapun pembangunan area pintu masuk ini ini menggunakan metode box jacking, yaitu metode konstruksi untuk membuat terowongan bawah tanah melalui proses pendorongan box pracetak segmen per segmen ke dalam tanah dengan hydraulic jack.\r\n\r\n\"Pada 18 Agustus sampai 7 September 2022, akan terjadi penyempitan jalur Jalan Museum,\" kata Rendi dilansir dari Antara, Rabu (17/8/2022). Baca juga: Ada Proyek MRT Fase 2, Dishub DKI Lakukan Rekayasa Lalu Lintas di Jalan Gajah Mada dan Hayam Wuruk Sebagai salah satu tahap persiapan pekerjaan konstruksi Entrance-1 Stasiun Monas, MRT akan melakukan test pit di lima titik, salah satunya pada Jalan Museum. \r\n\r\nTes ini bertujuan untuk mengidentifikasi dan mengkonfirmasi posisi tepat beberapa jaringan utilitas bawah tanah yang bersinggungan dengan pekerjaan konstruksi Entrance-1 seperti kabel listrik PLN, fiber optik dan pipa air PAM. Selama pekerjaan test pit jaringan utilitas tersebut, akan terjadi penyempitan jalur sebagian titik di Jalan Museum. Yakni penyempitan jalur Jalan Museum pada 18 Agustus sampai 7 September 2022. Kemudian, pada periode 8 September sampai dengan 30 September 2022, test pit dilakukan di Jalan Museum dan di dalam area bangunan Kemenkominfo sehingga terjadi penyempitan jalur Jalan Museum. \r\n\r\nBaca juga: Tarif Integrasi Transjakarta, MRT dan LRT Dinilai Murah, tapi Belum Bisa Kalahkan Dominasi Sepeda Motor Pada 26 September sampai 29 Oktober 2022, test pit berada di median Jalan Merdeka Barat, namun tidak berdampak pada lalu lintas di sepanjang Jalan Medan Merdeka Barat. \r\n\r\nPT MRT Jakarta (Perseroda) bersama Shimizu-Adhi Karya Joint Venture (SAJV) selaku kontraktor pelaksana memastikan kenyamanan dan keselamatan pengguna jalan selama proses konstruksi berlangsung dengan memasang rambu-rambu lalu lintas.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Proyek MRT Fase 2A Mulai Memasuki Konstruksi Pintu Masuk Stasiun Monas\", Klik untuk baca: https://megapolitan.kompas.com/read/2022/08/18/06134971/proyek-mrt-fase-2a-mulai-memasuki-konstruksi-pintu-masuk-stasiun-monas.\r\n\r\nEditor : Larissa Huda', 'Proyek', '2022-08-17 20:37:20', '2022-08-18 05:14:37', 'publish');
INSERT INTO `posts` VALUES (2, '7 Tahun Silam, Warga Kampung Pulo Digusur Paksa, Picu Bentrokan Besar', 'Tujuh tahun silam, tepatnya 20 Agustus 2015, terjadi bentrokan hebat di Kampung Polo, Jatinegara, Jakarta Timur.  Warga Kampung Pulo berhadap-hadapan dengan petugas yang hendak menggusur paksa kampung mereka.  Suasana di Kampung Pulo pagi itu begitu mencekam. Sejak awal kedatangan aparat Satpol PP dan kepolisian, situasi sudah langsung memanas.  Camat Jatinegara Sofian Taher dan Asisten Pembangunan Jakarta Timur Teguh Hendrawan berupaya melakukan negosiasi guna menenangkan warga.  Namun warga langsung berubah menjadi beringas saat melihat backhoe dinyalakan. \r\n\r\nMereka langsung melemparkan batu-batu ke arah backhoe. Petugas backhoe yang panik mulai menggerakkan lengan backhoe ke kanan dan ke kiri. Kaca pengemudi backhoe pun pecah terkena batu. Petugas dan warga pun bentrok. Warga melemparkan batu-batu ke arah petugas. Petugas kepolisian membalas dengan menembakkan gas air mata. Karena kalah jumlah, aparat kepolisian dan Satpol PP pun sempat berhasil dipukul mundur.  Warga lalu membakar satu backhoe yang sudah ditinggalkan petugas. \r\n\r\nMengetahui adanya perlawanan dari warga, Polda Metro Jaya pun mengirimkan personil tambahan ke Kampung Pulo.  Total ada 100 anggota Brimob yang dikerahkan untuk mengamankan penggusuran.  Polisi juga mengerahkan tiga kendaraan meriam air atau water cannon untuk mengurai massa.  Pada akhirnya, ratusan petugas dari Satpol PP dan kepolisian berhasil memukul mundur warga. Warga tetap melawan dengan menimpuki batu ke arah petugas.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"7 Tahun Silam, Warga Kampung Pulo Digusur Paksa, Picu Bentrokan Besar\", Klik untuk baca: https://megapolitan.kompas.com/read/2022/08/18/05150091/7-tahun-silam-warga-kampung-pulo-digusur-paksa-picu-bentrokan-besar.\r\n\r\nEditor : Ihsanuddin\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'Jakarta', '2022-08-17 21:37:04', '2022-08-18 05:15:15', 'trash');
INSERT INTO `posts` VALUES (4, 'Mempertanyakan Nasib Sumur Resapan Jakarta yang Digaungkan Anies Saat Kampanye', 'Tak lama lagi, Gubernur DKI Jakarta Anies Baswedan akan segera lengser dari jabatannya. Masyarakat pun mulai mempertanyakan nasib sejumlah program yang telah digaungkan Anies sejak masa kampanye pemilihan calon gubernur Ibu Kota pada 2016 hingga 2017 silam. Salah satu janji kampanye Anies adalah membangun sumur resapan untuk menanggulangi banjir yang menahun di Jakarta. Selama masa kepemimpinan Anies, Pemerintah Provinsi DKI Jakarta menargetkan akan membangun sekitar 1,8 juta sumur resapan. Akan tetapi, berdasarkan catatan Kompas.com, target tersebut belum terpenuhi.\r\n\r\nBerikut fakta terkait pembangunan sumur resapan di Ibu Kota:\r\n\r\nJanji kampanye.\r\nSebelum menjadi Gubernur DKI Jakarta periode 2017-2022, Anies optimis bahwa pembuatan sumur resapan mampu mengendalikan genangan hingga banjir ketika Ibu Kota diguyur hujan. Anies, saat kampanye, mengatakan bahwa ada empat hal yang akan dia lakukan jika terpilih sebagai Gubernur DKI. Rinciannya adalah: Membereskan sumber banjir di hulu sehingga volume air yang sampai ke Jakarta berkurang, Melakukan gerakan membangun sumur-sumur resapan di Jakarta, Memastikan aliran air tidak terhambat dengan membersihkan gorong-gorong hingga sungai, Memastikan tidak terjadi sedimentasi yang berlebihan di hilir.\r\n\r\nApa itu sumur resapan?\r\nDilansir dari akun Instagram Dinas Sumber Daya Air (SDA) DKI Jakarta, sumur resapan adalah sistem peresapan air yang diharapkan dapat meningkatkan volume air tanah. Di sisi lain, sumur ini dapat berfungsi sebagai medium pengendali banjir. Sumur resapan bisa dibangun di sisi-sisi jalan, sehingga mencegah genangan yang berkelanjutan saat hujan. Air akan masuk melalui tali-tali menuju bak kontrol, disaring, dan baru masuk ke dalam sumur resapan. Di sisi lain, sumur resapan juga diharapkan menghasilkan cadangan air pada musim kemarau.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Mempertanyakan Nasib Sumur Resapan Jakarta yang Digaungkan Anies Saat Kampanye...\", Klik untuk baca: https://megapolitan.kompas.com/read/2022/08/18/06300011/mempertanyakan-nasib-sumur-resapan-jakarta-yang-digaungkan-anies-saat.\r\nPenulis : Muhammad Naufal\r\nEditor : Ivany Atina Arbi\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'Jakarta', '2022-08-17 21:50:43', '2022-08-18 05:15:07', 'draft');
INSERT INTO `posts` VALUES (5, 'Kenapa Jokowi Selalu Memakai Pakaian Adat di Acara HUT Kemerdekaan RI ?', 'Seperti tahun-tahun sebelumnya, Presiden Joko Widodo (Jokowi) selalu mengenakan pakaian adat di acara peringatan HUT Kemerdekaan RI di Istana Merdeka. Untuk perayaan HUT Kemerdekaan ke-77 RI pada 17 Agustus 2022, Jokowi memakai dolomani, yakni pakaian adat Buton, Sulawesi Tenggara. Alasan Jokowi selalu memakai pakaian adat di acara HUT Kemerdekaan RI Jokowi mengatakan, Indonesia kaya akan adat dan budaya, salah satu wujudnya adalah pakaian adat yang sangat beragam di setiap daerah.\r\n\r\nOleh sebab itu, Jokowi akan terus memperkenalkan pakaian adat tersebut untuk dipakai dalam berbagai kesempatan. Baca juga: Ini Makna dan Filosofi Baju Adat Dolomani yang Dikenakan Jokowi pada Upacara HUT Ke-77 RI “Dulu pernah Aceh, Sumatera Barat, pernah juga Kalimantan Selatan, pernah Sunda, pernah Jawa, Betawi, kemudian ke sana Bali, Sasak, Bugis, pernah semua. Memang kekayaan budaya pakaian adat ini memang ribuan. Jumlahnya ribuan,\" kata Jokowi, dikutip dari laman Sekretariat Kabinet RI, Rabu (17/08/2022). \"Nanti sampai ke Maluku, Papua, semuanya nanti semuanya akan kita angkat,” ucapnya. Makna pakaian adat dolomani Sebagaimana diwartakan regional.kompas.com, Rabu (17/08/2022), Ketua Dewan Kerajinan Nasional Daerah (Dekrasda) Baubau, Wa Ode Nursanti Monianse, mengatakan, dolomani adalah pakaian kebesaran yang biasanya dikenakan sultan saat menghadiri acara-acara kesultanan. Dolomani terdiri dari baju, celana, sarung dan kopiah. Dolomani juga dilengkapi dengan kotango (baju dalaman), sulepe (ikat pinggang), ewanga (keris atau badik) dan katuko (tongkat).\r\n\r\nBaca juga: Ajudan Presiden Pakai Kerawang Gayo saat Pidato RAPBN 2023, Budayawan: Jokowi Ingat Kampung Halaman yang Kedua\r\n\r\n\"Pakaian ini dihiasi dengan sulaman benang emas atau perak, di mana pada pinggiran baju dan kerah baju dihiasi dengan sulaman bermotif bunga rongo,\" kata Nursanti. Menurut Nursanti, motif pada dolomani yang disulam dengan benang emas atau perak adalah simbol kebesaran dan keagungan yang dimiliki seorang pemimpin. Kemudian, sulur bunga rongo yang terdapat pada baju dan celana dolomani bermakna bahwa pemimpin menapaki jalan dari bawah ke atas dan suatu saat akan kembali bawah. “Karena jabatan adalah amanah dan pada suatu saat kekuasaan atas jabatan itu akan berakhir pula,” katanya. Lalu, sulaman randa yang bermotif ake di sisi kanan dan kiri baju berbentuk dua ekor burung, yang satu memandang ke kiri dan satunya ke kanan. Baca juga: Kisah Cinta Saudagar Arab dan Gadis Tionghoa dari Baju Paksian yang Dipakai Jokowi Motif ini bermakna bahwa pemimpin selalu waspada dengan bahaya yang mengancam negerinya, dari mana pun ancaman tersebut berasal. Pada kopiah dolomani, terdapat ornamen bakena uwa yang tampak indah.  Bakena uwa adalah buah dari tumbuhan yang sangat indah, namun gatal saat disentuh. Motif ini menyimbolkan negeri indah yang hendak dikuasai musuh sehingga pemimpi wajib bersama rakyatnya untuk melakukan perlawanan. “Pada bagian depan kopiah dolomani yang disulam dengan kaligrafi ‘MAULANA’ menunjukkan pemimpin itu adalah sebenar-benarnya pemimpin yang harus melekat sifat-sifat kepemimpinan yang mengutamakan kepentingan rakyat bukan kepentingan pribadi,” ungkap Nursanti. Baca juga: Menilik Filosofi Dolomani, Pakaian Adat Kesultanan Buton yang Disiapkan untuk Jokowi Saat HUT Ke-77 RI Pakaian adat yang dipakai Jokowi di acara HUT Kemerdekaan RI Dilansir dari Antara, Rabu (17/08/2022), berikut adalah pakaian adat yang pernah dipakai Jokowi saat memperingati HUT Kemerdekaan RI dari tahun ke tahun. Pada tahun 2017, Jokowi memakai pakaian adat Tanah Bumbu, Batulicin, Kalimantan Selatan. Sementara itu, Ibu Negara, Iriana Joko Widodo, mengenakan baju adat Minangkabau. Pada tahun 2018, Jokowi memakai pakaian adat Meukeusah dari Aceh lengkap dengan penutup kepalanya.  Pada tahun 2019, Jokowi memakai pakaian adat Klungkung dari Bali, yang dilengkapi dengan kain batik sebagai bawahan dan penutup kepala. Pada tahun 2020, Jokowi memakai baju adat Timor Tengah Selatan dari Nusa Tenggara Timur (NTT). Pada tahun 2021, Jokowi memakai pakaian adat Lampung, yang terdiri atas baju lengan panjang berwarna putih yang dipadukan dengan celana panjang berwarna putih juga.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Kenapa Jokowi Selalu Memakai Pakaian Adat di Acara HUT Kemerdekaan RI?\"\r\n\r\nKlik untuk baca: https://regional.kompas.com/read/2022/08/17/201106578/kenapa-jokowi-selalu-memakai-pakaian-adat-di-acara-hut-kemerdekaan-ri.\r\n\r\nEditor : Muhamad Syahrial', 'HUT RI', '2022-08-17 20:02:53', NULL, 'publish');
INSERT INTO `posts` VALUES (6, 'Pencipta Lagu \"Ojo Dibandingke\" Menangis Lihat Farel Prayoga Nyanyikan Lagunya di Depan Jokowi', 'Tak bisa menahan haru, pencipta lagu \"Ojo Dibandingke\" yang dinyanyikan Farel Prayoga di perayaan Hari Ulang Tahun (HUT) ke-77 Republik Indonesia di Istana Negara. Lagu tersebut bahkan kembali viral dan penampilan Farel Prayoga sampai dibicarakan di berbagai media sosial. Tidak itu saja, tampak pejabat dan tamu undangan di Istana Negara ikut berjoget mendengar lagu \"Ojo Dibandingke\". Melihat hal itu dari layar handphone-nya, Abah Lala sebagai pencipta lagu merasa bangga. \"Alhamdulillah ikut bangga dan bersyukur,\" tulisnya di akun @abahlalareal. Baca juga: Videonya Sempat Viral, Kini Farel Prayoga Nyanyikan Lagu Ojo Dibandingke di Depan Presiden Jokowi \"Terima kasih dek @FarelPrayogaOfficial sudah membawakan lagu saya ke Istana Merdeka di hari Kemerdekaan Indonesia,\" imbuhnya dalam keterangan unggahan. Tak lama menonton penampilan Farel, Abah Lala tampak menutup mata dan menangis. \"Alhamdulillah hirobbil alamin, puji syukur kepada Tuhan Yang Maha Esa, lagu saya yang berjudul \"Ojo Dibandingke\" dinyanyikan di Istana Negara, spesial di Hari Kemerdekaan Republik Indonesia,\" kata Abah dalam video tersebut. Baca juga: Profil Farel Prayoga, Penyanyi Cilik Viral yang Nyanyi di Depan Presiden Jokowi \"Disaksikan banyak warga Indonesia dan mungkin dari mana saja. Saya melu (ikut) bangga, melu seneng, men (biar) semangat untuk Indonesia,\" sambungnya. Diberitakan sebelumnya, Farel yang viral di media sosial karena cover lagu \"Ojo Dibandingke\" yang dinyanyikan Denny Caknan tampil di depan Jokowi, Rabu (17/8/2022).\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Pencipta Lagu \"Ojo Dibandingke\" Menangis Lihat Farel Prayoga Nyanyikan Lagunya di Depan Jokowi\", Klik untuk baca: https://www.kompas.com/hype/read/2022/08/17/212837466/pencipta-lagu-ojo-dibandingke-menangis-lihat-farel-prayoga-nyanyikan.\r\nPenulis : Rintan Puspita Sari\r\nEditor : Rintan Puspita Sari', 'HUT RI', '2022-08-17 20:06:16', NULL, 'publish');
INSERT INTO `posts` VALUES (7, 'Megawati dan Langkah Politiknya sebagai \"Queen Maker\" Jelang Pilpres 2024', 'Ketua Umum PDI Perjuangan Megawati Soekarnoputri memegang kuasa penuh atas pencalonan presiden di partainya. Demikian ditegaskan berulang kali oleh jajaran PDI-P. Di saat partai-partai lain sibuk membangun koalisi bahkan mengumumkan nama calon presiden, PDI-P masih bergeming. Katanya, Megawati masih menimbang-nimbang dinamika politik terkini. Kendati demikian, sejumlah langkah mulai ditempuh Mega untuk mempersiapkan partainya menghadapi kontestasi pemilihan mendatang. Langkah Mega sebagai \"queen maker\" Pemilu Presiden (Pilpres) 2024 pun dinanti-nantikan. Keputusan presiden kelima RI itu dinilai menjadi salah satu penentu peta politik ke depan.\r\n\r\nHasto tak menyebutkan detail soal penggemblengan capres yang tengah dilakukan Megawati. Namun, dia mengeklaim, partainya punya banyak calon pemimpin. Mereka salah satunya dihasilkan lewat sekolah partai dan pendampingan oleh para kepala daerah yang telah berhasil. “Kader PDI Perjuangan banyak. Ada Mas Bobby (Boby Nasution, Wali Kota Medan) di Kota Medan, Pak Rapidin (Ketua DPD PDI-P Sumut) juga kader hebat membawa kemajuan daerah,” ucap Hasto.\r\n\r\nSementara, Ketua DPP PDI-P Ahmad Basarah mengatakan, partainya hingga kini memang belum memutuskan soal kerja sama politik maupun pencapresan Pemilu 2024. Dia mengatakan, Megawati masih akan melihat dinamika politik yang terjadi saat ini dan beberapa waktu ke depan. \"Nah, dinamika politik itu yang akan menjadi dasar pertimbangan Ibu Mega untuk menentukan siapa capresnya, siapa cawapresnya. Siapa saja parpol yang akan diajak kerja sama dalam gotong royong pilpres itu dan kapan akan diumumkan,\" kata Basarah di Kompleks Parlemen Senayan, Jakarta, Senin (15/8/2022). Kendati demikian, kata Basarah, Megawati telah menugaskan Ketua DPP PDI-P Bidang Politik dan Keamanan Puan Maharani untuk bersafari politik. Rencananya, putri Megawati itu akan silaturahmi ke seluruh ketua umum parpol.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Megawati dan Langkah Politiknya sebagai \"Queen Maker\" Jelang Pilpres 2024\", Klik untuk baca: https://nasional.kompas.com/read/2022/08/16/06450031/megawati-dan-langkah-politiknya-sebagai-queen-maker-jelang-pilpres-2024.\r\nPenulis : Fitria Chusna Farisa\r\nEditor : Fitria Chusna Farisa\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'Pilpres 2024', '2022-08-18 05:55:50', NULL, 'draft');
INSERT INTO `posts` VALUES (8, 'Jejak Prabowo di Tiga Pemilu Presiden: 2009, 2014, dan 2019', 'Ketua Umum Partai Gerindra Prabowo Subianto bakal mencalonkan diri pada Pemilu Presiden (Pilpres) 2024. Rencana pencalonan itu telah dideklarasikan Prabowo dalam Rapat Pimpinan Nasional (Rapimnas) Gerindra yang digelar 12 Agustus kemarin. Prabowo menyatakan siap mencalonkan diri sebagai presiden karena didukung oleh para kader Gerindra. “Dengan ini saya menyatakan bahwa dengan penuh rasa tanggung jawab saya menerima permohonan saudara untuk bersedia dicalonkan sebagai calon presiden Republik Indonesia,” kata Prabowo dalam Rapimnas Gerindra yang digelar di Sentul International Convention Center, Bogor, Jawa Barat, Jumat (12/8/2022).\r\n\r\nSebelum menyatakan kesediannya maju sebagai capres, Prabowo mengaku telah mempelajari dan mendengarkan sikap para kader Gerindra, mulai dari dewan pimpinan daerah (DPD) hingga organisasi sayap partai. Menurut dia, segenap kader partai mengharapkannya bersedia memenuhi permintaan mereka untuk mencalonkan diri kembali sebagai presiden. “Saya siap terus berjuang untuk bangsa negara dan rakyat Indonesia tercinta, seluruh jiwa saya persembahkan untuk Ibu Pertiwi,” ucap Prabowo. Jika rencana ini terealisasi, Pemilu 2024 bakal menjadi kali keempat Prabowo berlaga di panggung pilpres. Sebelumnya, Menteri Pertahanan itu pernah menjadi peserta Pilpres 2009, 2014, dan 2019. Namun, pada tiga kontestasi terdahulu, Prabowo belum berhasil menjadi pemenang. Berikut jejak Prabowo di tiga pemilu presiden\r\n\r\nPemilu Presiden 2009 menjadi ajang pilpres perdana bagi Prabowo. Sebenarnya, jelang Pilpres 2004 dia maju dalam konvensi calon presiden (capres) Partai Golkar. Namun, Prabowo kalah dan konvensi dimenangkan oleh Wiranto yang berpasangan dengan Salahudin Wahid. Hengkang dari Golkar, Prabowo membentuk partai sendiri yang ia pimpin hingga kini, Gerakan Indonesia Raya (Gerindra). Dengan kendaraan barunya, mulanya Prabowo hendak mencalonkan diri sebagai presiden dengan menggandeng Ketua Umum Partai Amanat Nasional (PAN) saat itu, Soetrisno Bachir, sebagai calon wakil presiden (cawapres). Namun, pasangan ini sudah layu sebelum berkembang karena tak mampu memenuhi persyaratan kursi dukungan. Prabowo lantas berganti haluan dengan merapat ke koalisi Partai Demokrasi Indonesia Perjuangan (PDI-P) yang mengusung Megawati Soekarnoputri sebagai capres. Setelah melalui perundingan yang alot, Prabowo akhirnya legawa dipasangkan sebagai calon wakil presiden Megawati.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Jejak Prabowo di Tiga Pemilu Presiden: 2009, 2014, dan 2019\", Klik untuk baca: https://nasional.kompas.com/read/2022/08/15/06150071/jejak-prabowo-di-tiga-pemilu-presiden--2009-2014-dan-2019.\r\nPenulis : Fitria Chusna Farisa\r\nEditor : Fitria Chusna Farisa\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'Pilpres 2024', '2022-08-18 05:57:50', NULL, 'draft');
INSERT INTO `posts` VALUES (9, 'Jokowi: Reshuffle Kabinet Masih Mungkin Dilakukan', 'Presiden Joko Widodo mengatakan, perombakan (reshuffle) kabinet masih memungkinkan untuk dilakukan kembali. Menurut Presiden, hal itu merujuk pada kondisi perubahan dunia yang serba mendadak akhir-akhir ini. Dengan demikian, Presiden menekankan diperlukan kebijakan yang cepat dan tepat dari para menteri. \"Masih (memungkinkan reshuffle). Sekarang ini setiap hari bisa terjadi perubahan mendadak situasi dunia. Kita juga membutuhkan kecepatan waktu, ketepatan membuat policy, sehingga kemungkinan reshuffle,\" ujar Jokowi dalam sesi wawancara khusus bersama Harian Kompas di Istana Merdeka pada 14 Agustus 2022, sebagaimana dilansir Kompas.id, Kamis (18/8/2022).\r\n\r\nJokowi menegaskan, apabila ke depannya diperlukan reshuffle untuk kepentingan lebih baik maka akan dilakukan. \"Kalau diperlukan untuk kepentingan lebih baik, ya dilakukan. Meskipun tinggal sehari, kalau diperlukan, ya dilakukan,\" tambahnya. Pernyataan soal masih terbukanya peluang reshuffle kabinet juga disampaikan Jokowi pada pertengahan Juli lalu. Saat itu, Jokowi meminta menteri-menterinya agar bekerja secara ekstra dalam menghadapi tantangan yang tak mudah, yakni ancaman resesi akibat krisis dan energi. \"Menteri tidak bisa bekerja biasa-biasa. Harus bekerja ekstra. Tidak bisa hanya bekerja secara makro, tetapi juga mikro bahkan supermikro, melihat detail satu per satu,\" kata Jokowi, Rabu (13/7/2022).\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Jokowi: \"Reshuffle\" Kabinet Masih Mungkin Dilakukan\", Klik untuk baca: https://nasional.kompas.com/read/2022/08/18/06341921/jokowi-reshuffle-kabinet-masih-mungkin-dilakukan.\r\nPenulis : Dian Erika Nugraheny\r\nEditor : Diamanty Meiliana\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'Nasional', '2022-08-18 06:02:10', NULL, 'draft');
INSERT INTO `posts` VALUES (10, 'Ini Nama 3 Paskibraka Pengibar Bendera Merah Putih di Upacara HUT Ke-77 RI', 'Bendera Merah Putih sukses dikibarkan dalam Upacara Peringatan Detik-Detik Proklamasi Kemerdekaan Republik Indonesia di Istana Merdeka, Jakarta, Rabu (17/8/2022). Bendera itu dikibarkan oleh tiga orang dari Kelompok 8 Tim Pasukan Pengibar Bendera Pusaka (Paskibraka). Tiga orang itu adalah Rafly Tri Aditama dari provinsi Kalimantan Tengah selaku komandan Kelompok 8, Mario Adhiyaksa dari Sumatera Utara sebagai pembentang bendera, dan Bramantya Rizky Wiratama sebagai pengerek bendara yang mewakili Jawa Barat.\r\n\r\nSebelum dikibarkan, bendera tersebut awalnya diserahkan Presiden Joko Widodo kepada pembawa baki bendera yakni I Dewa Ayu Firsty Meita Dewanggi, perwakilan provinsi Jawa Tengah. Di samping itu, Komandan Upacara Peringatan Detik-Detik Proklamasi Kemerdekaan Republik Indonesia adalah Kolonel Laut (P) Andike Sry Mutia. Andike merupakan pria kelahiran Bukittinggi, 12 September 1976, dan lulusan Akademi Angkatan Laut tahun 1998. Ia saat ini menjabat sebagai komandan Pusat Pendidikan Pelaut Komando Pendidikan Operasi Laut Komando Pembinaan Doktrin Pendidikan dan Latihan TNI AL.\r\n\r\nSementara itu, perwira yang berindak sebagai perwira upacara adalah Brigadir Jenderal TNI Novi Helmy Prasetya. Pria kelahiran Bangkalan 10 November 1971 dan lulusan Akademi Militer tahun 1993 itu saat ini menjabat sebagai kepala staf Garnisun Tetap I/Jakarta. Sedangkan, komandan Kompi Paskibraka pada upacara tahun ini adalah Kapten Inf. Arya Wijayendra, ia merupakan komandan Kompi Senapan A Yonmek 202/Tajimalela Brigif Mekanis 1 PAM Ibu Kota/JS Kodam Jaya.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Ini Nama 3 Paskibraka Pengibar Bendera Merah Putih di Upacara HUT Ke-77 RI\", Klik untuk baca: https://nasional.kompas.com/read/2022/08/17/10412951/ini-nama-3-paskibraka-pengibar-bendera-merah-putih-di-upacara-hut-ke-77-ri.\r\nPenulis : Ardito Ramadhan\r\nEditor : Diamanty Meiliana\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'HUT RI', '2022-08-18 06:03:14', NULL, 'draft');
INSERT INTO `posts` VALUES (11, 'Istana Sebut Jokowi Segera Lantik Menpan-RB Pengganti Tjahjo Kumolo', 'Kepala Sekretariat Presiden (Kasetpres) Heru Budi Hartono mengatakan, Presiden Joko Widodo akan segera melantik Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (Menpan-RB) yang menggantikan almarhum Tjahjo Kumolo. \"Insya Allah (minggu depan). Kita usahakan. Karena beliau (presiden) besok kunjungan kerja ke Karawang. Kemudian saat akhir Agustus kunjungan ke daerah timur Indonesia,\" ujar Heru di Istana Merdeka, Rabu (17/8/2022).\r\n\r\nSaat disinggung soal nama-nama yang telah mengerucut menjadi kandidat Menpan-RB, Heru enggan memberikan penjelasan. \"Tapi yang jelas sudah ada di beliau (presiden). Dan ini ranah Mensesneg (Pratikno) dan Pak Seskab (Pramono Anung). Doain ada waktu untuk beliau bisa (segera melantik),\" tutur Heru. Lebih lanjut, Heru menjelaskan alasan posisi Menpan-RB diputuskan setelah meninggalnya Tjahjo Kumolo. Heru menuturkan, kesibukan Presiden Jokowi mengunjungi sejumlah negara ikut menjadi penyebab lamanya pergantian jabatan menteri ini.\r\n\r\nSelain itu, presiden juga masih disibukkan persiapan HUT ke-77 RI dan pidato kenegaraan. \"Pertama karena kesibukan beliau sebagai seorang presiden. Kemarin juga baru pergi ke Beijing, Tokyo, Seoul mempersiapkan materi dan sebagainya. Berikutnya sebelumnya ke Eropa,\" tutur Heru. \"Baru kembali kemarin, sudah mempersiapkan 17 Agustus, pidato kenegaraan. Mudah-mudahan beliau sempat lah untuk bisa memilih menteri yang memang akan dipilih,\" tambahnya.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"Istana Sebut Jokowi Segera Lantik Menpan-RB Pengganti Tjahjo Kumolo\", Klik untuk baca: https://nasional.kompas.com/read/2022/08/17/16152361/istana-sebut-jokowi-segera-lantik-menpan-rb-pengganti-tjahjo-kumolo.\r\nPenulis : Dian Erika Nugraheny\r\nEditor : Bagus Santosa\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'Nasional', '2022-08-18 06:04:28', NULL, 'draft');

SET FOREIGN_KEY_CHECKS = 1;
