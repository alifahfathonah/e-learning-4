-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: db_learning
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `el_field_tambahan`
--

DROP TABLE IF EXISTS `el_field_tambahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_field_tambahan`
--

LOCK TABLES `el_field_tambahan` WRITE;
/*!40000 ALTER TABLE `el_field_tambahan` DISABLE KEYS */;
INSERT INTO `el_field_tambahan` VALUES ('check-urgent-info','Check Urgent Info','{\"info\":\"\",\"last_check\":\"2019-11-24 16:50:03\"}'),('history-mengerjakan-1-1','History pengerjaan tugas','{\"mulai\":\"2019-11-24 16:36:24\",\"uri_string\":\"tugas\\/kerjakan\\/1\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"1\",\"mapel_id\":\"1\",\"pengajar_id\":\"1\",\"type_id\":\"1\",\"judul\":\"berbahasa\",\"durasi\":null,\"info\":\"\",\"aktif\":\"1\",\"tgl_buat\":\"2019-11-24 16:35:20\",\"tampil_siswa\":\"1\"},\"unix_id\":\"c10736a3d032fd4246b2ae1431de267e744356\",\"ip\":\"127.0.0.1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"file_name\":\"c10736a3d032fd4246b2ae1431de267e744356.pdf\",\"tgl_submit\":\"2019-11-24 16:36:51\"}'),('history-mengerjakan-1-3','History pengerjaan tugas','{\"mulai\":\"2020-06-07 06:28:57\",\"uri_string\":\"tugas\\/kerjakan\\/3\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"3\",\"mapel_id\":\"1\",\"pengajar_id\":\"2\",\"type_id\":\"1\",\"judul\":\"Upload Tugas DIsini\",\"durasi\":null,\"info\":\"<p>Dimohon untuk bekerjasama<\\/p>\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2019-11-26 02:00:04\",\"tampil_siswa\":\"1\"},\"unix_id\":\"42b47b9bef100dce99fa88010bc02f6c866374\",\"ip\":\"192.168.10.10\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/83.0.4103.61 Safari\\/537.36\",\"file_name\":\"42b47b9bef100dce99fa88010bc02f6c866374.txt\",\"tgl_submit\":\"2020-06-07 06:30:55\"}'),('history-mengerjakan-1-5','History pengerjaan tugas','{\"mulai\":\"2020-06-11 00:30:50\",\"selesai\":\"2020-06-11 01:30:50\",\"uri_string\":\"tugas\\/kerjakan\\/5\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"5\",\"mapel_id\":\"4\",\"pengajar_id\":\"2\",\"type_id\":\"2\",\"judul\":\"Latihan Essay\",\"durasi\":\"60\",\"info\":\"\",\"aktif\":\"1\",\"tgl_buat\":\"2020-01-17 22:09:13\",\"tampil_siswa\":\"1\"},\"unix_id\":\"d5faa648e67dc07fbe5c80983c5a49d1410161\",\"ip\":\"192.168.10.10\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/83.0.4103.61 Safari\\/537.36\",\"pertanyaan_id\":[\"3\"],\"jawaban\":{\"3\":\"<p>Mutualisme<\\/p>\\n\"},\"tgl_submit\":\"2020-06-11 00:48:50\",\"total_waktu\":\"18 menit\",\"nilai\":{\"3\":\"80\"}}');
/*!40000 ALTER TABLE `el_field_tambahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_kelas`
--

DROP TABLE IF EXISTS `el_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=aktif 0=tidak',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_id_2` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_kelas`
--

LOCK TABLES `el_kelas` WRITE;
/*!40000 ALTER TABLE `el_kelas` DISABLE KEYS */;
INSERT INTO `el_kelas` VALUES (6,'KELAS XI TKJ',NULL,1,1),(7,'KELAS XI - TKJ 1',6,2,1),(8,'KELAS XI - TKJ 2',6,3,1),(9,'KELAS XI - TKJ 3',6,4,0);
/*!40000 ALTER TABLE `el_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_kelas_siswa`
--

DROP TABLE IF EXISTS `el_kelas_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_kelas_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL COMMENT '0 jika bukan, 1 jika ya',
  PRIMARY KEY (`id`),
  KEY `kelas_id` (`kelas_id`,`siswa_id`),
  KEY `kelas_id_2` (`kelas_id`,`siswa_id`),
  KEY `siswa_id` (`siswa_id`),
  CONSTRAINT `el_kelas_siswa_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `el_siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_kelas_siswa`
--

LOCK TABLES `el_kelas_siswa` WRITE;
/*!40000 ALTER TABLE `el_kelas_siswa` DISABLE KEYS */;
INSERT INTO `el_kelas_siswa` VALUES (3,9,1,0),(4,7,42,0),(5,7,41,0),(6,7,39,0),(7,7,22,0),(8,7,14,0),(9,7,11,0),(10,7,4,0),(11,7,2,0),(12,9,51,1),(13,9,49,1),(14,9,48,1),(15,9,45,1),(16,9,43,1),(17,9,42,1),(18,9,41,1),(19,9,40,1),(20,9,39,1),(21,9,37,1),(22,9,36,1),(23,9,34,1),(24,9,29,1),(25,9,28,1),(26,9,22,1),(27,9,21,1),(28,9,18,1),(29,9,14,1),(30,9,12,1),(31,9,11,1),(32,9,10,1),(33,9,8,1),(34,9,7,1),(35,9,6,1),(36,9,4,1),(37,9,2,1),(38,8,41,0),(39,16,50,1),(40,16,1,0),(41,7,1,1);
/*!40000 ALTER TABLE `el_kelas_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_komentar`
--

DROP TABLE IF EXISTS `el_komentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=tidak,1=tampil',
  `konten` text DEFAULT NULL,
  `tgl_posting` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login_id` (`login_id`,`materi_id`),
  KEY `login_id_2` (`login_id`,`materi_id`),
  KEY `login_id_3` (`login_id`,`materi_id`),
  KEY `login_id_4` (`login_id`,`materi_id`),
  KEY `login_id_5` (`login_id`,`materi_id`),
  KEY `login_id_6` (`login_id`,`materi_id`),
  KEY `login_id_7` (`login_id`,`materi_id`),
  KEY `login_id_8` (`login_id`,`materi_id`),
  KEY `login_id_9` (`login_id`,`materi_id`),
  KEY `login_id_10` (`login_id`,`materi_id`),
  KEY `login_id_11` (`login_id`,`materi_id`),
  KEY `login_id_12` (`login_id`,`materi_id`),
  KEY `login_id_13` (`login_id`,`materi_id`),
  KEY `login_id_14` (`login_id`,`materi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_komentar`
--

LOCK TABLES `el_komentar` WRITE;
/*!40000 ALTER TABLE `el_komentar` DISABLE KEYS */;
INSERT INTO `el_komentar` VALUES (1,2,1,1,'<p>Ini bagaimana ya pak?</p>\r\n','2019-11-24 23:46:47'),(2,2,5,1,'<p>apa ini pak?</p>\n','2020-06-10 04:48:55');
/*!40000 ALTER TABLE `el_komentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_login`
--

DROP TABLE IF EXISTS `el_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  KEY `username_2` (`username`,`siswa_id`,`pengajar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_login`
--

LOCK TABLES `el_login` WRITE;
/*!40000 ALTER TABLE `el_login` DISABLE KEYS */;
INSERT INTO `el_login` VALUES (1,'guru@guru.com','9310f83135f238b04af729fec041cca8',NULL,1,1,NULL),(2,'siswa1@siswa.com','013f0f67779f3b1686c604db150d12ea',1,NULL,0,'ae93c84feb68dd8c85b59529bfb854ee'),(3,'guru1@guru.com','9310f83135f238b04af729fec041cca8',NULL,2,0,NULL),(4,'guru2@guru.com','9310f83135f238b04af729fec041cca8',NULL,3,0,NULL),(5,'sukartono@yahoo.com','e10adc3949ba59abbe56e057f20f883e',NULL,4,0,NULL),(6,'guru3@guru.com','9310f83135f238b04af729fec041cca8',NULL,5,0,NULL);
/*!40000 ALTER TABLE `el_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_mapel`
--

DROP TABLE IF EXISTS `el_mapel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = ya, 0 = tidak',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_mapel`
--

LOCK TABLES `el_mapel` WRITE;
/*!40000 ALTER TABLE `el_mapel` DISABLE KEYS */;
INSERT INTO `el_mapel` VALUES (1,'Bahasa Indonesia',NULL,1),(2,'Bahasa Inggris','',1),(3,'Matematika',NULL,1),(4,'Biologi',NULL,1),(5,'Penjas',NULL,1),(6,'Agama',NULL,1),(7,'Fisika',NULL,1),(8,'Kimia',NULL,1),(9,'Ekonomi',NULL,1),(10,'Teknologi Informasi','',1);
/*!40000 ALTER TABLE `el_mapel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_mapel_kelas`
--

DROP TABLE IF EXISTS `el_mapel_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_mapel_kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `kelas_id` (`kelas_id`,`mapel_id`),
  KEY `kelas_id_2` (`kelas_id`,`mapel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_mapel_kelas`
--

LOCK TABLES `el_mapel_kelas` WRITE;
/*!40000 ALTER TABLE `el_mapel_kelas` DISABLE KEYS */;
INSERT INTO `el_mapel_kelas` VALUES (1,7,1,1),(2,7,2,1),(3,7,3,1),(4,7,5,1),(5,7,6,1),(7,8,2,1),(8,8,3,1),(10,8,5,1),(15,8,10,1),(16,16,1,1),(17,16,2,1),(18,16,3,1),(19,16,4,1),(20,16,5,1),(21,16,6,1);
/*!40000 ALTER TABLE `el_mapel_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_materi`
--

DROP TABLE IF EXISTS `el_materi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_materi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `mapel_id` (`mapel_id`,`pengajar_id`,`siswa_id`),
  KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`siswa_id`),
  CONSTRAINT `el_materi_ibfk_1` FOREIGN KEY (`mapel_id`) REFERENCES `el_mapel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_materi`
--

LOCK TABLES `el_materi` WRITE;
/*!40000 ALTER TABLE `el_materi` DISABLE KEYS */;
INSERT INTO `el_materi` VALUES (1,3,1,NULL,'Konfigurasi Server','<p><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"//www.youtube.com/embed/T6ceI5QpaSI\" width=\"640\"></iframe></p>\r\n',NULL,'2019-11-24 23:45:59',1,19),(4,10,2,NULL,'MEMBACA',NULL,'membaca_1577288361.pdf','2019-12-25 22:39:21',1,4),(5,1,2,NULL,'Network Operating Center','<p>Sebuah jaringan komputer tidak akan selamanya berjalan dengan baik. Ada kalanya atau bahkan sering, jaringan komputer mengalami masalah-masalah yang terduga. Masalah-masalah ini bisa disebabkan oleh beberapa hal, seperti&nbsp;<em><i>human error&nbsp;</i></em>(kesalahan manusia), bencana alam, gangguan dari orang-orang yang tidak bertanggung jawab (<em><i>cyber crime)</i></em>, dll.</p>\n\n<p>Untuk mengatasi masalah-masalah yang mungkin terjadi tersebut, harus ada orang yang melakukan monitoring jaringan, sehingga jika sewaktu-waktu jaringan mengalami masalah, masalah tersebut dapat diatasi dengan secepat mungkin.</p>\n\n<p>Pekerjaan untuk melakukan monitoring dan&nbsp;<em><i>maintenance</i></em>&nbsp;(perbaikan) jaringan adalah tugas dari<em><i>&nbsp;engineer&nbsp;</i></em>yang bekerja dibagian Network Operating Center (NOC). Berikut gambaran pekerjaan engineer yang bekerja dibagian NOC</p>\n\n<p><img src=\"https://idn.sch.id/wp-content/uploads/2016/10/img_580d655ed1868.png\" /></p>\n',NULL,'2020-06-11 01:02:01',1,10);
/*!40000 ALTER TABLE `el_materi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_materi_kelas`
--

DROP TABLE IF EXISTS `el_materi_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_materi_kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `materi_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `materi_id` (`materi_id`,`kelas_id`),
  KEY `materi_id_2` (`materi_id`,`kelas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_materi_kelas`
--

LOCK TABLES `el_materi_kelas` WRITE;
/*!40000 ALTER TABLE `el_materi_kelas` DISABLE KEYS */;
INSERT INTO `el_materi_kelas` VALUES (1,1,6),(2,2,6),(3,3,6),(4,4,6),(8,5,7),(7,5,8);
/*!40000 ALTER TABLE `el_materi_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_nilai_tugas`
--

DROP TABLE IF EXISTS `el_nilai_tugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_nilai_tugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nilai` float NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tugas_id` (`tugas_id`,`siswa_id`),
  KEY `tugas_id_2` (`tugas_id`,`siswa_id`),
  KEY `siswa_id` (`siswa_id`),
  CONSTRAINT `el_nilai_tugas_ibfk_1` FOREIGN KEY (`tugas_id`) REFERENCES `el_tugas` (`id`),
  CONSTRAINT `el_nilai_tugas_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `el_siswa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_nilai_tugas`
--

LOCK TABLES `el_nilai_tugas` WRITE;
/*!40000 ALTER TABLE `el_nilai_tugas` DISABLE KEYS */;
INSERT INTO `el_nilai_tugas` VALUES (6,80,5,1);
/*!40000 ALTER TABLE `el_nilai_tugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pengajar`
--

DROP TABLE IF EXISTS `el_pengajar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_pengajar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok',
  PRIMARY KEY (`id`),
  KEY `nip` (`nip`),
  KEY `nip_2` (`nip`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pengajar`
--

LOCK TABLES `el_pengajar` WRITE;
/*!40000 ALTER TABLE `el_pengajar` DISABLE KEYS */;
INSERT INTO `el_pengajar` VALUES (1,'','Administrator','Laki-laki','Jambi','1990-01-01','Jambi',NULL,1),(2,'157151513156','Guru Pertama','Laki-laki','',NULL,'',NULL,1),(3,'1571021939121','Guru Kedua','Laki-laki','Jambi','1973-08-20','Jambi',NULL,2),(4,'10213124231312','Sukartono','Laki-laki','Padang','1987-01-19','Jambi',NULL,1),(5,'14518118613','Yuda','Laki-laki','',NULL,'',NULL,1);
/*!40000 ALTER TABLE `el_pengajar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pengaturan`
--

DROP TABLE IF EXISTS `el_pengaturan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pengaturan`
--

LOCK TABLES `el_pengaturan` WRITE;
/*!40000 ALTER TABLE `el_pengaturan` DISABLE KEYS */;
INSERT INTO `el_pengaturan` VALUES ('alamat','alamat','Jl. Jend. A. Thalib, Simpang IV Sipin, Kec. Telanaipura Kota Jambi'),('img-slide-2','img-slide-2','img-slide-2.jpg'),('info-registrasi','Info Registrasi','<p>Silakan mendaftar sebagai Siswa atau Guru (jika anda sebagai Guru) dengan memilih sesuai tab berikut :</p>\r\n'),('logo-sekolah','logo-sekolah','logo-sekolah.png'),('nama-sekolah','nama-sekolah','SMK Negeri 1 Jambi'),('registrasi-pengajar','Registrasi Pengajar','1'),('registrasi-siswa','Registrasi Siswa','1'),('status-registrasi-pengajar','status-registrasi-pengajar','0'),('status-registrasi-siswa','status-registrasi-siswa','0'),('telp','telp','');
/*!40000 ALTER TABLE `el_pengaturan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_pilihan`
--

DROP TABLE IF EXISTS `el_pilihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_pilihan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan_id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=tidak',
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `pertanyaan_id` (`pertanyaan_id`),
  KEY `pertanyaan_id_2` (`pertanyaan_id`,`kunci`),
  CONSTRAINT `el_pilihan_ibfk_1` FOREIGN KEY (`pertanyaan_id`) REFERENCES `el_tugas_pertanyaan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_pilihan`
--

LOCK TABLES `el_pilihan` WRITE;
/*!40000 ALTER TABLE `el_pilihan` DISABLE KEYS */;
INSERT INTO `el_pilihan` VALUES (1,1,'<p>Semua benar</p>\r\n',1,4,1),(2,2,'<p>Bernafas</p>\r\n',1,1,1),(3,2,'<p>Berlari</p>\r\n',0,2,1),(4,2,'<p>Berenang</p>\r\n',0,3,1),(5,2,'<p>Bersepeda</p>\r\n',0,4,1);
/*!40000 ALTER TABLE `el_pilihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_siswa`
--

DROP TABLE IF EXISTS `el_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted',
  PRIMARY KEY (`id`),
  KEY `nis` (`nis`,`nama`,`status_id`),
  KEY `nis_2` (`nis`,`nama`,`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_siswa`
--

LOCK TABLES `el_siswa` WRITE;
/*!40000 ALTER TABLE `el_siswa` DISABLE KEYS */;
INSERT INTO `el_siswa` VALUES (1,'15710','Siswa Pertama','Laki-laki','Jambi',NULL,'ISLAM','',2016,'siswa-siswa-pertama-15710.png',1),(2,'9420888464','Janet Kuswandari','Perempuan','Bima','1969-03-14','Kristen','Ki. Pelajar Pejuang 45 No. 247, Pangkal Pinang 70668, Gorontalo',2020,NULL,1),(3,'9913071292','Ganda Habibi S.H.','Perempuan','Bogor','1943-09-05','Islam','Gg. Bakau Griya Utama No. 34, Bontang 70237, JaTeng',2020,NULL,0),(4,'9160556794','Darmana Dasa Mangunsong M.Kom.','Perempuan','Banjar','1953-06-15','Islam','Ds. Nakula No. 601, Makassar 73428, SulUt',2020,NULL,1),(5,'9202555176','Ana Anggraini','Perempuan','Semarang','1957-09-20','Kristen','Dk. Suryo No. 657, Kotamobagu 34032, NTB',2020,NULL,0),(6,'9046610667','Cici Andriani S.I.Kom','Laki-laki','Tanjung Pinang','1936-03-20','Kristen','Ds. Bagis Utama No. 878, Sibolga 23178, Gorontalo',2019,NULL,1),(7,'9435065248','Warji Slamet Uwais S.E.I','Laki-laki','Bekasi','1988-05-31','Buddha','Psr. Laswi No. 416, Sukabumi 14994, Lampung',2019,NULL,1),(8,'9192308925','Febi Mardhiyah S.Psi','Perempuan','Tangerang','1988-05-31','Buddha','Gg. Bagas Pati No. 133, Kediri 44151, SumBar',2019,NULL,1),(9,'9476870382','Aurora Anggraini','Laki-laki','Lhokseumawe','1931-06-29','Hindu','Dk. Pahlawan No. 382, Tanjung Pinang 39317, BaBel',2020,NULL,0),(10,'9967170844','Kariman Tirtayasa Permadi M.Farm','Laki-laki','Kendari','1988-05-31','Buddha','Jr. Sunaryo No. 668, Mojokerto 38952, KalBar',2019,NULL,1),(11,'9847491548','Jarwadi Siregar','Perempuan','Tomohon','1988-05-31','Kristen','Psr. Kiaracondong No. 63, Tanjungbalai 69347, Gorontalo',2020,NULL,1),(12,'9190094885','Suci Wahyuni','Laki-laki','Tangerang Selatan','1982-04-29','Hindu','Jln. Babah No. 459, Administrasi Jakarta Pusat 20592, KalTeng',2019,NULL,1),(13,'9992292883','Cakrawala Bakda Habibi','Perempuan','Manado','1983-07-14','Buddha','Dk. Thamrin No. 766, Mataram 90552, SumSel',2019,NULL,0),(14,'9890234417','Mutia Purnawati','Perempuan','Administrasi Jakarta Timur','1988-05-31','Islam','Ki. Ahmad Dahlan No. 632, Palu 88724, Aceh',2020,NULL,1),(15,'9043431072','Bakda Siregar','Laki-laki','Bandar Lampung','1988-05-31','Buddha','Jr. Bappenas No. 465, Bau-Bau 11887, Banten',2020,NULL,1),(16,'9509921247','Endra Simbolon','Laki-laki','Kendari','1947-11-17','Kristen','Ki. Bass No. 626, Palembang 62709, MalUt',2019,NULL,0),(17,'9441108989','Lega Karma Wacana S.E.I','Laki-laki','Banjarbaru','1940-04-27','Kristen','Kpg. Ketandan No. 793, Manado 28860, Jambi',2019,NULL,0),(18,'9239003626','Wirda Rini Pudjiastuti','Laki-laki','Bandung','1988-05-31','Islam','Jln. Cikutra Timur No. 790, Subulussalam 14255, Riau',2019,NULL,1),(19,'9360442935','Samsul Megantara','Perempuan','Kotamobagu','1950-03-08','Islam','Kpg. Haji No. 220, Manado 87698, SulBar',2020,NULL,0),(20,'9070203995','Karimah Rini Wahyuni M.M.','Perempuan','Sawahlunto','1933-07-02','Buddha','Ds. Arifin No. 213, Singkawang 42329, KalUt',2020,NULL,0),(21,'9478874377','Ellis Hartati','Perempuan','Tidore Kepulauan','1988-05-31','Buddha','Gg. Basoka No. 585, Jayapura 52907, Lampung',2019,NULL,1),(22,'9190363307','Puput Wijayanti S.Pd','Laki-laki','Gorontalo','1988-05-31','Kristen','Jr. Raden No. 385, Sungai Penuh 55009, KalTeng',2020,NULL,1),(23,'9824206024','Indah Padmasari M.TI.','Perempuan','Metro','1954-06-30','Hindu','Ds. Yos No. 341, Banjar 33332, KalUt',2019,NULL,0),(24,'9889154517','Ira Agustina','Perempuan','Banjarbaru','1949-02-03','Hindu','Ki. Yosodipuro No. 59, Tual 79419, Jambi',2020,NULL,0),(25,'9040967496','Gina Rahayu S.IP','Perempuan','Balikpapan','1948-05-05','Kristen','Gg. Wahid No. 566, Kotamobagu 13177, Lampung',2020,NULL,0),(26,'9707862307','Nadine Purnawati S.T.','Laki-laki','Malang','1986-08-02','Hindu','Jr. Astana Anyar No. 286, Sawahlunto 29932, KalBar',2020,NULL,0),(27,'9772817096','Prabawa Garang Maheswara S.Farm','Laki-laki','Jambi','1970-09-25','Kristen','Ki. Perintis Kemerdekaan No. 675, Tomohon 74982, BaBel',2020,NULL,0),(28,'9215202318','Abyasa Tamba S.IP','Perempuan','Sibolga','1929-09-25','Kristen','Jln. Asia Afrika No. 80, Surakarta 24676, DKI',2019,NULL,1),(29,'9833627718','Nasim Hutasoit','Laki-laki','Surabaya','1988-05-31','Islam','Psr. Pasteur No. 366, Palangka Raya 75989, Gorontalo',2019,NULL,1),(30,'9323471744','Mursinin Sitompul','Laki-laki','Yogyakarta','1938-05-01','Islam','Ki. Ketandan No. 135, Depok 70100, KalTeng',2020,NULL,0),(31,'9018130491','Nasim Nasab Putra','Laki-laki','Ambon','1988-05-31','Buddha','Psr. Kartini No. 986, Kupang 51049, DIY',2019,NULL,0),(32,'9452722567','Sarah Utami','Perempuan','Palangka Raya','1941-02-11','Buddha','Kpg. Rajiman No. 126, Langsa 47443, KalUt',2019,NULL,0),(33,'9517043459','Bambang Samosir M.Farm','Laki-laki','Banjarbaru','1988-05-31','Islam','Jr. Casablanca No. 363, Malang 72201, KepR',2019,NULL,0),(34,'9270649478','Balapati Halim S.Kom','Perempuan','Tual','1972-02-28','Islam','Ds. Qrisdoren No. 285, Padangsidempuan 40769, Aceh',2019,NULL,1),(35,'9370725167','Julia Handayani','Perempuan','Bengkulu','1978-01-12','Hindu','Kpg. Ters. Jakarta No. 497, Palangka Raya 39573, JaTim',2019,NULL,0),(36,'9468110482','Kurnia Sitompul','Laki-laki','Cilegon','1933-04-10','Hindu','Psr. Teuku Umar No. 27, Mojokerto 23404, KalTim',2019,NULL,1),(37,'9048938850','Paiman Kusumo','Laki-laki','Bogor','1935-08-12','Kristen','Kpg. Kali No. 236, Prabumulih 53513, Banten',2019,NULL,1),(38,'9075789813','Oni Alika Puspita S.Gz','Perempuan','Tanjungbalai','1984-06-18','Hindu','Dk. Elang No. 726, Pontianak 58097, Bali',2019,NULL,0),(39,'9338230063','Rama Wacana','Laki-laki','Prabumulih','1988-05-31','Hindu','Ds. Ir. H. Juanda No. 823, Dumai 68554, SulUt',2020,NULL,1),(40,'9956560880','Jumadi Prasasta S.T.','Laki-laki','Kupang','1988-05-31','Hindu','Ds. Baya Kali Bungur No. 520, Bitung 70555, Maluku',2019,NULL,1),(41,'9471620204','Puspa Purwanti S.Farm','Laki-laki','Palopo','1951-07-28','Kristen','Psr. Bakin No. 257, Padangsidempuan 27478, KalSel',2020,NULL,1),(42,'9718097234','Cinthia Sudiati','Laki-laki','Batam','1952-05-30','Kristen','Dk. Cikapayang No. 203, Probolinggo 95169, Bali',2020,NULL,1),(43,'9717330605','Tantri Purnawati','Laki-laki','Probolinggo','1930-02-26','Kristen','Psr. Mahakam No. 502, Pariaman 43128, BaBel',2019,NULL,1),(44,'9223459220','Kiandra Hariyah','Perempuan','Tangerang','1988-05-31','Kristen','Dk. Sudirman No. 340, Payakumbuh 32409, MalUt',2020,NULL,0),(45,'9599203263','Maman Wibowo','Laki-laki','Batam','1950-02-14','Kristen','Dk. Banal No. 577, Kendari 80031, NTT',2019,NULL,1),(46,'9625585214','Ulva Siti Halimah','Laki-laki','Semarang','1937-03-29','Kristen','Ki. Karel S. Tubun No. 648, Cimahi 91956, SulUt',2020,NULL,0),(47,'9736190399','Asmianto Siregar','Laki-laki','Surakarta','1988-05-31','Kristen','Ds. Monginsidi No. 750, Cilegon 84845, SumBar',2019,NULL,0),(48,'9012493658','Kamaria Kani Purwanti S.Psi','Perempuan','Cirebon','1988-05-31','Kristen','Dk. Teuku Umar No. 160, Tegal 95227, MalUt',2019,NULL,1),(49,'9478712523','Artanto Gunarto','Laki-laki','Singkawang','1965-09-13','Hindu','Jr. Honggowongso No. 438, Mojokerto 21422, Maluku',2019,NULL,1),(50,'9866244664','Victoria Jessica Mayasari S.IP','Laki-laki','Pasuruan','1988-05-31','Buddha','Jr. Kiaracondong No. 360, Tebing Tinggi 11444, Banten',2020,NULL,1),(51,'9395179536','Kawaca Sihotang','Laki-laki','Binjai','1977-11-02','Buddha','Psr. Kyai Mojo No. 538, Surabaya 26610, Papua',2019,NULL,1);
/*!40000 ALTER TABLE `el_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_tugas`
--

DROP TABLE IF EXISTS `el_tugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_tugas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=upload,2=essay,3=ganda',
  `judul` varchar(255) NOT NULL,
  `durasi` int(11) DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 0,
  `tgl_buat` datetime DEFAULT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=tidak tampil di siswa, 1=tampil siswa',
  PRIMARY KEY (`id`),
  KEY `mapel_id` (`mapel_id`,`pengajar_id`,`type_id`),
  KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`type_id`),
  KEY `pengajar_id` (`pengajar_id`),
  CONSTRAINT `el_tugas_ibfk_1` FOREIGN KEY (`pengajar_id`) REFERENCES `el_pengajar` (`id`),
  CONSTRAINT `el_tugas_ibfk_2` FOREIGN KEY (`mapel_id`) REFERENCES `el_mapel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_tugas`
--

LOCK TABLES `el_tugas` WRITE;
/*!40000 ALTER TABLE `el_tugas` DISABLE KEYS */;
INSERT INTO `el_tugas` VALUES (1,1,1,1,'berbahasa',NULL,'',1,'2019-11-24 16:35:20',1),(2,5,1,3,'Konfigurasi',60,'',0,'2019-11-24 16:38:19',1),(3,1,2,1,'Upload Tugas DIsini',NULL,'<p>Dimohon untuk bekerjasama</p>\n',1,'2019-11-26 02:00:04',1),(4,1,2,3,'Memahami',30,'<p>Kerjakan dengan Baik dan Benar. Jangan Mencontek</p>\n',1,'2020-01-14 14:44:11',1),(5,4,2,2,'Latihan Essay',60,'',0,'2020-01-17 22:09:13',1);
/*!40000 ALTER TABLE `el_tugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_tugas_kelas`
--

DROP TABLE IF EXISTS `el_tugas_kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_tugas_kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tugas_id` (`tugas_id`,`kelas_id`),
  KEY `tugas_id_2` (`tugas_id`,`kelas_id`),
  KEY `kelas_id` (`kelas_id`),
  CONSTRAINT `el_tugas_kelas_ibfk_1` FOREIGN KEY (`tugas_id`) REFERENCES `el_tugas` (`id`),
  CONSTRAINT `el_tugas_kelas_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `el_kelas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_tugas_kelas`
--

LOCK TABLES `el_tugas_kelas` WRITE;
/*!40000 ALTER TABLE `el_tugas_kelas` DISABLE KEYS */;
INSERT INTO `el_tugas_kelas` VALUES (1,1,7),(2,2,7),(3,3,7),(7,3,8),(4,4,7),(5,4,8),(6,5,7);
/*!40000 ALTER TABLE `el_tugas_kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `el_tugas_pertanyaan`
--

DROP TABLE IF EXISTS `el_tugas_pertanyaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `el_tugas_pertanyaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `tugas_id` (`tugas_id`),
  KEY `tugas_id_2` (`tugas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `el_tugas_pertanyaan`
--

LOCK TABLES `el_tugas_pertanyaan` WRITE;
/*!40000 ALTER TABLE `el_tugas_pertanyaan` DISABLE KEYS */;
INSERT INTO `el_tugas_pertanyaan` VALUES (1,'<p>apa nama itu?</p>\r\n',1,2,1),(2,'<p>Sebutkan cara membaca?</p>\r\n',1,4,1),(3,'<p>Apa nama simbiosis?</p>\r\n',1,5,1);
/*!40000 ALTER TABLE `el_tugas_pertanyaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-14  1:39:51
