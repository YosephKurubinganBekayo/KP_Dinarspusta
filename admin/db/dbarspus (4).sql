-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2024 at 08:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbarspus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang`
--

CREATE TABLE `bidang` (
  `id` int(11) NOT NULL,
  `nama_bidang` varchar(100) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidang`
--

INSERT INTO `bidang` (`id`, `nama_bidang`, `id_departemen`, `gambar`) VALUES
(1, 'pengolahan bahan pustaka', 1, '1733500592_67531eb0ddedb.png');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `tanggal_terima` date NOT NULL,
  `id_buku` varchar(11) NOT NULL,
  `no_induk` varchar(50) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `no_kelas` varchar(11) NOT NULL,
  `eksamplar` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`tanggal_terima`, `id_buku`, `no_induk`, `judul_buku`, `pengarang`, `penerbit`, `no_kelas`, `eksamplar`, `jenis`, `keterangan`, `harga`) VALUES
('2019-07-25', '001', '001/Dinarpusta/19', 'The Practice of Teaching English', 'Drs. Slamet Riyanto, M. Pd', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 230900),
('2019-07-25', '002', '002/Dinarpusta/19', 'The Practice of Teaching English', 'Drs. Slamet Riyanto, M. Pd', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 230900),
('2019-07-25', '003', '003/Dinarpusta/19', 'Babat Habis Tes Bahasa Jepang N5', 'Pradana Instutyanto Putra', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '004', '004/Dinarpusta/19', 'Babat Habis Tes Bahasa Jepang N5', 'Pradana Instutyanto Putra', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '005', '005/Dinarpusta/19', 'Kitab PUEBI Pedoman Umum Ejaan Bahasa Indonesia', 'Eko Sugiarto', 'Andi Yogyakarta', '899', 1, 'F', 'APBD 2019', 118000),
('2019-07-25', '006', '006/Dinarpusta/19', 'Kitab PUEBI Pedoman Umum Ejaan Bahasa Indonesia', 'Eko Sugiarto', 'Andi Yogyakarta', '899', 1, 'F', 'APBD 2019', 118000),
('2019-07-25', '007', '007/Dinarpusta/19', 'Simple English Grammar Pintar Kuasai Tata Bahasa Inggris', 'Suratman Dahlan dan Iswan A. Thais', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 85600),
('2019-07-25', '008', '008/Dinarpusta/19', 'Simple English Grammar Pintar Kuasai Tata Bahasa Inggris', 'Suratman Dahlan dan Iswan A. Thais', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 85600),
('2019-07-25', '009', '009/Dinarpusta/19', 'Mudah Dan Lancar Belajar Bahasa Jepang Pariwisata dan Perhotelan', 'Isa Wahjoedi', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '010', '010/Dinarpusta/19', 'Mudah Dan Lancar Belajar Bahasa Jepang Pariwisata dan Perhotelan', 'Isa Wahjoedi', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '011', '011/Dinarpusta/19', 'Using Good English For TOEFL Preparation', 'M. Zainul Arifin PWD', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 95600),
('2019-07-25', '012', '012/Dinarpusta/19', 'Changing Times Changing Tenses', 'Drs. Slamet Riyanto, M. Pd', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 95600),
('2019-07-25', '013', '013/Dinarpusta/19', 'MOMIJI Mahir Berbahasa Jepang Tanpa Guru', 'Larasasri Ratnaningtyas', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 83800),
('2019-07-25', '014', '014/Dinarpusta/19', 'MOMIJI Mahir Berbahasa Jepang Tanpa Guru', 'Larasasri Ratnaningtyas', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 83800),
('2019-07-25', '015', '015/Dinarpusta/19', 'Mandarin For Shopping Bahasa Mandarin Praktis untuk berbelanja', 'Sudono Noto Pradono', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 119800),
('2019-07-25', '016', '016/Dinarpusta/19', 'Mandarin For Shopping Bahasa Mandarin Praktis untuk berbelanja', 'Sudono Noto Pradono', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 119800),
('2019-07-25', '017', '017/Dinarpusta/19', 'Bahasa JEPANG Pariwisata dan Perhotelan', 'Stephanus Ardi Prasetiawan', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '018', '018/Dinarpusta/19', 'Bahasa JEPANG Pariwisata dan Perhotelan', 'Stephanus Ardi Prasetiawan', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '019', '019/Dinarpusta/19', 'MERENDER dengan V-Ray Bagi Pemula', 'Khairul Nur Budiyanto (Oui Levio)', 'Andi Yogyakarta', '004', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '020', '020/Dinarpusta/19', 'MERENDER dengan V-Ray Bagi Pemula', 'Khairul Nur Budiyanto (Oui Levio)', 'Andi Yogyakarta', '004', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '021', '021/Dinarpusta/19', 'Lancar Percakapan Bahasa Jepang Pariwisata', 'Isa Wahjoedi', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 154000),
('2019-07-25', '022', '022/Dinarpusta/19', 'Lancar Percakapan Bahasa Jepang Pariwisata', 'Isa Wahjoedi', 'Andi Yogyakarta', '495', 1, 'F', 'APBD 2019', 154000),
('2019-07-25', '023', '023/Dinarpusta/19', 'Grammar Teaching to Teach Grammar in CONTEXT', 'Drs. Pardiyono, M.Pd', 'Andi Yogyakarta', '422', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '024', '024/Dinarpusta/19', 'Grammar Teaching to Teach Grammar in CONTEXT', 'Drs. Pardiyono, M.Pd', 'Andi Yogyakarta', '422', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '025', '025/Dinarpusta/19', 'Mengenal SASTRA LAMA', 'Eko Sugiarto', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 162600),
('2019-07-25', '026', '026/Dinarpusta/19', 'Mengenal SASTRA LAMA', 'Eko Sugiarto', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 162600),
('2019-07-25', '027', '027/Dinarpusta/19', 'ENSIKLOPEDIA Tempat-tempat indah dan menakjubkan Wonderful Word 3 ', 'Tim Penulis Worldbook', 'Andi Yogyakarta', '030', 1, 'F', 'APBD 2019', 83800),
('2019-07-25', '028', '028/Dinarpusta/19', 'ENSIKLOPEDIA Tempat-tempat indah dan menakjubkan Wonderful Word 2', 'Tim Penulis Worldbook', 'Andi Yogyakarta', '030', 1, 'F', 'APBD 2019', 83800),
('2019-07-25', '029', '029/Dinarpusta/19', 'ENSIKLOPEDIA Tempat-tempat indah dan menakjubkan Wonderful Word 1', 'Tim Penulis Worldbook', 'Andi Yogyakarta', '030', 1, 'F', 'APBD 2019', 178000),
('2019-07-25', '030', '030/Dinarpusta/19', 'ENSIKLOPEDIA Tempat-tempat indah dan menakjubkan Wonderful Word 1', 'Tim Penulis Worldbook', 'Andi Yogyakarta', '030', 1, 'F', 'APBD 2019', 178000),
('2019-07-25', '031', '031/Dinarpusta/19', 'Cara Taktis Memahami Teks BAHASA INGGRIS dan TOEFL READING', 'Yusup Priyasudiarja', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 150600),
('2019-07-25', '032', '032/Dinarpusta/19', '100 Language Functions for Fluent English', 'Slamet Riyanto', 'Andi Yogyakarta', '422', 1, 'F', 'APBD 2019', 150600),
('2019-07-25', '033', '033/Dinarpusta/19', '100 Language Functions for Fluent English', 'Slamet Riyanto', 'Andi Yogyakarta', '422', 1, 'F', 'APBD 2019', 66800),
('2019-07-25', '034', '034/Dinarpusta/19', 'English For Everyday Speaking', 'Sutanto Leo', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 66800),
('2019-07-25', '035', '035/Dinarpusta/19', 'English For Everyday Speaking', 'Sutanto Leo', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '036', '036/Dinarpusta/19', 'TOEIC Test of English For International Communication PREPARATION ', 'Slamet Riyanto dan Anna Christina Handhini', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '037', '037/Dinarpusta/19', 'TOEIC Test of English For International Communication PREPARATION ', 'Slamet Riyanto dan Anna Christina Handhini', 'Andi Yogyakarta', '421', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '038', '038/Dinarpusta/19', 'TOEIC Test of English as a Foreign Language PREPARATION', 'Drs. Slamet Riyanto, M. Pd dan Anna Christina Hand', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '039', '039/Dinarpusta/19', 'TOEIC Test of English as a Foreign Language PREPARATION', 'Drs. Slamet Riyanto, M. Pd dan Anna Christina Hand', 'Andi Yogyakarta', '490', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '040', '040/Dinarpusta/19', 'Saya Buta, tetapi, Saya Melihat', 'Jefri Adam dan pauline Leander', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '041', '041/Dinarpusta/19', 'Kekuatan Sebuah Pengharapan', 'Salmon Hutasoit', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '042', '042/Dinarpusta/19', 'Tangan Kiri Allah', 'Pdt.Ir.Timotius Arifin Tedjasukmana, DPM', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '043', '043/Dinarpusta/19', 'IBADAH Sebagai GAYA HIDUP', 'Pdt. Faoziduhu Lahagu, MA', 'Andi Yogyakarta', '264', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '044', '044/Dinarpusta/19', 'The Power of Prayer', 'Andrew Murray', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '045', '045/Dinarpusta/19', 'The Way Of The MASTER MINUTE', 'Ray Comfort dan Kirk Cameron', 'Andi Yogyakarta', '252', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '046', '046/Dinarpusta/19', 'PANGGILAN PADANG', 'Petrus Eko Handoyo', 'Andi Yogyakarta', '266', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '047', '047/Dinarpusta/19', 'Panggilan Berkhotbah', 'Budi Kasmanto', 'Andi Yogyakarta', '251', 1, 'F', 'APBD 2019', 61400),
('2019-07-25', '048', '048/Dinarpusta/19', 'PARENTING LEADERSHIP', 'Jekoi Silitonga', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 61400),
('2019-07-25', '049', '049/Dinarpusta/19', 'MENELADANI JEJAK YESUS SEBAGAI PEMIMPIN', 'A. B susanto', 'Andi Yogyakarta', '232.901', 1, 'F', 'APBD 2019', 123200),
('2019-07-25', '050', '050/Dinarpusta/19', 'When GOD Smiles', 'Ernest J. Cowper-Smith', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 123200),
('2019-07-25', '051', '051/Dinarpusta/19', 'PENGEJARAN yang MULIA', 'James W. Goll', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 82200),
('2019-07-25', '052', '052/Dinarpusta/19', 'MARKETPLACE TRANSFORMATION', 'Marsha Gabriel', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 82200),
('2019-07-25', '053', '053/Dinarpusta/19', 'MY JOURNEY to HEAVEN', 'Marvin J. Besteman dan Lorilee Craker', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 171000),
('2019-07-25', '054', '054/Dinarpusta/19', 'PENDEKATAN FENOMENOLOGIS terhadap TEORI PENCIPTAAN', 'Parlaungan Gultom, Ph.D.', 'Andi Yogyakarta', '213', 1, 'F', 'APBD 2019', 171000),
('2019-07-25', '055', '055/Dinarpusta/19', 'MUKJIZAT MASIH ADA', 'Delores Winder dan Bill Keith', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 125000),
('2019-07-25', '056', '056/Dinarpusta/19', 'Generasi Akhir Zaman yang Dirindukan Tuhan', 'Sudiyono dan Ruth Purweni', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 125000),
('2019-07-25', '057', '057/Dinarpusta/19', 'SMART CHRISTIAN LEADERSHIP', 'P. Boestam', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 171000),
('2019-07-25', '058', '058/Dinarpusta/19', 'THE SEASONS OF LIFE', 'Guana Tandjung', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 171000),
('2019-07-25', '059', '059/Dinarpusta/19', 'Kekudusan Seks', 'Ev. Daniel Alexander', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 123200),
('2019-07-25', '060', '060/Dinarpusta/19', 'Gembalakanlah Anak-anak Domba-ku', 'Ivy Beckwith', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 123200),
('2019-07-25', '061', '061/Dinarpusta/19', 'UNDERSTANDING THE LAWS OF DIVINE HEALING', 'Oppong Amoabeng', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 115600),
('2019-07-25', '062', '062/Dinarpusta/19', 'RADICAL DATING ', 'Diane Montgomery, Gabrielle Pickle dan Sarah Bubar', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 115600),
('2019-07-25', '063', '063/Dinarpusta/19', 'PENETRATING the DARKNESS', 'Jack Hayford bersama Rebecca Hayford Bauer', 'Andi Yogyakarta', '235', 1, 'F', 'APBD 2019', 85600),
('2019-07-25', '064', '064/Dinarpusta/19', 'MORE THAN SUCCESS Cara Meraih Kesuksesan Sejati', 'Theophilus Richard Barahama', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 85600),
('2019-07-25', '065', '065/Dinarpusta/19', 'Perburuan \"Harta\" bagi Kerajaan Allah', 'Kevin Dedmon', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '066', '066/Dinarpusta/19', 'MY TRIP to HEAVEN', 'David E. Taylor', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '067', '067/Dinarpusta/19', 'Mengungkap Segi Pujian dan Penyembahan', 'Bob Sorge', 'Andi Yogyakarta', '242', 1, 'F', 'APBD 2019', 75400),
('2019-07-25', '068', '068/Dinarpusta/19', 'Mengungkap Segi Pujian dan Penyembahan', 'Bob Sorge', 'Andi Yogyakarta', '242', 1, 'F', 'APBD 2019', 75400),
('2019-07-25', '069', '069/Dinarpusta/19', 'Penjaraku...Gerejaku...', 'Lukfan Layadi', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 101000),
('2019-07-25', '070', '070/Dinarpusta/19', 'Penjaraku...Gerejaku...', 'Lukfan Layadi', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 101000),
('2019-07-25', '071', '071/Dinarpusta/19', 'PENYEDIAAN TOTAL', 'Tonny Subiantono', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 213800),
('2019-07-25', '072', '072/Dinarpusta/19', 'PENYEDIAAN TOTAL', 'Tonny Subiantono', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 213800),
('2019-07-25', '073', '073/Dinarpusta/19', 'PENYEDIAAN TOTAL', 'Tonny Subiantono', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 128400),
('2019-07-25', '074', '074/Dinarpusta/19', 'Kebenaran di Atas Kebenaran', 'Samuel Hutabarat', 'Andi Yogyakarta', '239', 1, 'F', 'APBD 2019', 128400),
('2019-07-25', '075', '075/Dinarpusta/19', 'Kebenaran di Atas Kebenaran', 'Samuel Hutabarat', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 154000),
('2019-07-25', '076', '076/Dinarpusta/19', 'Kebenaran di Atas Kebenaran', 'Samuel Hutabarat', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 154000),
('2019-07-25', '077', '077/Dinarpusta/19', 'PELANGI di Balik BADAI', 'Nicodemus Chen', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 162600),
('2019-07-25', '078', '078/Dinarpusta/19', 'PELANGI di Balik BADAI', 'Nicodemus Chen', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 162600),
('2019-07-25', '079', '079/Dinarpusta/19', 'PELANGI di Balik BADAI', 'Nicodemus Chen', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 109500),
('2019-07-25', '080', '080/Dinarpusta/19', 'Kanker BUKAN AKHIR SEGALANYA', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 109500),
('2019-07-25', '081', '081/Dinarpusta/19', 'Kanker BUKAN AKHIR SEGALANYA', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 135200),
('2019-07-25', '082', '082/Dinarpusta/19', 'Kanker BUKAN AKHIR SEGALANYA', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 135200),
('2019-07-25', '083', '083/Dinarpusta/19', 'RAHASIA DI BALIK GEMBALA dan DOMBA', 'Noor Anggraito', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 116400),
('2019-07-25', '084', '084/Dinarpusta/19', 'RAHASIA DI BALIK GEMBALA dan DOMBA', 'Noor Anggraito', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 116400),
('2019-07-25', '085', '085/Dinarpusta/19', 'REHABEAM THE FORGETTEN KING', 'Paulus Igunata Sutedjo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 85600),
('2019-07-25', '086', '086/Dinarpusta/19', 'KAPASITAS TANPA BATAS', 'Sukamal B. Fadelan', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 85600),
('2019-07-25', '087', '087/Dinarpusta/19', 'Theologi Proper', 'Pdt. Jonar T.H. Situmorang, M.A.', 'Andi Yogyakarta', '231', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '088', '088/Dinarpusta/19', 'GENERASI INSPIRASI', 'Karel Koro', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '089', '089/Dinarpusta/19', 'GEREJA IMITASI', 'Pdt. Jekoi Silitonga', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 66800),
('2019-07-25', '090', '090/Dinarpusta/19', 'GOD\'S AMAZING MIRACLES', 'James L. Garlow dan Keith Wall', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 66800),
('2019-07-25', '091', '091/Dinarpusta/19', 'MOMENTUM ', 'Eric Johnson dan Bill Johnson', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '092', '092/Dinarpusta/19', 'GEREJA yang MENGAGUMKAN SESUAI POLA PERJANJIAN BARU (Members Of One Another)', 'Dennis McCallum', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '093', '093/Dinarpusta/19', 'MENJADI PEMIMPIN UNGGUL dengan Strategi Marketing ', 'Johny The', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 72000),
('2019-07-25', '094', '094/Dinarpusta/19', 'Membangun Manusia Rohani', 'Ev. J.H. Gondowijoyo', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 72000),
('2019-07-25', '095', '095/Dinarpusta/19', 'TAKLUKKAN RASA TAKUTMU', 'Elia Paul ang', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '096', '096/Dinarpusta/19', 'KEBENARAN YANG MEMBEBASKAN', 'Johny The', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 68400),
('2019-07-25', '097', '097/Dinarpusta/19', 'Kalahkan KEKHAWATIRAN dengan 5B', 'Pdt. Paulus Wiratno, M. Div', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 51400),
('2019-07-25', '098', '098/Dinarpusta/19', 'The Transforming Power of The Holy Spirit', 'Pdt. Ishak Sugianto', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 51400),
('2019-07-25', '099', '099/Dinarpusta/19', 'The Heaven ANSWER BOOK', 'Billy Graham', 'Andi Yogyakarta', '236.2', 1, 'F', 'APBD 2019', 60000),
('2019-07-25', '100', '100/Dinarpusta/19', 'Kingdom of GOD ', 'Pdt. Dr. Rainer Scheunemann', 'Andi Yogyakarta', '232.901', 1, 'F', 'APBD 2019', 60000),
('2018-11-28', '1000', '1000/Dinarpusta/19', 'Adobe Photoshop CC ', 'Th. Arie Prabawati ', 'Andi Yogyakarta', '006.696', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1001', '1001/Dinarpusta/19', 'Adobe Photoshop CC ', 'Th. Arie Prabawati ', 'Andi Yogyakarta', '006.696', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1002', '1002/Dinarpusta/19', 'Aplikasi Excel untuk perhitungan keuangan Syariah ', 'Th. Arie Prabawati ', 'Andi Yogyakarta', '005.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1003', '1003/Dinarpusta/19', 'Aplikasi Excel untuk perhitungan keuangan Syariah ', 'Th. Arie Prabawati ', 'Andi Yogyakarta', '005.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1004', '1004/Dinarpusta/19', 'Kupas Tuntas pivotchart & pivottable Microsoft Excel ', 'Th. Arie Prabawati ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1005', '1005/Dinarpusta/19', 'Kupas Tuntas pivotchart & pivottable Microsoft Excel ', 'Th. Arie Prabawati ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1006', '1006/Dinarpusta/19', 'IPv6 Fondasi Internet Masa Depan ', 'Fl. Sigit suyantoro ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1007', '1007/Dinarpusta/19', 'IPv6 Fondasi Internet Masa Depan ', 'Fl. Sigit suyantoro ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1008', '1008/Dinarpusta/19', 'Trik Mudah menjebol sekaligus mengamankan PASSWORD ', 'Feri Sulianta ', 'Andi Yogyakarta', '005', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1009', '1009/Dinarpusta/19', 'Trik Mudah menjebol sekaligus mengamankan PASSWORD ', 'Feri Sulianta ', 'Andi Yogyakarta', '005', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '101', '101/Dinarpusta/19', 'PANDUAN UTAMA dalam meracik KHOTBAH yang BAIK', 'Hasanema Wau', 'Andi Yogyakarta', '251', 1, 'F', 'APBD 2019', 82200),
('2018-11-28', '1010', '1010/Dinarpusta/19', '155 Tips & Trik Populer Microsoft Excel 2010-2013-2016', 'M.Leo agung', 'Andi Yogyakarta', '005.265', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1011', '1011/Dinarpusta/19', '155 Tips & Trik Populer Microsoft Excel 2010-2013-2016', 'M.Leo agung', 'Andi Yogyakarta', '005.265', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1012', '1012/Dinarpusta/19', 'Mengelola Database Microsoft dengan pivotTable & pivotChart ', 'M.Leo agung', 'Andi Yogyakarta', '005.265', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1013', '1013/Dinarpusta/19', 'Mengelola Database Microsoft dengan pivotTable & pivotChart ', 'M.Leo agung', 'Andi Yogyakarta', '005.265', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1014', '1014/Dinarpusta/19', 'Buku Pintar Virtualisasi ', 'Athailah, S.Kom.', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1015', '1015/Dinarpusta/19', 'Buku Pintar Virtualisasi ', 'Athailah, S.Kom.', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1016', '1016/Dinarpusta/19', 'Teknik Perancangan Arsitektur Sistem Informasi ', 'Feri Sulianta', 'Andi Yogyakarta', '005.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1017', '1017/Dinarpusta/19', 'Teknik Perancangan Arsitektur Sistem Informasi ', 'Feri Sulianta', 'Andi Yogyakarta', '005.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1018', '1018/Dinarpusta/19', 'Buku Pintas App Inventor untuk pemula', 'Abdul Kadir ', 'Andi Yogyakarta', '006.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1019', '1019/Dinarpusta/19', 'Buku Pintas App Inventor untuk pemula', 'Abdul Kadir ', 'Andi Yogyakarta', '006.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '102', '102/Dinarpusta/19', 'PANDUAN PRAKTIS PENERAPAN', 'S. Christian Robirosa', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 82200),
('2018-11-28', '1020', '1020/Dinarpusta/19', 'Joomla 3 untuk membangun website multibidang                        ', 'Ignas ', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1021', '1021/Dinarpusta/19', 'Joomla 3 untuk membangun website multibidang                        ', 'Ignas ', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1022', '1022/Dinarpusta/19', 'Microsoft word,Excel, dan power point 2013 untuk karyawan ', 'Fl. Sigit suyantoro ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1023', '1023/Dinarpusta/19', 'Microsoft word,Excel, dan power point 2013 untuk karyawan ', 'Fl. Sigit suyantoro ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1024', '1024/Dinarpusta/19', 'Scratch for Arduino (S4A)', 'Abdul Kadir ', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1025', '1025/Dinarpusta/19', 'Scratch for Arduino (S4A)', 'Abdul Kadir ', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1026', '1026/Dinarpusta/19', 'Pemrograman Web Dinamis Menggunakan Java Server Pages dengan Database Relasional MYSQL', 'Mukhamad Masrur', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1027', '1027/Dinarpusta/19', 'Pemrograman Web Dinamis Menggunakan Java Server Pages dengan Database Relasional MYSQL', 'Mukhamad Masrur', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1028', '1028/Dinarpusta/19', 'Buku pintar App Inventor ', 'Abdul Kadir ', 'Andi Yogyakarta', '006.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1029', '1029/Dinarpusta/19', 'Buku pintar App Inventor ', 'Abdul Kadir ', 'Andi Yogyakarta', '006.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '103', '103/Dinarpusta/19', 'Kingdom Worship Revolution', 'Bram Soei Ndoen', 'Andi Yogyakarta', '264', 1, 'F', 'APBD 2019', 121600),
('2018-11-28', '1030', '1030/Dinarpusta/18', 'Kodu panduan mudah dan menyenangkan belajar pemrograman ', 'Hany Ferdinando,M.Sc', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1031', '1031/Dinarpusta/18', 'Kodu panduan mudah dan menyenangkan belajar pemrograman ', 'Hany Ferdinando,M.Sc', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1032', '1032/Dinarpusta/18', 'Pemrograman PHP dan MySQL untuk pemula ', 'M.Leo Agung', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1033', '1033/Dinarpusta/18', 'Pemrograman PHP dan MySQL untuk pemula ', 'M.Leo Agung', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1034', '1034/Dinarpusta/18', 'Microsoft Word 2013 untuk penulis tesis dan karya ilmiah ', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1035', '1035/Dinarpusta/18', 'Microsoft Word 2013 untuk penulis tesis dan karya ilmiah ', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1036', '1036/Dinarpusta/18', 'Microsoft Windows 10 untuk pemula ', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1037', '1037/Dinarpusta/18', 'Microsoft Windows 10 untuk pemula ', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1038', '1038/Dinarpusta/18', 'MATLAB untuk Aljabar Linier & Matriks ', 'Dr.Eng.R.H.Sianipar ', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1039', '1039/Dinarpusta/18', 'MATLAB untuk Aljabar Linier & Matriks ', 'Dr.Eng.R.H.Sianipar ', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '104', '104/Dinarpusta/19', 'Menjadi Suami Yang Andal', 'Indonesia Focus On The Family', 'Andi Yogyakarta', '265.5', 1, 'F', 'APBD 2019', 121600),
('2018-11-28', '1040', '1040/Dinarpusta/18', 'Belajar Mudah MATLAB beserta Aplikasinya ', 'Yeskha M.M.', 'Andi Yogyakarta', '006.07', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1041', '1041/Dinarpusta/18', 'Belajar Mudah MATLAB beserta Aplikasinya ', 'Yeskha M.M.', 'Andi Yogyakarta', '006.07', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1042', '1042/Dinarpusta/18', 'SIMULINK MATLAB Belajar dari contoh ', 'R.H.Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1043', '1043/Dinarpusta/18', 'SIMULINK MATLAB Belajar dari contoh ', 'R.H.Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1044', '1044/Dinarpusta/18', 'Sistem Informasi Manajemen', 'Th.Arie P.', 'Andi Yogyakarta', '004.068', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1045', '1045/Dinarpusta/18', 'Sistem Informasi Manajemen', 'Th.Arie P.', 'Andi Yogyakarta', '004.068', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1046', '1046/Dinarpusta/18', 'Pemrograman Java untuk Programmer ', 'R.H.Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1047', '1047/Dinarpusta/18', 'Pemrograman Java untuk Programmer ', 'R.H.Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1048', '1048/Dinarpusta/18', 'Komputasi untuk sains & teknik dengan Matlab ', 'RH.Sianipar', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1049', '1049/Dinarpusta/18', 'Komputasi untuk sains & teknik dengan Matlab ', 'RH.Sianipar', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '105', '105/Dinarpusta/19', 'PANDANGAN KONSELING BIBLIKA vs INTEGRASI', 'Pdt. Benjamin S. Utomo, Ph.D.', 'Andi Yogyakarta', '220.7', 1, 'F', 'APBD 2019', 64000),
('2018-11-28', '1050', '1050/Dinarpusta/18', 'Pemrograman Android dengan ANDROID STUDIO IDE ', 'Seng Hansun,S.Si.,M.Cs.', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1051', '1051/Dinarpusta/18', 'Pemrograman Android dengan ANDROID STUDIO IDE ', 'Seng Hansun,S.Si.,M.Cs.', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1052', '1052/Dinarpusta/18', 'Pemrograman MATLAB untuk MAHASISWA ', 'Ir.Ramses Yohannes Hutahaean,M.T>', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1053', '1053/Dinarpusta/18', 'Pemrograman MATLAB untuk MAHASISWA ', 'Ir.Ramses Yohannes Hutahaean,M.T>', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1054', '1054/Dinarpusta/18', 'Teori Aplikasi C++ dengan contoh lebih dari 280 source code', 'R.H.Sianipar', 'Andi Yogyakarta', '006.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1055', '1055/Dinarpusta/18', 'Teori Aplikasi C++ dengan contoh lebih dari 280 source code', 'R.H.Sianipar', 'Andi Yogyakarta', '006.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1056', '1056/Dinarpusta/18', 'Sinyal & sistem  dengan Matlab ', 'Dr.Eng RH.Sianipar, S.T., M.Eng.', 'Andi Yogyakarta', '004', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1057', '1057/Dinarpusta/18', 'Sinyal & sistem  dengan Matlab ', 'Dr.Eng RH.Sianipar, S.T., M.Eng.', 'Andi Yogyakarta', '004', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1058', '1058/Dinarpusta/18', 'Fundamental SQL Database ORACLE 12c', 'Halim Budi Santoso', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1059', '1059/Dinarpusta/18', 'Fundamental SQL Database ORACLE 12c', 'Halim Budi Santoso', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '106', '106/Dinarpusta/19', 'Woman and Breast 1', 'Steven Christian', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 64000),
('2018-11-28', '1060', '1060/Dinarpusta/18', 'Cerita Rakyat Jerman', 'Tantrini Andang', 'Andi Yogyakarta', '398.209', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1061', '1061/Dinarpusta/18', 'Cerita Rakyat Jerman', 'Tantrini Andang', 'Andi Yogyakarta', '398.209', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1062', '1062/Dinarpusta/18', 'Cerita Rakyat Australia', 'Erlita Pratiwi', 'Andi Yogyakarta', '398.209', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1063', '1063/Dinarpusta/18', 'Cerita Rakyat Australia', 'Erlita Pratiwi', 'Andi Yogyakarta', '398.209', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1064', '1064/Dinarpusta/18', 'Kumpulan Cerita Dongeng: Marchen', 'Andrea', 'Andi Yogyakarta', '398.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1065', '1065/Dinarpusta/18', 'Kumpulan Cerita Dongeng: Marchen', 'Andrea', 'Andi Yogyakarta', '398.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1066', '1066/Dinarpusta/18', 'Super Magic Image', 'Igrea Siswanto', 'Andi Yogyakarta', '160', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1067', '1067/Dinarpusta/18', 'Super Magic Image', 'Igrea Siswanto', 'Andi Yogyakarta', '160', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1068', '1068/Dinarpusta/18', 'The Tasteless Country', 'Mama Deora', 'Andi Yogyakarta', '398.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1069', '1069/Dinarpusta/18', 'The Tasteless Country', 'Mama Deora', 'Andi Yogyakarta', '398.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '107', '107/Dinarpusta/19', 'Woman and Breast 2', 'Steven Christian', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2018-11-28', '1070', '1070/Dinarpusta/18', 'Etika profesi Hukum', 'Dr. H. Sutrisno, S. H., M. Hum', 'Andi Yogyakarta', '174.9', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1071', '1071/Dinarpusta/18', 'Teori Organisasi Edisi 4', 'Prof. Gudono, Ph. D., CMA., CA', 'Andi Yogyakarta', '060', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1072', '1072/Dinarpusta/18', 'Pemrograman Arduino menggunakan ArduBlock', 'Abdul Kadir ', 'Andi Yogyakarta', '005.265', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1073', '1073/Dinarpusta/18', 'Pemrograman Arduino menggunakan ArduBlock', 'Abdul Kadir ', 'Andi Yogyakarta', '005.265', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1074', '1074/Dinarpusta/18', 'Pemrograman Metode Elemen Hingga berbasis MATLAB', 'Dr. Prabuono Buyung Kosasih', 'Andi Yogyakarta', '005.1092', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1075', '1075/Dinarpusta/18', 'Pemrograman Metode Elemen Hingga berbasis MATLAB', 'Dr. Prabuono Buyung Kosasih', 'Andi Yogyakarta', '005.1092', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1076', '1076/Dinarpusta/18', 'Pemrograman MATLAB', 'R. H. Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1077', '1077/Dinarpusta/18', 'Pemrograman MATLAB', 'R. H. Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1078', '1078/Dinarpusta/18', 'Belajar sendiri pasti bisa Pemrograman C++', 'Abdul Kadir ', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1079', '1079/Dinarpusta/18', 'Belajar sendiri pasti bisa Pemrograman C++', 'Abdul Kadir ', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '108', '108/Dinarpusta/19', 'Gaining by Losing', 'J.D. Greear', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 68400),
('2018-11-28', '1080', '1080/Dinarpusta/18', 'Dasar pemrograman Internet untuk proyek berbasis Arduino', 'Abdul Kadir ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1081', '1081/Dinarpusta/18', 'Dasar pemrograman Internet untuk proyek berbasis Arduino', 'Abdul Kadir ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1082', '1082/Dinarpusta/18', 'Manajemen Sumber Daya Manusia Strategik', 'Dr. Sopiah, M. Pd., M. M', 'Andi Yogyakarta', '658.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1083', '1083/Dinarpusta/18', 'Ensiklopedia Pendidikan & Psikologi', 'Zainal Aqib', 'Andi Yogyakarta', '370.15', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1084', '1084/Dinarpusta/18', 'From Zero to a Pro', 'Abdul Kadir ', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1085', '1085/Dinarpusta/18', 'Komputasi Numerik', 'Suarga , M. Sc, M. Math, Ph. D', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1086', '1086/Dinarpusta/18', 'Komputasi Numerik', 'Suarga , M. Sc, M. Math, Ph. D', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1087', '1087/Dinarpusta/18', 'dasar analisis & perancangan Pemrograman Berorientasi Objek menggunakan Java', 'Dr. Eng R. H. Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1088', '1088/Dinarpusta/18', 'dasar analisis & perancangan Pemrograman Berorientasi Objek menggunakan Java', 'Dr. Eng R. H. Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1089', '1089/Dinarpusta/18', 'Turning point , 11 Hikmat Menuju Sukses', 'Sandy Triyasa', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2019', 0),
('2019-07-25', '109', '109/Dinarpusta/19', 'GPS : GOD\'S Positioning System', 'Therese Marszalek', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 77000),
('2018-11-28', '1090', '1090/Dinarpusta/18', 'Turning point , 11 Hikmat Menuju Sukses', 'Sandy Triyasa', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1091', '1091/Dinarpusta/18', 'Hidup adalah sebuah rangkaian kisah', 'Kennedy Jenifer Dhillon', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1092', '1092/Dinarpusta/18', 'Hidup adalah sebuah rangkaian kisah', 'Kennedy Jenifer Dhillon', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1093', '1093/Dinarpusta/18', 'Hidup adalah sebuah rangkaian kisah', 'Kennedy Jenifer Dhillon', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1094', '1094/Dinarpusta/18', 'Love never fails', 'Budi Abdipatra', 'Andi Yogyakarta', '243', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1095', '1095/Dinarpusta/18', 'Love never fails', 'Budi Abdipatra', 'Andi Yogyakarta', '243', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1096', '1096/Dinarpusta/18', 'Menit masa depan', 'Bob Gass', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1097', '1097/Dinarpusta/18', 'Melangkah lagi', 'Bob Gass', 'Andi Yogyakarta', '243', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1098', '1098/Dinarpusta/18', 'Melupakan masa lalu', 'Bob Gass', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1099', '1099/Dinarpusta/18', 'Food for your soul', 'Manati I. Zega', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '110', '110/Dinarpusta/19', 'God Told Me', 'Jim Samra', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 77000),
('2018-11-28', '1100', '1100/Dinarpusta/18', 'Food for your soul', 'Manati I. Zega', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1101', '1101/Dinarpusta/18', 'Totally for Jesus 3', 'Sariwati Goenawan', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1102', '1102/Dinarpusta/18', 'Totally for Jesus 3', 'Sariwati Goenawan', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1103', '1103/Dinarpusta/18', 'Ibadah Sebagai Gaya Hidup', 'Pdt. Faoziduhu Lahagu, MA', 'Andi Yogyakarta', '264', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1104', '1104/Dinarpusta/18', 'Ibadah Sebagai Gaya Hidup', 'Pdt. Faoziduhu Lahagu, MA', 'Andi Yogyakarta', '264', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1105', '1105/Dinarpusta/18', 'Person Excellence ', 'Pdt. Pengky Andu', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1106', '1106/Dinarpusta/18', 'Person Excellence ', 'Pdt. Pengky Andu', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1107', '1107/Dinarpusta/18', 'Devosi Hati', 'Tonny Subiantono', 'Andi Yogyakarta', '252', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1108', '1108/Dinarpusta/18', 'Devosi Hati', 'Tonny Subiantono', 'Andi Yogyakarta', '252', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1109', '1109/Dinarpusta/18', 'Limit Beyond Limitation', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '111', '111/Dinarpusta/19', 'Menyusun Khotbah Yang Dinamis dan Efektif', 'Kalis Stevanus', 'Andi Yogyakarta', '251', 1, 'F', 'APBD 2019', 83800),
('2018-11-28', '1110', '1110/Dinarpusta/18', 'Menyiapkan Khotbah Biografi Secara Praktis', 'Noor Anggraito', 'Andi Yogyakarta', '251', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1111', '1111/Dinarpusta/18', 'You Are a wow!man', 'Fifi Sarah Tedjasukmana', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1112', '1112/Dinarpusta/18', 'You Are a wow!man', 'Fifi Sarah Tedjasukmana', 'Andi Yogyakarta', '0', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1113', '1113/Dinarpusta/18', 'You Are a wow!man', 'Fifi Sarah Tedjasukmana', 'Andi Yogyakarta', '0', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1114', '1114/Dinarpusta/18', 'Making More Beautiful Life', 'Elia Paul Ang', 'Andi Yogyakarta', '0', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1115', '1115/Dinarpusta/18', 'Fashioned For Life', 'Benarty Suhali', 'Andi Yogyakarta', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1116', '1116/Dinarpusta/18', 'Fashioned For Life', 'Benarty Suhali', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1117', '1117/Dinarpusta/18', 'Fashioned For Life', 'Benarty Suhali', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1118', '1118/Dinarpusta/18', 'Life Is Easy But Not Simple', 'Budi Untung', 'Andi Yogyakarta', '618.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1119', '1119/Dinarpusta/18', 'Mukjizat Kesembuhan Untuk Anda', 'Indrawan Eleeas', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '112', '112/Dinarpusta/19', 'The Coming of The King of Kings', 'Jaap Dieleman', 'Andi Yogyakarta', '236', 1, 'F', 'APBD 2019', 83800),
('2018-11-28', '1120', '1120/Dinarpusta/18', 'Mukjizat Kesembuhan Untuk Anda', 'Indrawan Eleeas', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1121', '1121/Dinarpusta/18', 'Vita Suamimu Bukan Malaikat', 'Daniel Agus Setianto', 'Andi Yogyakarta', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1122', '1122/Dinarpusta/18', 'Vita Suamimu Bukan Malaikat', 'Daniel Agus Setianto', 'Andi Yogyakarta', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1123', '1123/Dinarpusta/18', 'Dasar-Dasar Hermeneutik', 'Kresbinol Labobar', 'Andi Yogyakarta', '220.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1124', '1124/Dinarpusta/18', 'Dasar-Dasar Hermeneutik', 'Kresbinol Labobar', 'Andi Yogyakarta', '220.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1125', '1125/Dinarpusta/18', 'Dasar-Dasar Hermeneutik', 'Kresbinol Labobar', 'Andi Yogyakarta', '220.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1126', '1126/Dinarpusta/18', 'Makin Tertekan Makin Berkemenangan', 'Pdt. Dr.Rubin Adi Abraham', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1127', '1127/Dinarpusta/18', 'Makin Tertekan Makin Berkemenangan', 'Pdt. Dr.Rubin Adi Abraham', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1128', '1128/Dinarpusta/18', 'Life Is Easy But Not Simple', 'Budi Untung', 'Andi Yogyakarta', '349', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1129', '1129/Dinarpusta/18', 'Kejadian Sampai YESUS dalam Satu Jam', 'John S. Shanan, M. D.', 'Andi Yogyakarta', '230.041', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '113', '113/Dinarpusta/19', 'Prinsip-prinsip Dasar dan Praktis Penafsiran Alkitab', 'Robert H. Stein', 'Andi Yogyakarta', '220.7', 1, 'F', 'APBD 2019', 82100),
('2018-11-28', '1130', '1130/Dinarpusta/18', 'My little star jocelyn', 'Yotam sugihyono', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1131', '1131/Dinarpusta/18', 'From jomblo to bojo', 'Xavier quentin pranata', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1132', '1132/Dinarpusta/18', 'Life is all miracles', 'Holy setyowati sie', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1133', '1133/Dinarpusta/18', 'Memulihkan anak bermasalah', 'Dominggus umbu deta', 'Andi Yogyakarta', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1134', '1134/Dinarpusta/18', 'Diangkat Tuhan Dari Keterpurukan Menuju Kelimpahan ', 'Adi S. Lukas', 'Andi Yogyakarta', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1135', '1135/Dinarpusta/18', 'Melangkah Dalam Kemenangan ', 'Agnes Maria Layantara', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1136', '1136/Dinarpusta/18', 'Inner Healing, Kesembuhan Batin dan Mencari Figur Bapa', 'Ev. Daniel Alexander', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1137', '1137/Dinarpusta/18', 'Destiny, Menemukan Tujuan Hidup Sebagaimana Telah Allah Tentukan', 'Steven Teo', 'Andi Yogyakarta', '510', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1138', '1138/Dinarpusta/18', 'Lonely People, Membangkitkan Roh Antusias', 'Warren W. Wiersbe', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1139', '1139/Dinarpusta/18', 'Mukjizat Sungguh Nyata', 'Corry Mira', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '114', '114/Dinarpusta/19', 'RADIANCE', 'Randy Dean', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 82100),
('2018-11-28', '1140', '1140/Dinarpusta/18', 'Menembus Batas, Berani Meraih Prestasi Dalam Keterbatasan Fisik', 'Jonar Situmorang', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1141', '1141/Dinarpusta/18', 'Vitamin Kehidupan Untuk Keluarga', 'Eko Nugroho', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1142', '1142/Dinarpusta/18', 'Mengalahkan Raksasa Kehidupan', 'Tony Tedjo', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1143', '1143/Dinarpusta/18', 'Menaging Transitions In Life', 'Steven Teo', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1144', '1144/Dinarpusta/18', 'Ketika Mukjizat Terjadi', 'Lynne Hammond', 'Andi Yogyakarta', '153.8', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1145', '1145/Dinarpusta/18', 'Ketika Mukjizat Terjadi', 'Lynne Hammond', 'Andi Yogyakarta', '226.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1146', '1146/Dinarpusta/18', 'Ketika Mukjizat Terjadi', 'Lynne Hammond', 'Andi Yogyakarta', '920', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1147', '1147/Dinarpusta/18', 'What The Bible Says About Grieving', 'Tim', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1148', '1148/Dinarpusta/18', 'Berani Hidup Beda Fokus Pada Tuhan', 'Tim Baker', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1149', '1149/Dinarpusta/18', 'Hidup Tanpa Kekurangan, Kunci Pembuka Berkat Tuhan Bagi Kita', 'Rudi Gunawan', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '115', '115/Dinarpusta/19', 'PERSONALITY PLUS at Work', 'Florence Littauer dan Rose Sweet', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 68400),
('2018-11-28', '1150', '1150/Dinarpusta/18', 'Hati Seorang Putra, Untaian Kesaksian Hidup Yang Bernilai Kerajaan', 'Ronny Daud Simeon', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1151', '1151/Dinarpusta/18', 'The Throne Of Grace, Meraih Kelimpahan dan Kasih Karunia Allah Melalui Anak Domba', 'Andrew Murray', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1152', '1152/Dinarpusta/18', 'Keluargaku Sorgaku, Menggenapi Perjanjian Berkat dalam Pernikahan Kudus', 'Ronny Daud Simeon', 'Andi Yogyakarta', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1153', '1153/Dinarpusta/18', 'Impossible Is Nothing', 'Johny The', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1154', '1154/Dinarpusta/18', 'Love Without Loose, Prinsip Pranikah Buat Anak Muda', 'Budi', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1155', '1155/Dinarpusta/18', 'Kisah Inspirasional Untuk Menumbuhkan Benih Keunggulan', 'Johny The', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1156', '1156/Dinarpusta/18', 'Leadership Plus, 1st Step To Be A successful Leader', 'Budi Abdipatra', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1157', '1157/Dinarpusta/18', 'Dari Kelaparan Menuju Kelimpahan, Kumpulan Khotbah Tentang Hidup Yang Dipulihkan  ', 'Pdt. Ir. Timotius Arifin Tedjasukmana, DPM', 'Andi Yogyakarta', '231.8', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1158', '1158/Dinarpusta/18', 'Jejak Jejak Kaki ', 'Margaret Fishback Powers', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1159', '1159/Dinarpusta/18', 'Life Revolution ', 'Pdt. Pengky Andu', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '116', '116/Dinarpusta/19', 'Panduan Lengkap Penafsiran Alkitab', 'DR. Rainer Scheunemann', 'Andi Yogyakarta', '220.7', 1, 'F', 'APBD 2019', 68400),
('2018-11-28', '1160', '1160/Dinarpusta/18', 'Lebih Dari Pemenang, Kumpulan Khotbah tentang Penyertaan Tuhan dalam Kehidupan Sehari-hari', 'Ranto Sari Siahaan', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1161', '1161/Dinarpusta/18', 'Spirit Motivitamin, 70 Kisah Inspirasional Pembangkit Iman', 'Samuel Cahyadi', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1162', '1162/Dinarpusta/18', 'Berani Hidup Total, Merenda Iman', 'Tim Baker', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1163', '1163/Dinarpusta/18', 'Menang Sukses Berhasil', 'K.A.M Jusuf Roni', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1164', '1164/Dinarpusta/18', 'From Emptyness to The Fullnes of Him, Dari Kejatuhan Menuju Kemuliaan', 'Lenijati Joerg', 'Andi Yogyakarta', '231.8', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1165', '1165/Dinarpusta/18', 'Expression of Joy, Merayakan Sukacita Bersama Allah', 'Helen Steiner Rice', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1166', '1166/Dinarpusta/18', 'Power of Spiritual Wisdom', 'Suprapto Ismudjito', 'Andi Yogyakarta', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1167', '1167/Dinarpusta/18', 'Menjadi Berkat Berbuah Lebat, Mencapai Kemaksimalan Hidup bagi Kemuliaan Allah', 'Pdt. Rubin Adi Abraham', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1168', '1168/Dinarpusta/18', 'Raising Up Your Standard', 'H. Petrus Nawawi', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1169', '1169/Dinarpusta/18', 'Why Me Lord?', 'Pdt. Pengky Andu', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '117', '117/Dinarpusta/19', 'The Creation Answer Book', 'Hank Hanagraaff', 'Andi Yogyakarta', '213', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '1170', '1170/Dinarpusta/18', 'Closer To The Kingdom Of God', 'Eluzai Frengky Utana', 'Andi Yogyakarta', '231', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1171', '1171/Dinarpusta/18', 'Menjadi Penulis Buku Rohani ', 'S. Rahoyo', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1172', '1172/Dinarpusta/18', 'Making Life Better, Kunci Pengembangan Diri Menjadi Lebih Baik Berdasar Nilai-nilai Alkitabiah', 'Pdt. Purim Marbun, M.Th.', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1173', '1173/Dinarpusta/18', 'Pintu Masih Terbuka, Percikan Perenungan Tentang Problematika Kehidupan ', 'Manati I. Zega', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1174', '1174/Dinarpusta/18', 'Menjadi Andal ', 'Yohanes Heryjanto', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1175', '1175/Dinarpusta/18', 'Walau Dijepit Tetap Melejit, Kumpulan Khotbah Tentang Hidup Berkemenangan Dalam Kesulitan ', 'Pdt. Rubin Adi Abraham', 'Andi Yogyakarta', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1176', '1176/Dinarpusta/18', 'Recharge Your Spirit', 'Meylani Ong', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1177', '1177/Dinarpusta/18', 'Menghadirkan Kerajaan Allah, Membangun Pelayanan Gereja yang Berorientasi pada Jiwa-jiwa', 'Dr. Ir. Fu Xie', 'Andi Yogyakarta', '262', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1178', '1178/Dinarpusta/18', 'Dahsyatnya Visi', 'Pdt. Obaja Tanto Setiawan', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1179', '1179/Dinarpusta/18', 'The Secret Of the Cross, Meraih Kehidupan Berkemenangan Melalui Jalan Salib Kristus', 'Andrew Murray', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '118', '118/Dinarpusta/19', 'Kuasa Kesepakatan', 'Irwan Halim', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '1180', '1180/Dinarpusta/18', 'Power From on High, Menggapai Kepenuhan Kristus Dengan Kuasa Dari Tempat Tinggi', 'Andrew Murray', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1181', '1181/Dinarpusta/18', 'Christ Our Life, Menjadi Serupa Dengan Kristus Yang Hidup Di Dalam Kita', 'Andrew Murray', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1182', '1182/Dinarpusta/18', 'Pelangi Kasih Di Balik Awan', 'Paulus Lie', 'Andi Yogyakarta', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0);
INSERT INTO `buku` (`tanggal_terima`, `id_buku`, `no_induk`, `judul_buku`, `pengarang`, `penerbit`, `no_kelas`, `eksamplar`, `jenis`, `keterangan`, `harga`) VALUES
('2018-11-28', '1183', '1183/Dinarpusta/18', 'Whaddup Mengalami Yesus With Secara Pribadi Jesus?', 'Denny Rope', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1184', '1184/Dinarpusta/18', 'Whaddup Mengalami Yesus With Secara Pribadi Jesus?', 'Denny Rope', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1185', '1185/Dinarpusta/18', 'Urapan Seorang Raja, Kunci Memahami Otoritas Kita Sebagai Anak Kerajaan', 'Iwan Setyawan Elyon', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1186', '1186/Dinarpusta/18', 'Urapan Seorang Raja, Kunci Memahami Otoritas Kita Sebagai Anak Kerajaan', 'Iwan Setyawan Elyon', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1187', '1187/Dinarpusta/18', 'Membangun Kesatuan Dalam Kristus', 'Pdt. Prof. Dr. (HC) Abraham Conrad Supit', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1188', '1188/Dinarpusta/18', 'Membangun Kesatuan Dalam Kristus', 'Pdt. Prof. Dr. (HC) Abraham Conrad Supit', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1189', '1189/Dinarpusta/18', 'Hamba Sejati, Mengembalikan Motivasi Pelayanan Yang Benar', 'Ev. Daniel Alexander', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '119', '119/Dinarpusta/19', 'The Way to Reign As King\'s in Life', 'Bram Soei Ndoen', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 41900),
('2018-11-28', '1190', '1190/Dinarpusta/18', 'Hamba Sejati, Mengembalikan Motivasi Pelayanan Yang Benar', 'Ev. Daniel Alexander', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1191', '1191/Dinarpusta/18', 'How To Become A Christian Leader, Prinsip-prinsi Kepemimpinan Kristen', 'Pdt. Prof. Dr. Ir. Bambang Yudho, M.Sc.,M.A.,Ph.D.', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1192', '1192/Dinarpusta/18', 'How To Become A Christian Leader, Prinsip-prinsi Kepemimpinan Kristen', 'Pdt. Prof. Dr. Ir. Bambang Yudho, M.Sc.,M.A.,Ph.D.', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1193', '1193/Dinarpusta/18', 'Hidup Dalam Berkat Allah', 'Gilbert Lumoindong', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1194', '1194/Dinarpusta/18', 'Membangun Kegerakan Allah Dalam Gereja', 'Sonny Zaluchu', 'Andi Yogyakarta', '262', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1195', '1195/Dinarpusta/18', 'Membangun Kegerakan Allah Dalam Gereja', 'Sonny Zaluchu', 'Andi Yogyakarta', '262', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1196', '1196/Dinarpusta/18', 'Next Level, Menuju Level Baru & Dimensi Lebih Besar', 'Paulus Suryadjaya', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1197', '1197/Dinarpusta/18', 'Power Of Hope, Harapan Adalah Benteng Terakhir Dari Iman', 'Salmon Hutasoit', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1198', '1198/Dinarpusta/18', 'Power Of Hope, Harapan Adalah Benteng Terakhir Dari Iman', 'Salmon Hutasoit', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1199', '1199/Dinarpusta/18', 'Mengobarkan Api Penyembahan, Menjadikan Penyembahan Sebagai Gaya Hidup  ', 'Obaja Tanto Setiawan', 'Andi Yogyakarta', '242', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '120', '120/Dinarpusta/19', 'Konseling yang Efektif dan Alkitabiah', 'Larry Crabb', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 41900),
('2018-11-28', '1200', '1200/Dinarpusta/18', 'Mengobarkan Api Penyembahan, Menjadikan Penyembahan Sebagai Gaya Hidup  ', 'Obaja Tanto Setiawan', 'Andi Yogyakarta', '242', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1201', '1201/Dinarpusta/18', 'Mengobarkan Api Penyembahan, Menjadikan Penyembahan Sebagai Gaya Hidup  ', 'Obaja Tanto Setiawan', 'Andi Yogyakarta', '242', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1202', '1202/Dinarpusta/18', 'Mujizat Masih Terus Berlangsung, Yesus Penyembuh Vol. 2', 'TIM', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1203', '1203/Dinarpusta/18', 'Mujizat Masih Terus Berlangsung, Yesus Penyembuh Vol. 2', 'TIM', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1204', '1204/Dinarpusta/18', 'Gue Gaul Tapi Ga\' Amburadul ', 'Ananda S. Tulus', 'Andi Yogyakarta', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1205', '1205/Dinarpusta/18', 'Rindu Untuk Melayani, Bagaimana Melayani Allah Dengan Penuh Kuasa ', 'Dr. Rubin Adi Abraham', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1206', '1206/Dinarpusta/18', 'Focus On Your High Calling', 'Lidanial', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1207', '1207/Dinarpusta/18', 'Focus On Your High Calling', 'Lidanial', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1208', '1208/Dinarpusta/18', 'Focus On Your High Calling', 'Lidanial', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1209', '1209/Dinarpusta/18', 'Living with Intergrity, Memercayai, Mengatakan, dan Melakukan yang Benar sesuai Panggilan Allah', 'Ronald J. Greer', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '121', '121/Dinarpusta/19', 'Momen Inspirasi', 'Anreas Nawawi', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 121),
('2018-11-28', '1210', '1210/Dinarpusta/18', 'Living with Intergrity, Memercayai, Mengatakan, dan Melakukan yang Benar sesuai Panggilan Allah', 'Ronald J. Greer', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1211', '1211/Dinarpusta/18', 'Fingding God\'s Blessings In Brokenness', 'Charles F. Stanley', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1212', '1212/Dinarpusta/18', 'Fingding God\'s Blessings In Brokenness', 'Charles F. Stanley', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1213', '1213/Dinarpusta/18', 'Perencanaan Usaha Mie Basah', 'Tian', 'Andi Yogyakarta', '510', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1214', '1214/Dinarpusta/18', 'Dari Pelecehan Kepemulihan', 'Elisa B. Surbakti', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1215', '1215/Dinarpusta/18', 'Rembulan Dalam Jaring Laba-laba', 'Jefta Atapeni', 'Andi Yogyakarta', '811.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1216', '1216/Dinarpusta/18', 'Timor Kupang Dahulu dan Sekarang', 'Andre Z. Soh', 'Andi Yogyakarta', '909', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1217', '1217/Dinarpusta/18', 'Timor Kupang Dahulu dan Sekarang', 'Andre Z. Soh', 'Andi Yogyakarta', '909', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1218', '1218/Dinarpusta/18', 'Dari Dunia Sampai Ke Surga', 'Sudiyono', 'Andi Yogyakarta', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1219', '1219/Dinarpusta/18', 'Let Us Praise', 'Judson Cornwall', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '122', '122/Dinarpusta/19', 'Restoring The Altar For Fresh Fire', 'Alemu Beeftu, PH.D.', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 122),
('2018-11-28', '1220', '1220/Dinarpusta/18', 'Love & War', 'John ', 'Andi Yogyakarta', '265.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1221', '1221/Dinarpusta/18', 'Making More Beautiful Life', 'Elia Paul Ang', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1222', '1222/Dinarpusta/18', 'Lay Speaker', 'Pdt. Sih Budidoyo, M.Div.,M.Th.', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1223', '1223/Dinarpusta/18', 'Let Us Worship', 'Judson Cornwall', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1224', '1224/Dinarpusta/18', 'Life Without Limits', 'Widhi Laksana', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1225', '1225/Dinarpusta/18', 'Filsafat Pendidikan Dan Pendidikan Kristen', 'Junihot Simanjuntak', 'Andi Yogyakarta', '230.01', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1226', '1226/Dinarpusta/18', 'Lead By Heart', 'Jonathan Willy S.', 'Andi Yogyakarta', '241.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1227', '1227/Dinarpusta/18', 'Manusia Kepunyaan Allah', 'Pdt. Ro. Woo Ho', 'Andi Yogyakarta', '100', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1228', '1228/Dinarpusta/18', 'Dari Lapangan Ke Pelayanan', 'Rudi Gunawan', 'Andi Yogyakarta', '266', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1229', '1229/Dinarpusta/18', 'Vitamin Penyegar Iman', 'Inggrid Tan', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '123', '123/Dinarpusta/19', 'Perampok Sukacita', 'Sandra Steen', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 123),
('2018-11-28', '1230', '1230/Dinarpusta/18', 'Goodbye Jomlo', 'Hayle Dimarco', 'Andi Yogyakarta', '265.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1231', '1231/Dinarpusta/18', 'Harta : Berkat Atau Bencana?', 'Pdt. Dr.Rubin Adi Abraham, M.Th.', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1232', '1232/Dinarpusta/18', 'Rahasia Terbesar', 'Pat Francis', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1233', '1233/Dinarpusta/18', 'Putri Kentut', 'Irwa Widyarti', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1234', '1234/Dinarpusta/18', 'Life Is Easy But Not Simple', 'Budi Untung', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1235', '1235/Dinarpusta/18', 'Mental Illness Or Demonisation?', 'Dr. Leslie Lim', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1236', '1236/Dinarpusta/18', 'Keep Me From Evil, Harm and Fear', 'Robert W Smith', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1237', '1237/Dinarpusta/18', 'Makin Tertekan Makin Berkemenangan', 'Rubin Adi Abraham', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1238', '1238/Dinarpusta/18', 'Vitamin Penyegar Jiwa 3 In 1', 'Tim', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1239', '1239/Dinarpusta/18', 'Memulhkan Taman Eden dalam Keluarga', 'Pdt. Julius Ishak Abraham. M.Sc.', 'Andi Yogyakarta', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '124', '124/Dinarpusta/19', 'Gereja Yang Berdampak', 'Chip Sweney dan Kitti Murray', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 124),
('2018-11-28', '1240', '1240/Dinarpusta/18', 'The Power Of Prayer', 'Andrew Murray', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1241', '1241/Dinarpusta/18', 'Sungguh Saya Baru Sadar Sekarang', 'Dr. Sutaryo, M.D.', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1242', '1242/Dinarpusta/18', '100 Tanya Jawab Aktual Dan Praktis Seputar Rumah Tangga', 'Xavier quentin pranata', 'Andi Yogyakarta', '265.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1243', '1243/Dinarpusta/18', 'Building A House Of Prayer ', 'Dr. David Yong-Gi Cho', 'Andi Yogyakarta', '242', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1244', '1244/Dinarpusta/18', 'Agents Of Babylon', 'Dr. David Jeremiah ', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1245', '1245/Dinarpusta/18', '77 Ide Khotbah Aktual & Kontekstual', 'Pdt. Max E. Sonith, S.Th., MA', 'Andi Yogyakarta', '251', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1246', '1246/Dinarpusta/18', '50 Kisah Raksasa Iman Yang Mengubah Dunia', 'Warren W. Wiersbe', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1247', '1247/Dinarpusta/18', '40 Ways To Keep Your Brain Sharp', 'David B. Biebel, D.Min.', 'Andi Yogyakarta', '261.515', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1248', '1248/Dinarpusta/18', 'Cerita Favorit Alkitab Bergambar Untuk Anak-anak', 'Natalie Carabetta', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1249', '1249/Dinarpusta/18', 'All About Vision', 'Nelson Adu', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '125', '125/Dinarpusta/19', 'Rahasia Doa Yang Menembus Surga', 'Robert Henderson', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 125),
('2018-11-28', '1250', '1250/Dinarpusta/18', 'Bukan Kristen Rutinitas', 'Pdt, Dr. Indrawan Elleas', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1251', '1251/Dinarpusta/18', 'Becoming A True Worshipper', 'Daniel Yudianto', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1252', '1252/Dinarpusta/18', 'Broken Heart Ups!', 'S. Rahoyo', 'Andi Yogyakarta', '241.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1253', '1253/Dinarpusta/18', 'Broken Heart Ups!', 'S. Rahoyo', 'Andi Yogyakarta', '241.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1254', '1254/Dinarpusta/18', 'Bagaimana Caranya Allah Berbicar Kepada Kita', 'Tan Khian Seng', 'Andi Yogyakarta', '231', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1255', '1255/Dinarpusta/18', 'Bagaimana Caranya Allah Berbicar Kepada Kita', 'Tan Khian Seng', 'Andi Yogyakarta', '231', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1256', '1256/Dinarpusta/18', 'Bagaimana Caranya Allah Berbicar Kepada Kita', 'Pdt. Hana Sebadja, S.Th.', 'Andi Yogyakarta', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1257', '1257/Dinarpusta/18', 'Aku Dan Keluargaku Melayani Tuhan ', 'Charles H. Spurgeon', 'Andi Yogyakarta', '234', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1258', '1258/Dinarpusta/18', 'All Of Grace', 'Jaap Dieleman', 'Andi Yogyakarta', '236.9', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1259', '1259/Dinarpusta/18', 'Apostolic Fatherhood', 'Adrienne Thomi Vaughan', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '126', '126/Dinarpusta/19', 'RAHASIA DI BALIK GEMBALA dan DOMBA', 'Noor Anggraito', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 126),
('2018-11-28', '1260', '1260/Dinarpusta/18', '30 Hikmat Yang Mengubah Hidup Anda', 'Kim Kimberling, Ph.D.', 'Andi Yogyakarta', '265.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1261', '1261/Dinarpusta/18', 'Awesome Marriage', 'Kim Kimberling, Ph.D.', 'Andi Yogyakarta', '265.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1262', '1262/Dinarpusta/18', 'Broken Bread', 'Reinhard Bonnke', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1263', '1263/Dinarpusta/18', '100 Wisdoms For Enriching Your Soul', 'Xavier quentin pranata', 'Andi Yogyakarta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1264', '1264/Dinarpusta/18', 'Becoming A True Worshipper', 'Daniel Yudianto', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1265', '1265/Dinarpusta/18', 'Bible Pray Love', 'Kalis Stevanus', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1266', '1266/Dinarpusta/18', 'Bible Pray Love', 'Kalis Stevanus', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1267', '1267/Dinarpusta/18', 'Bible Pray Love', 'Kalis Stevanus', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1268', '1268/Dinarpusta/18', 'Buku Wajib Cara Menangkal Sekte & Agama Baru', 'Nigel Scotland', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1269', '1269/Dinarpusta/18', 'Bible From A To Z', 'Carpl Smith', 'Andi Yogyakarta', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '127', '127/Dinarpusta/19', 'Prophetic Ministry', 'T. Austin Sparks', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 127),
('2018-11-28', '1270', '1270/Dinarpusta/18', 'Bible From A To Z', 'Carpl Smith', 'Andi Yogyakarta', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1271', '1271/Dinarpusta/18', 'Bebas Dari Kutuk ', 'Robert Henderson', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1272', '1272/Dinarpusta/18', '7 Men Of Honor', 'Eric Metaxas', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1273', '1273/Dinarpusta/18', '52 Renungan Dinamis', 'Daud Wira Wijaya Mulya ', 'Andi Yogyakarta', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1274', '1274/Dinarpusta/18', 'Air Mata Yang Diubahkan Menjadi Mata Air', 'Pengki Andu', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1275', '1275/Dinarpusta/18', 'Berbahasa Roh Hak Istimewa Orang Percaya', 'Steven Teo', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1276', '1276/Dinarpusta/18', 'Amazing Grace ', 'John Newton', 'Andi Yogyakarta', '234', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1277', '1277/Dinarpusta/18', 'Smart Christian Leadership ', 'P. Boestam', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1278', '1278/Dinarpusta/18', 'Anda Pemenang', 'Felix Wibowo', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1279', '1279/Dinarpusta/18', 'Air Surgawi', 'Pdt. Max E. Sonith, S.Th., MA', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '128', '128/Dinarpusta/19', 'Priceless Anointing', 'DR. Paul Ang', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 128),
('2018-11-28', '1280', '1280/Dinarpusta/18', 'Bible Games', 'Igrea Siswanto', 'Andi Yogyakarta', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1281', '1281/Dinarpusta/18', 'Broken Bread', 'Reinhard Bonnke', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1282', '1282/Dinarpusta/18', 'Broken Bread', 'Reinhard Bonnke', 'Andi Yogyakarta', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1283', '1283/Dinarpusta/18', 'After Shock', 'Tim', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1284', '1284/Dinarpusta/18', 'Alkitab Itu Isinya Apa Sih?', 'Maria Audrey Lukito', 'Andi Yogyakarta', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1285', '1285/Dinarpusta/18', 'Berubah Untuk Berbuah ', 'Ranto Sari Siahaan', 'Andi Yogyakarta', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1286', '1286/Dinarpusta/18', '100 Renungan Inspiratif Pembangkit Iman ', 'Hadyan Tanwikara', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1287', '1287/Dinarpusta/18', 'Bidadari Menangis, Profesor Memberi Hormat', 'Manati I. Zega', 'Andi Yogyakarta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1288', '1288/Dinarpusta/18', '1001 Fakta Mengejutkan Tentang Alkitab', 'Jerry MacGregor, Ph.D', 'Andi Yogyakarta', '220.8', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1289', '1289/Dinarpusta/18', 'Berani Menikah', 'Jonar Situmorang', 'Andi Yogyakarta', '265.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '129', '129/Dinarpusta/19', 'Personal Prophecy', 'DR. Paul Ang', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 129),
('2018-11-28', '1290', '1290/Dinarpusta/18', 'Being Radical For Jesus', 'Obed Krisnantyo Aji', 'LKIS', '232.901', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1291', '1291/Dinarpusta/18', 'The Prophetic Intercessor', 'James W. Goll', 'Parama Ilmu', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1292', '1292/Dinarpusta/18', 'Jesus Pure & Simple', 'Wayne Cordeiro', 'Parama Ilmu', '232', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1293', '1293/Dinarpusta/18', 'Doa-Doa Istri Untuk Suami', 'Abu Ma\'aris', 'Familia', '297.382', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1294', '1294/Dinarpusta/18', 'Be Unlimited Person', 'Yamowa\'a Bate\'e', 'Familia', '613.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1295', '1295/Dinarpusta/18', 'Be Unlimited Person', 'Yamowa\'a Bate\'e', 'PT. Riugha Edu Pustaka', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1296', '1296/Dinarpusta/18', '12 Cara Mereformasikan Kehidupan Doa Anda', 'Tim', 'PT. Riugha Edu Pustaka', '242.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1297', '1297/Dinarpusta/18', 'Bangkitnya Generasi Ekstrem', 'Carl Anderson', 'Senja Publishing', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1298', '1298/Dinarpusta/18', 'Best Choices For Singles', 'Bill', 'Senja Publishing', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1299', '1299/Dinarpusta/18', 'Asal Kujamah JubahNya Aku Pasti Sembuh', 'Bishop Dr. Jahja Handjojo, D. Hum.', 'Jaya Ilmu', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '130', '130/Dinarpusta/19', 'Kemiskinan = Kutuk?', 'Sukamto, Th.D.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 130),
('2018-11-28', '1300', '1300/Dinarpusta/18', 'Broken Bread', 'Reinhard Bonnke', 'Jaya Ilmu', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1301', '1301/Dinarpusta/18', 'Bunda, Bolehkah Aku menukar Adikku?', 'Pauline Leander', 'Parama Ilmu', '226.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1302', '1302/Dinarpusta/18', 'All About Vision', 'Nelson Adu', 'Parama Ilmu', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1303', '1303/Dinarpusta/18', 'All About Vision', 'Nelson Adu', 'Shira Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1304', '1304/Dinarpusta/18', '1111 Ungkapan Abadi', 'Juanda', 'Shira Media', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1305', '1305/Dinarpusta/18', 'Kuasa Pengampunan', 'Malcolm Smith', 'Salma Idea', '234.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1306', '1306/Dinarpusta/18', 'Beribadah dengan Akal Sehat', 'Pdt. Pengky Andu', 'Salma Idea', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1307', '1307/Dinarpusta/18', 'Bangkit Dari Stagnasi Rohani', 'Sonny Zaluchu', 'Ar-Ruzz Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1308', '1308/Dinarpusta/18', 'Anda Pemenang', 'Felix Wibowo', 'Ar-Ruzz Media', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1309', '1309/Dinarpusta/18', 'Anda Pemenang', 'Felix Wibowo', 'Familia', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '131', '131/Dinarpusta/19', 'PINTU Membangun Rumah Tangga Harmonis', 'David Iman Sutikno', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 131),
('2018-11-28', '1310', '1310/Dinarpusta/18', 'Allah Peduli', 'Yohanes Sutanto Widjaya', 'Familia', '231.8', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1311', '1311/Dinarpusta/18', 'All Out For Christ', 'Pdt. Dr. Erastus Sabdono, M. Th.', 'Romawi Press', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1312', '1312/Dinarpusta/18', 'Bahagia Tanpa Sebab', 'Pdt. Pengky Andu', 'Romawi Press', '231.8', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1313', '1313/Dinarpusta/18', 'Bahagia Tanpa Sebab', 'Pdt. Pengky Andu', 'Hijaz Pustaka Mandiri', '231.8', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1314', '1314/Dinarpusta/18', '100 Kisah yang Menyentu Rohani Anda', 'Xavier Quentin Pranata', 'Hijaz Pustaka Mandiri', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1315', '1315/Dinarpusta/18', '343 Tanya Jawab Sekitar Akhir Zaman', 'Pdm. Markus S., M. Th.', 'LKIS-Pustaka Sastra', '223', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1316', '1316/Dinarpusta/18', 'Bangkitlah dan Berjalanlah', 'Andry Tjiaa', 'LKIS-Pustaka Sastra', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1317', '1317/Dinarpusta/18', '7 Langkah Menuju Gereja yang Berkemenangan', 'Jonar Situmorang', 'Familia', '262', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1318', '1318/Dinarpusta/18', 'Awas, Gaya Hidup Dunia Masuk Gereja!', 'Manati I. Zega', 'Familia', '236.9', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1319', '1319/Dinarpusta/18', '7 Pemulihan Jati Diri Anda', 'Debora Nieniek Meryana', 'PT. Riugha Edu Pustaka', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '132', '132/Dinarpusta/19', 'Pelayanan Anak yang Holistik', 'Tri Budiardjo', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 132),
('2018-11-28', '1320', '1320/Dinarpusta/18', 'Berani Bermimpi', 'Jonar Situmorang', 'PT. Riugha Edu Pustaka', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1321', '1321/Dinarpusta/18', 'Berani Hidup Berani Mati', 'Johny The', 'Senja Media Utama', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1322', '1322/Dinarpusta/18', '100 Renungan Doa', 'Harisonh J. Ompusunggu', 'Senja Media Utama', '242.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1323', '1323/Dinarpusta/18', 'Bebas Dari Cengkraman Setan', 'Rebecca Brown, Md', 'Diandra Kreatif', '235', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1324', '1324/Dinarpusta/18', 'Sukses Seutuhnya', 'Xavier Quentin Pranata', 'Diandra Kreatif', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1325', '1325/Dinarpusta/18', 'After The Storm', 'Daniel Rudol Sihombing', 'Tiga Serangkai', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1326', '1326/Dinarpusta/18', 'Beritakanlah 2', 'Tim', 'Tiga Serangkai', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1327', '1327/Dinarpusta/18', 'All About Teens', 'Mauli Siahaan', 'ALTA', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1328', '1328/Dinarpusta/18', '100 Kisah Cekak yang Membuat Bijak', 'Xavier Quentin Pranata', 'ALTA', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1329', '1329/Dinarpusta/18', 'Atlet Bagi Kristus', 'Winnardo Saragih', 'Graha Cendekia', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '133', '133/Dinarpusta/19', 'Pewahyuan Tujuh Jemaat', 'Pdt. Obaja Tanto Setiawan', 'Andi Yogyakarta', '227', 1, 'F', 'APBD 2019', 47100),
('2018-11-28', '1330', '1330/Dinarpusta/18', 'Anointed  to Heal', 'Randy Clark & Bill Johnson', 'Graha Cendekia', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1331', '1331/Dinarpusta/18', 'Bangkitlah dan Berjalanlah', 'Andry Tjiaa', 'Buku Litera', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1332', '1332/Dinarpusta/18', '40 Hari Mendengar Suara Tuhan', 'Ruth Laurencia', 'Buku Litera', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1333', '1333/Dinarpusta/18', 'Anda Sungguh Luar Biasa!', 'Pdt. Yohanes Heryjianto, S.Th., M.a., MPM', 'ALTA', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1334', '1334/Dinarpusta/18', '61 Fakta dan Fiksi Ginspirasi', 'Kornelius Sabat', 'ALTA', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1335', '1335/Dinarpusta/18', '50 Messages Of Wisdom', 'Tony Tedjo, M.Th', 'Parama Ilmu', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1336', '1336/Dinarpusta/18', 'A Call of A Shepherd', 'Pdt. Benijanto Sugihono', 'Parama Ilmu', '266', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1337', '1337/Dinarpusta/18', 'Bagaimana Cara Menerima Mukjizat dari Allah', 'Reinhard Bonnke', 'Familia', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1338', '1338/Dinarpusta/18', 'Bagaimana Cara Menerima Mukjizat dari Allah', 'Reinhard Bonnke', 'Familia', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1339', '1339/Dinarpusta/18', '8 Tangga Menuju Hidup Bahagia', 'Jonar Situmorang', 'Second Hope', '241.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '134', '134/Dinarpusta/19', 'Pembacaan Alkitab Secara Menyeluruh', 'Pdt. Ro, Woo Ho', 'Andi Yogyakarta', '220.6', 1, 'F', 'APBD 2019', 47100),
('2018-11-28', '1340', '1340/Dinarpusta/18', '5W + 1H Kebenaran', 'Guana Tandjung', 'Second Hope', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1341', '1341/Dinarpusta/18', 'Amazed By The Power Of God', 'Frank Decenso Jr.', 'Gava Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1342', '1342/Dinarpusta/18', 'Ask for The Rain', 'Larry Sparks', 'Gava Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1343', '1343/Dinarpusta/18', 'An Urgent Call for Renewal', 'Charles R. Swindoll', 'Istana Media', '262', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1344', '1344/Dinarpusta/18', 'Sukses Sejati', 'Xavier Quentin Pranata', 'Istana Media', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1345', '1345/Dinarpusta/18', 'Absolute Surrender', 'Andrew Murray', 'Forest Publishing', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1346', '1346/Dinarpusta/18', 'An Insider\'s View of Buddhism & Christianity', 'Steve Cioccolanti', 'Forest Publishing', '201.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1347', '1347/Dinarpusta/18', '5 Crowns ', 'Pdt. Dr. Hasanema Wau', 'Laksana', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1348', '1348/Dinarpusta/18', 'A Challenge to Change', 'Sariwati Goenawan', 'Laksana', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1349', '1349/Dinarpusta/18', '7 Pemulihan Jati Diri Anda', 'Debora Nieniek Meryana', 'Iumenta Publishing', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '135', '135/Dinarpusta/19', 'The Cry God Hears', 'Barbara J. Yoder', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 45400),
('2018-11-28', '1350', '1350/Dinarpusta/18', '101 Hkmat Menjadi Orang Hebat', ' Inggrid Tan', 'Iumenta Publishing', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1351', '1351/Dinarpusta/18', '101 Hkmat Menjadi Orang Hebat', ' Inggrid Tan', 'Empat Dua', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1352', '1352/Dinarpusta/18', '101 Hkmat Menjadi Orang Hebat', ' Inggrid Tan', 'Empat Dua', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1353', '1353/Dinarpusta/18', 'Bahaya Ramalan VS Dahsyatnya Nubuat & Penglihatan', 'Darius Theodore K.', 'Ircisod', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1354', '1354/Dinarpusta/18', 'Bahaya Ramalan VS Dahsyatnya Nubuat & Penglihatan', 'Darius Theodore K.', 'Ircisod', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1355', '1355/Dinarpusta/18', 'Bahaya Ramalan VS Dahsyatnya Nubuat & Penglihatan', 'Darius Theodore K.', 'Kalimedia', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1356', '1356/Dinarpusta/18', '100 Kisah Kocak yang Membuat Bijak', 'Xavier Quentin Pranata', 'Kalimedia', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1357', '1357/Dinarpusta/18', '100 Kisah Kocak yang Membuat Bijak', 'Xavier Quentin Pranata', 'LKIS', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1358', '1358/Dinarpusta/18', 'Challenge to Change', 'Pdt. Pengky Andu', 'LKIS', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1359', '1359/Dinarpusta/18', 'Challenge to Change', 'Pdt. Pengky Andu', 'Beranda', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '136', '136/Dinarpusta/19', 'Peperangan Kaum Pria', 'Gregory Y. Jantz dan Ann McMurray', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 45400),
('2018-11-28', '1360', '1360/Dinarpusta/18', 'Challenge to Change', 'Pdt. Pengky Andu', 'Beranda', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1361', '1361/Dinarpusta/18', 'A-Z Renungan Suara Gembala', 'Ir. Agus Rahrdja', 'Forest Publishing', '234', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1362', '1362/Dinarpusta/18', 'A-Z Renungan Suara Gembala', 'Ir. Agus Rahrdja', 'Forest Publishing', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1363', '1363/Dinarpusta/18', 'Bible Games', 'Igrea Siswanto', 'Madani', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1364', '1364/Dinarpusta/18', 'Bible Games', 'Igrea Siswanto', 'Madani', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1365', '1365/Dinarpusta/18', '347 Tanya Jawab ', 'Markus Suyadi', 'LKIS', '153.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1366', '1366/Dinarpusta/18', '347 Tanya Jawab ', 'Markus Suyadi', 'LKIS', '153.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1367', '1367/Dinarpusta/18', 'Atlet Bagi Kristus', 'Winnardo Saragih', 'Hijaz Pustaka Mandiri', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1368', '1368/Dinarpusta/18', 'Atlet Bagi Kristus', 'Winnardo Saragih', 'Hijaz Pustaka Mandiri', '269', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1369', '1369/Dinarpusta/18', 'A Challenge to Change', 'Sariwati Goenawan', 'Visi Mandiri', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '137', '137/Dinarpusta/19', 'Unshockable Love', 'John Burke', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 61600),
('2018-11-28', '1370', '1370/Dinarpusta/18', 'A Challenge to Change', 'Sariwati Goenawan', 'Visi Mandiri', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1371', '1371/Dinarpusta/18', 'Building A Better Life', 'Pdt. Purim Marbun, M.Th.', 'PT. Riugha Edu Pustaka', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1372', '1372/Dinarpusta/18', 'Building A Better Life', 'Pdt. Purim Marbun, M.Th.', 'PT. Riugha Edu Pustaka', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1373', '1373/Dinarpusta/18', '40 Hari Mendengar Suara Tuhan', 'Ruth Laurencia', 'Khalifah Mediatama', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1374', '1374/Dinarpusta/18', '40 Hari Mendengar Suara Tuhan', 'Ruth Laurencia', 'Khalifah Mediatama', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1375', '1375/Dinarpusta/18', 'Benih-benih Kesuksesan', 'Bill', 'Bright Publisher', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1376', '1376/Dinarpusta/18', 'Benih-benih Kesuksesan', 'Bill', 'Bright Publisher', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1377', '1377/Dinarpusta/18', 'Anda Bertanya Saya Menjawab', 'Tony Tedjo, M.Th', 'Andi Offset', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1378', '1378/Dinarpusta/18', 'Anda Bertanya Saya Menjawab', 'Tony Tedjo, M.Th', 'Andi Offset', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1379', '1379/Dinarpusta/18', 'Biblical Husband', 'Kathi Lipp', 'Madani', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '138', '138/Dinarpusta/19', 'Pemulihan Pria Sejati dan Wanita Bijak', 'Jarot Wijanarko', 'Andi Yogyakarta', '265.5', 1, 'F', 'APBD 2019', 61600),
('2018-11-28', '1380', '1380/Dinarpusta/18', 'Biblical Husband', 'Kathi Lipp', 'Madani', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1381', '1381/Dinarpusta/18', '7 Question Of Becoming Fruitful Leaders', 'Budi Abdipatra', 'IDAI', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1382', '1382/Dinarpusta/18', '7 Question Of Becoming Fruitful Leaders', 'Budi Abdipatra', 'IDAI', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1383', '1383/Dinarpusta/18', '7 Question Of Becoming Fruitful Leaders', 'Budi Abdipatra', 'IDAI', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1384', '1384/Dinarpusta/18', 'Bible Trivia 2', 'Arie Saptaji', 'Indoliterasi', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1385', '1385/Dinarpusta/18', 'Bible Trivia 2', 'Arie Saptaji', 'Indoliterasi', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1386', '1386/Dinarpusta/18', 'Bible Trivia 2', 'Arie Saptaji', 'Indoliterasi', '220', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1387', '1387/Dinarpusta/18', 'Berani Menggali Dalam', 'Tim Fokus Pada Keluarga', 'Kalimedia', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1388', '1388/Dinarpusta/18', 'Assurance Of Salvation', 'Reinhard Bonnke', 'Kalimedia', '234', 2, 'F', 'BANTUAN PERPUSNAS 2018', 48400),
('2018-11-28', '1389', '1389/Dinarpusta/18', 'Assurance Of Salvation', 'Reinhard Bonnke', 'Kalimedia', '234', 2, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '139', '139/Dinarpusta/19', 'Mengejar Perkenanan Tuhan', 'Antoni Stephens dan Daniel Yudianto', 'Andi Yogyakarta', '252', 1, 'F', 'APBD 2019', 81300),
('2018-11-28', '1390', '1390/Dinarpusta/18', '30 Years Walk With Jesus', 'Bambang Budijanto', 'Empat Dua', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2018-11-28', '1391', '1391/Dinarpusta/18', 'A Tp Z Divine Inspirations', 'Kornelius Sabat', 'Visi Mandiri', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 98400),
('2018-11-28', '1392', '1392/Dinarpusta/18', 'Bunda, Bolehkah Aku Menukar Adikku?', 'Pauline Leander', 'Visi Mandiri', '226.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 98400),
('2018-11-28', '1393', '1393/Dinarpusta/18', '50 Cara Membuat Gereja Anda Bertumbuh ', 'David Beer', 'Madani', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2018-11-28', '1394', '1394/Dinarpusta/18', 'Biblical Manhood', 'Dr. Stuart Scott', 'Madani', '220.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2018-11-28', '1395', '1395/Dinarpusta/18', '56 Fabel Yang Menginspirasi Dan Mengubah Hdup Anda', 'Suslistyanto', 'Adfale', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 27400),
('2018-11-28', '1396', '1396/Dinarpusta/18', 'A-Z Renungan Suara Gembala', 'Ir. Agus Rahrdja D.S., M.A.', 'Adfale', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 27400),
('2018-11-28', '1397', '1397/Dinarpusta/18', '7 Mukjizat Yesus Dalam Injil Yohanes', 'Jonar Situmorang', 'Intimedia', '226.5', 2, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2018-11-28', '1398', '1398/Dinarpusta/18', 'Alkitab Perjanjian Baru Dalam Terjemahan Sederhana Indonesia', 'Yayasan Alkitab BahasaKita', 'Intimedia', '225', 2, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2018-11-28', '1399', '1399/Dinarpusta/18', 'Alkitab Perjanjian Baru Dalam Terjemahan Sederhana Indonesia', 'Yayasan Alkitab BahasaKita', 'Intimedia', '225', 2, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2019-07-25', '140', '140/Dinarpusta/19', 'Mukjizat Masih Terjadi', 'Agus Gunawan', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 81300),
('2018-11-28', '1400', '1400/Dinarpusta/18', 'Alkitab Perjanjian Baru Dalam Terjemahan Sederhana Indonesia', 'Yayasan Alkitab BahasaKita', 'Intimedia', '225', 2, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2018-11-28', '1401', '1401/Dinarpusta/18', 'Alkitab Perjanjian Baru Dalam Terjemahan Sederhana Indonesia', 'Yayasan Alkitab BahasaKita', 'Intimedia', '225', 2, 'F', 'BANTUAN PERPUSNAS 2018', 65000),
('2018-11-28', '1402', '1402/Dinarpusta/18', 'Apa Yang Allah Pikirkan', 'Keith C. Powell', 'Intrans Publising', '231', 2, 'F', 'BANTUAN PERPUSNAS 2018', 65000),
('2018-11-28', '1403', '1403/Dinarpusta/18', 'Aku Cinta Tuhan Yesus', 'Sudiyono ', 'Gava Media', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2018-11-28', '1404', '1404/Dinarpusta/18', '123 Oke', 'Ps. Rudy R. Sirait, S.Th., MA.CE.,M.Th.', 'Gava Media', '251', 2, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2018-11-28', '1405', '1405/Dinarpusta/18', 'Anak Andqa Pasti Berubah ', 'Igrea Siswanto', 'Visi Mandiri', '268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2018-11-28', '1406', '1406/Dinarpusta/18', 'You Were Born Fdor This', 'Bruce Wilkinson', 'Visi Mandiri', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2018-11-28', '1407', '1407/Dinarpusta/18', '100 Wisdoms For Enriching Your Life', 'Xavier Quentin Pranata', 'Trans Idea Publishing', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2018-11-28', '1408', '1408/Dinarpusta/18', 'A Brilliant Mind', 'Frank Minierth, M.D.', 'Trans Idea Publishing', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2018-11-28', '1409', '1409/Dinarpusta/18', 'Business In God', 'Bryan Waters', 'Intelegensia Media', '234.2', 2, 'F', 'BANTUAN PERPUSNAS 2018', 67600),
('2019-07-25', '141', '141/Dinarpusta/19', 'Gubuk Cinta', 'Don Nori', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2018-11-28', '1410', '1410/Dinarpusta/18', 'Brave Dad', 'John McArthur', 'Intelegensia Media', '249', 2, 'F', 'BANTUAN PERPUSNAS 2018', 67600),
('2018-11-28', '1411', '1411/Dinarpusta/18', 'Auman Singa Dari Yehuda Pada Akhr Zaman', 'Jeff Jansen', 'Laksana', '236.9', 2, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2018-11-28', '1412', '1412/Dinarpusta/18', 'Berkenan Kepada Allah', 'Loren Covarrubias', 'Laksana', '241', 2, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2018-11-28', '1413', '1413/Dinarpusta/18', 'Agents Of The Apocalypse', 'David Jeremiah', 'Indoliterasi', '228', 2, 'F', 'BANTUAN PERPUSNAS 2018', 111200),
('2018-11-28', '1414', '1414/Dinarpusta/18', 'The Five Love Languages Of Children', 'Gary Chapman', 'Indoliterasi', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 111200),
('2018-11-28', '1415', '1415/Dinarpusta/18', 'Between Life & Death', 'John Wyatt', 'Literindo', '218', 2, 'F', 'BANTUAN PERPUSNAS 2018', 111200),
('2018-11-28', '1416', '1416/Dinarpusta/18', 'Bersaksi Pada Teman-teman Gay Anda', 'Alex Tylee', 'Literindo', '241', 2, 'F', 'BANTUAN PERPUSNAS 2018', 111200),
('2018-11-28', '1417', '1417/Dinarpusta/18', 'Amazing Love', 'Jaap Dieleman', 'Gava Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2018-11-28', '1418', '1418/Dinarpusta/18', 'Bibliologi', 'Jonar Situmorang', 'Gava Media', '220.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2018-11-28', '1419', '1419/Dinarpusta/18', 'A Ha Moment', 'Yohanes Heryjanto', 'Forest Publishing', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '142', '142/Dinarpusta/19', 'Pastoral Konseling Membaca Manusia Sebagai Dokumen Hidup', 'Pdt. Dr. E.P. Gintings', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 34200),
('2018-11-28', '1420', '1420/Dinarpusta/18', '24 Kunci Sukses', 'Paul J. Meyer', 'Forest Publishing', '650.1', 2, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2018-11-28', '1421', '1421/Dinarpusta/18', '21 Bukti Yesus Adalah Tuhan', 'Lukas Kusuanto', 'Shira Media', '232', 2, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2018-11-28', '1422', '1422/Dinarpusta/18', 'Be Who You Are Mean To Be', 'Roteniya', 'Shira Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2018-11-28', '1423', '1423/Dinarpusta/18', 'Achieving Your Divine Potential ', 'Bishop Jim Lowe', 'Intelegensia Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2018-11-28', '1424', '1424/Dinarpusta/18', '3 Berkat Istimewa ', 'Drs. Soeparno Brotoraharjo, MM, APU', 'Intelegensia Media', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2018-11-28', '1425', '1425/Dinarpusta/18', '10 Kekuatan Pelayanan Yang Alkitabiah', 'Warren W. Wiersbe', 'Intimedia', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 44500),
('2018-11-28', '1426', '1426/Dinarpusta/18', 'Analisis Retoris', 'Petrus Maryono, Ph.D.', 'Intimedia', '631.4', 2, 'F', 'BANTUAN PERPUSNAS 2018', 44500),
('2018-11-28', '1427', '1427/Dinarpusta/18', 'Apologetika: Apakah Yesus Iyu Tuhan?', 'Kalis Stevanus', 'Laksana', '239', 2, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2018-11-28', '1428', '1428/Dinarpusta/18', '80 Renungan Untuk Lansia', 'Dr. Haryadi Baskoro', 'Laksana', '252', 2, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2018-11-28', '1429', '1429/Dinarpusta/18', 'Beriman Atau GR?', 'Pdt. R. H. Pakpahan', 'Laksana Kidz', '236.9', 2, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '143', '143/Dinarpusta/19', 'What A Husband Needs From His Wife', 'Melanie Chitwood', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 67600),
('2018-11-28', '1430', '1430/Dinarpusta/18', 'Sentuhan Hikmat  3 In 1 ', 'Chris Mesach', 'Laksana Kidz', '231', 2, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2018-11-28', '1431', '1431/Dinarpusta/18', '56 Cerita Terhebat', 'Jonar Situmorang', 'Laksana Kidz', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2018-11-28', '1432', '1432/Dinarpusta/18', '52 Ikhtisar Khotbah Kisah Para Rasul', 'Nathan Jurnawan', 'Laksana Kidz', '226', 2, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2018-11-28', '1433', '1433/Dinarpusta/18', 'Beran Menembus Batas', 'Jarot Wijanarko', 'Khalifah Mediatama', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 60300),
('2018-11-28', '1434', '1434/Dinarpusta/18', '57 Pilihan Hidup', 'Jonar Situmorang', 'Khalifah Mediatama', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 60300),
('2018-11-28', '1435', '1435/Dinarpusta/18', 'Life is all miracles', 'Holy setyowati sie', 'Lebah Buku', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2018-11-28', '1436', '1436/Dinarpusta/18', '100 Inspiring Stories For Greater Success', 'Xavier Quentin Pranata', 'Lebah Buku', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2018-11-28', '1437', '1437/Dinarpusta/18', 'Allah Masih Melakukan Mukjizat ', 'Max Lucado', 'Istana Media', '226.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2018-11-28', '1438', '1438/Dinarpusta/18', 'Bangkitlah dan Berjalanlah', 'Andry Tjia', 'Istana Media', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2018-11-28', '1439', '1439/Dinarpusta/18', 'Bangkit Dari Debu', 'Sarah A. Christie', 'PT.Adfale Prima Cipta', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '144', '144/Dinarpusta/19', 'Words That Circled The World', 'Richard Bewes', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 67600),
('2018-11-28', '1440', '1440/Dinarpusta/18', '100 Kisah Kocak yang Membuat Bijak', 'Xavier Quentin Pranata', 'PT.Adfale Prima Cipta', '243', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '1441', '1441/Dinarpusta/18', 'Anda Sungguh Luar Biasa!', 'Pdt. Yohanes Heryjianto, S.Th., M.a., MPM', 'Bright Publisher', '248', 2, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2018-11-28', '1442', '1442/Dinarpusta/18', '7 Jesus Statements', 'Jonar Situmorang', 'Bright Publisher', '232', 2, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2018-11-28', '1443', '1443/Dinarpusta/18', '6 Virus Berbahaya yang Harus Diwaspadai Pemberita Firman', 'Linawati Santoso', 'Bright Publisher', '248', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1444', '1444Dinarpusta/19', 'Super Tourismpreneur', 'Arini Tathagati', 'Andi Offset', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1445', '1445/Dinarpusta/19', 'Super Tourismpreneur', 'Arini Tathagati', 'Andi Offset', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1446', '1446/Dinarpusta/19', 'Restooran dan kegiatannya', 'Firman sinaga, SST. Par.,M. Si. Par., CHT.', 'Andi Offset', '647.95', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1447', '1447/Dinarpusta/19', 'Restooran dan kegiatannya', 'Firman sinaga, SST. Par.,M. Si. Par., CHT.', 'Andi Offset', '647.95', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1448', '1448/Dinarpusta/19', 'Perencanaan keuangan', 'Maya Malinda, Ph. D., CFP', 'Andi', '658.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 76100),
('2019-07-25', '1449', '1449/Dinarpusta/19', 'Perencanaan keuangan', 'Maya Malinda, Ph. D., CFP', 'Andi', '658.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 76100),
('2019-07-25', '145', '145/Dinarpusta/19', 'Panduan Lengkap Tanya Jawab Tentang Hari Kiamat', 'Ron Rhodes', 'Andi Yogyakarta', '236.9', 1, 'F', 'APBD 2019', 71900),
('2019-07-25', '1450', '1450/Dinarpusta/19', 'Penelitian Tindakan Sekolah (PTS)', 'Zainal Aqib', 'Andi', '370.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2019-07-25', '1451', '1451/Dinarpusta/19', 'Penelitian Tindakan Sekolah (PTS)', 'Zainal Aqib', 'Andi', '370.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2019-07-25', '1452', '1452/Dinarpusta/19', 'Pendidikan Inklusi untuk anak-anak berkebutuhan khusus', 'Stella Olivia Kdwm', 'Andi', '371.9', 1, 'F', 'BANTUAN PERPUSNAS 2018', 52200),
('2019-07-25', '1453', '1453/Dinarpusta/19', 'Pendidikan Inklusi untuk anak-anak berkebutuhan khusus', 'Stella Olivia Kdwm', 'Andi', '371.9', 1, 'F', 'BANTUAN PERPUSNAS 2018', 52200),
('2019-07-25', '1454', '1454/Dinarpusta/19', 'Jadi Guru BK? Siapa Takut!', 'Datuk Fitra', 'Andi', '371.12', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1455', '1455/Dinarpusta/19', 'Jadi Guru BK? Siapa Takut!', 'Datuk Fitra', 'Andi', '3 71.12', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1456', '1456/Dinarpusta/19', 'Success Revolution', 'Roy Li', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1457', '1457/Dinarpusta/19', 'Success Revolution', 'Roy Li', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1458', '1458/Dinarpusta/19', 'Learning Through Movement', 'Dr. Muhammad Muhyi, M. Pd.', 'Andi', '616.19', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59000),
('2019-07-25', '1459', '1459/Dinarpusta/19', 'Learning Through Movement', 'Dr. Muhammad Muhyi, M. Pd.', 'Andi', '616.19', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59000),
('2019-07-25', '146', '146/Dinarpusta/19', 'Rindu Pulang', 'Sara Tee', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 71900),
('2019-07-25', '1460', '1460/Dinarpusta/19', 'Menggambar batik menggunakan Adobe Photoshop', 'Agnes Dian Saputri', 'Andi', '006.66', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56500),
('2019-07-25', '1461', '1461/Dinarpusta/19', 'Menggambar batik menggunakan Adobe Photoshop', 'Agnes Dian Saputri', 'Andi', '006.66', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56500),
('2019-07-25', '1462', '1462/Dinarpusta/19', 'Master kata-kata Akademis Bahasa inggris', 'Prof. Dr. Patrisius Istiarto Djiwandono', 'Andi', '432', 1, 'F', 'BANTUAN PERPUSNAS 2018', 102600),
('2019-07-25', '1463', '1463/Dinarpusta/19', 'Master kata-kata Akademis Bahasa inggris', 'Prof. Dr. Patrisius Istiarto Djiwandono', 'Andi', '432', 1, 'F', 'BANTUAN PERPUSNAS 2018', 102600),
('2019-07-25', '1464', '1464/Dinarpusta/19', 'Menyusun Leardership Training untuk remaja ', 'Sigit Setyawan', 'Andi', '371.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 136800),
('2019-07-25', '1465', '1465/Dinarpusta/19', 'Menyusun Leardership Training untuk remaja ', 'Sigit Setyawan', 'Andi', '371.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 136800),
('2019-07-25', '1466', '1466/Dinarpusta/19', 'Tepat dan jitu atasi ulkus kaki diabetes', 'Dr. Dr. A. Yuda Handaya SpB. KBD', 'Rapha Publising', '616.46', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1467', '1467/Dinarpusta/19', 'Tepat dan jitu atasi ulkus kaki diabetes', 'Dr. Dr. A. Yuda Handaya SpB. KBD', 'Rapha Publising', '616.46', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1468', '1468/Dinarpusta/19', 'Lower your body love your life', 'Konstantinus Yere Agusto', 'Rapha Publising', '613 .6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200);
INSERT INTO `buku` (`tanggal_terima`, `id_buku`, `no_induk`, `judul_buku`, `pengarang`, `penerbit`, `no_kelas`, `eksamplar`, `jenis`, `keterangan`, `harga`) VALUES
('2019-07-25', '1469', '1469/Dinarpusta/19', 'Lower your body love your life', 'Konstantinus Yere Agusto', 'Rapha Publising', '613 .6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '147', '147/Dinarpusta/19', 'The Favor of God', 'Pdt. Agus Vianus', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1470', '1470/Dinarpusta/19', 'Sehat dengan juice untuk penyakit jantung koroner, rematik, maag dan batuk pilek', 'Yohanes sSunardi', 'Rapha Publising', '641.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1471', '1471/Dinarpusta/19', 'Sehat dengan juice untuk penyakit jantung koroner, remaag dan batuk pilek', 'Yohanes sSunardi', 'Rapha Publising', '641.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1472', '1472/Dinarpusta/19', 'The Miracle of colors', 'Khusnul Khotimah', 'Rapha Publising', '634', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1473', '1473/Dinarpusta/19', 'The Miracle of colors', 'Khusnul Khotimah', 'Rapha Publising', '634', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1474', '1474/Dinarpusta/19', 'Buku pintar desain arsitektur ide warna rumah gaya', 'Anditya, ST', 'Andi', '747.94', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1475', '1475/Dinarpusta/19', 'Buku pintar desain arsitektur ide warna rumah gaya', 'Anditya, ST', 'Andi', '813', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1476', '1476/Dinarpusta/19', '13 poin menulis cerita pendek', 'Imperialjathee', 'Andi', '634', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1477', '1477/Dinarpusta/19', 'Sehat selalu dengan vitamin D', 'Dr. Dessy Hermawan, S. Kep, Ns., M. Kes', 'Andi', '615.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1478', '1478/Dinarpusta/19', 'Buku ajar asuhan gizi olahraga', 'Nurul Laily Hidayati', 'Rapha Publising', '612.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1479', '1479/Dinarpusta/19', 'Bikin toko online di android dengan webhost gratis', 'Ade Hodijah', 'Andi', '658.84', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '148', '148/Dinarpusta/19', 'The Favor of God', 'Pdt. Agus Vianus', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 43200),
('2019-07-25', '1480', '1480/Dinarpusta/19', 'Teknik praktis analisis data penelitian sosial dan bisnis dengan SPSS', 'Budi Setiawan', 'Andi', '005.74', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1481', '1481/Dinarpusta/19', 'Teknik praktis analisis data penelitian sosial dan bisnis dengan SPSS', 'Budi Setiawan', 'Andi', '005.74', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1482', '1482/Dinarpusta/19', 'Fotografi potret menciptakan keindahan dalam balutan kamera', 'Umang', 'Andi', '771', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1483', '1483/Dinarpusta/19', 'Fotografi potret menciptakan keindahan dalam balutan kamera', 'Umang', 'Andi', '771', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1484', '1484/Dinarpusta/19', 'Sehat tanpa obat dengan bawang merah bawang putih', 'Dian Sukma Kuswardhani', 'Rapha Publishing', '641.35', 1, 'F', 'BANTUAN PERPUSNAS 2018', 49600),
('2019-07-25', '1485', '1485/Dinarpusta/19', 'Sehat tanpa obat dengan bawang merah bawang putih', 'Dian Sukma Kuswardhani', 'Rapha Publishing', '641.35', 1, 'F', 'BANTUAN PERPUSNAS 2018', 49600),
('2019-07-25', '1486', '1486/Dinarpusta/19', 'Untung berlipat dari budi daya rumput laut tanaman multi manfaat', 'Dr. M. Hendri, Msi., ddk.', 'Lily Publisher', '635.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 25700),
('2019-07-25', '1487', '1487/Dinarpusta/19', 'How to run the class in english', 'Pardiyono', 'Andi', '421', 1, 'F', 'BANTUAN PERPUSNAS 2018', 141100),
('2019-07-25', '1488', '1488/Dinarpusta/19', 'How to run the class in english', 'Pardiyono', 'Andi', '421', 1, 'F', 'BANTUAN PERPUSNAS 2018', 141100),
('2019-07-25', '1489', '1489/Dinarpusta/18', 'Kimia pangan', 'Rusdin Rauf', 'Andi', '668.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '149', '149/Dinarpusta/19', 'The Favor of God', 'Pdt. Agus Vianus', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 91500),
('2019-07-25', '1490', '1490/Dinarpusta/18', 'Kimia pangan', 'Rusdin Rauf', 'Andi', '668.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1491', '1491/Dinarpusta/18', 'Desain molekul biogetikahp', 'Hari Purnomo', 'Rapha Publishing', '615', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1492', '1492/Dinarpusta/19', 'Desain molekul biogetikahp', 'Hari purnomo', 'Bookmart Indonesia', '615', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1493', '1493/Dinarpusta/19', 'Smart mom, Happy mom', 'Bety Kristianto', 'Andi', '306.85', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1494', '1494/Dinarpusta/19', 'Smart mom, Happy mom', 'Bety Kristianto', 'Andi', '306.85', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67600),
('2018-05-28', '1495', '1495/Dinarpusta/19', 'Teori dan aplikasi pengumpulan data kesehatan termasuk biostatistika dasar', 'Dr. Tris Eryando, M.A', 'Rapha Publishing', '610.28', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1496', '1496/Dinarpusta/19', 'Teori dan aplikasi pengumpulan data kesehatan termasuk biostatistika dasar', 'Dr. Tris Eryando, M.A', 'Rapha Publishing', '610.28', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1497', '1497/Dinarpusta/19', 'Dasar fotografi', 'Teguh Setiadi', 'Andi', '771', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1498', '1498/Dinarpusta/19', 'Dasar fotografi', 'Teguh Setiadi', 'Andi', '771', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1499', '1499/Dinarpusta/19', 'Business global survival kit', 'Eka Dharma Pranoto', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '150', '150/Dinarpusta/19', 'Peka Terhadap Kairos Tuhan', 'Agus Vianus', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 91500),
('2019-07-25', '1500', '1500/Dinarpusta/19', 'Business global survival kit', 'Eka Dharma Pranoto', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1501', '1501/Dinarpusta/19', 'Rainbow after the rain', 'Leonardus Alvin Ferdiansyah', 'Nyo-nyo', '792.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1502', '1502/Dinarpusta/19', 'Rainbow after the rain', 'Leonardus Alvin Ferdiansyah', 'Nyo-nyo', '792.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1503', '1503/Dinarpusta/19', 'Inspirasi kebayah Muslimah untuk remaja', 'Eri Rohayati', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1504', '1504/Dinarpusta/19', 'Inspirasi kebayah Muslimah untuk remaja', 'Eri Rohayati', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1505', '1505/Dinarpusta/19', 'Cad series 3D Cad Drawing', 'TIM', 'Andi', '006.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1506', '1506/Dinarpusta/19', 'Untung berlipat dari budi daya Sirsak Tanaman multi manfaat', 'H.Rahmat Rukmana', 'Lily Publisher', '634.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2019-07-25', '1507', '1507/Dinarpusta/19', 'Untung berlipat dari budi daya Sirsak Tanaman multi manfaat', 'H.Rahmat Rukmana', 'Lily Publisher', '634.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2019-07-25', '1508', '1508/Dinarpusta/19', 'Gaul & Modis dengan Gamis', 'Eri Rohayati', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1509', '1509/Dinarpusta/19', 'Gaul & Modis dengan Gamis', 'Eri Rohayati', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '151', '151/Dinarpusta/19', 'Peka Terhadap Kairos Tuhan', 'Agus Vianus', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1510', '1510/Dinarpusta/19', 'Ladang Duit Dari Bisnis DAY CARE', 'Wury Hapasri ', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 113300),
('2019-07-25', '1511', '1511/Dinarpusta/19', 'Ladang Duit Dari Bisnis DAY CARE', 'Wury Hapasri ', 'Andi', '770.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 113300),
('2019-07-25', '1512', '1512/Dinarpusta/19', 'STREET PHOTOGRAPHY', 'Asdani Kindarto', 'Andi', '646.12', 1, 'F', 'BANTUAN PERPUSNAS 2018', 60300),
('2019-07-25', '1513', '1513/Dinarpusta/19', 'STREET PHOTOGRAPHY', 'Asdani Kindarto', 'Andi', '646.12', 1, 'F', 'BANTUAN PERPUSNAS 2018', 60300),
('2019-07-25', '1514', '1514/Dinarpusta/19', 'Nyamuk Pergi Tanpa Racun ', 'Koensoemardiyah Ag. Budi Indarto', 'Lily Publisher', '595.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1515', '1515/Dinarpusta/19', 'Sehat dan Lezat Menu untuk Penderita Diabetes Melitus', 'Khusnul Khotimah', 'Rapha Publishing ', '641.56', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1516', '1516/Dinarpusta/19', 'Sehat dan Lezat Menu untuk Penderita Diabetes Melitus', 'Khusnul Khotimah', 'Rapha Publishing ', '641.56', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1517', '1517/Dinarpusta/19', 'Untung Selangit dari Agribisnis Cengke', 'H. Rahmat Rukmana', 'Lily Publisher', '633.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1518', '1518/Dinarpusta/19', 'Untung Selangit dari Agribisnis Cengke', 'H. Rahmat Rukmana', 'Lily Publisher', '633.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1519', '1519/Dinarpusta/19', 'Untung Selangit dari Agribisnis Tebu ', 'H. Rahmat Rukmana', 'Lily Publisher', '633.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '152', '152/Dinarpusta/19', 'Peka Terhadap Kairos Tuhan', 'Agus Vianus', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1520', '1520/Dinarpusta/19', 'Untung Selangit dari Agribisnis Tebu ', 'H. Rahmat Rukmana', 'Lily Publisher', '633.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1521', '1521/Dinarpusta/19', 'Genre Mastering English Through Context', 'Pardiyono', 'Andi', '378.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1522', '1522/Dinarpusta/19', 'Genre Mastering English Through Context', 'Pardiyono', 'Andi', '378.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1523', '1523/Dinarpusta/19', 'Being A Decision Maker ', 'Paulus Kurniawan ', 'Andi', '158.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1524', '1524/Dinarpusta/19', 'Being A Decision Maker ', 'Paulus Kurniawan ', 'Andi', '158.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1525', '1525/Dinarpusta/19', 'Perpajakan ', 'Prof. Dr. Mardiosmo, MBA., Ak', 'Andi', '336.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1526', '1526/Dinarpusta/19', 'Perpajakan ', 'Prof. Dr. Mardiosmo, MBA., Ak', 'Andi', '336.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1527', '1527/Dinarpusta/19', 'Restrukturisasi Perusahaan dalam Perspektif Hukum Bisnis pada Berbagai Jenis Badan Usaha ', 'Cita Yustisia Serfiyani', 'Andi', '658.02', 1, 'F', 'BANTUAN PERPUSNAS 2018', 239400),
('2019-07-25', '1528', '1528/Dinarpusta/19', 'Supply Chain Management', 'Prof. Ir. I nyoman Pujawan, M.Eng., PhD', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 90700),
('2019-07-25', '1529', '1529/Dinarpusta/19', 'Supply Chain Management', 'Prof. Ir. I nyoman Pujawan, M.Eng., PhD', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 90700),
('2019-07-25', '153', '153/Dinarpusta/19', 'Pelayanan Api', 'Timotius Subekti', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1530', '1530/Dinarpusta/19', 'Akuntansi Keuangan Menengah', 'Anastasia Diana ', 'Andi', '657', 1, 'F', 'BANTUAN PERPUSNAS 2018', 53900),
('2019-07-25', '1531', '1531/Dinarpusta/19', 'Akuntansi Keuangan Menengah', 'Anastasia Diana ', 'Andi', '657', 1, 'F', 'BANTUAN PERPUSNAS 2018', 53900),
('2019-07-25', '1532', '1532/Dinarpusta/19', 'Kewirausahaan Technopreneurship untuk Mahasiswa', 'Bambang Murdaka Eka Jati', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1533', '1533/Dinarpusta/19', 'Kewirausahaan Technopreneurship untuk Mahasiswa', 'Bambang Murdaka Eka Jati', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1534', '1534/Dinarpusta/19', 'Manajemen Keuangan ', 'Prof. Dr. Musthafa, S.E., M.M', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1535', '1535/Dinarpusta/19', 'Manajemen Keuangan ', 'Prof. Dr. Musthafa, S.E., M.M', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1536', '1536/Dinarpusta/19', 'Pemasaran Esensi dan Aplikasi ', 'Fandy Tjiptono, Ph.D', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1537', '1537/Dinarpusta/19', 'Pemasaran Esensi dan Aplikasi ', 'Fandy Tjiptono, Ph.D', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1538', '1538/Dinarpusta/19', 'Pelanggan Puas? Tak Cukup!', 'Fandy Tjiptono', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2019-07-25', '1539', '1539/Dinarpusta/19', 'Pelanggan Puas? Tak Cukup!', 'Fandy Tjiptono', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2019-07-25', '154', '154/Dinarpusta/19', 'Pelayanan Api', 'Timotius Subekti', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1540', '1540/Dinarpusta/19', 'Statistik Pendidikan Konsep & Penerapannya Menggunakan Minitab dan Microsoft Excel', 'Dr. Jackson Pasini Mairing', 'Andi', '370.21', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2019-07-25', '1541', '1541/Dinarpusta/19', 'Statistik Pendidikan Konsep & Penerapannya Menggunakan Minitab dan Microsoft Excel', 'Dr. Jackson Pasini Mairing', 'Andi', '370.21', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2019-07-25', '1542', '1542/Dinarpusta/19', 'Cerdas Investasi Properti', 'Dr. H. Budi Untung, S. H., M. M', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1543', '1543/Dinarpusta/19', 'Cerdas Investasi Properti', 'Dr. H. Budi Untung, S. H., M. M', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1544', '1544/Dinarpusta/19', 'Cara Mudah Menyusun Laporan Keuangan Perusahaan Jasa', 'Rahmat Hidayat Lubis', 'Andi', '658.15', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1545', '1545/Dinarpusta/19', 'Cara Mudah Menyusun Laporan Keuangan Perusahaan Jasa', 'Rahmat Hidayat Lubis', 'Andi', '658.15', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1546', '1546/Dinarpusta/19', 'Strategi Penelitian Bisnis', 'Jogiyanto Hartono M.,M.B.A., Ph.D., Prof', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67600),
('2019-07-25', '1547', '1547/Dinarpusta/19', 'Statistik Bagi Peneliti Pendidikan', 'Julius H. Lolombulan', 'Andi', '370.21', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67600),
('2019-07-25', '1548', '1548/Dinarpusta/19', 'Statistik Bagi Peneliti Pendidikan', 'Julius H. Lolombulan', 'Andi', '370.21', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1549', '1549/Dinarpusta/19', 'Statistika Penelitian (Analisis Manual dan IBM SPSS)', 'Dr. Edi Riadi', 'Andi', '005.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '155', '155/Dinarpusta/19', 'Pelayanan Api', 'Timotius Subekti', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1550', '1550/Dinarpusta/19', 'Statistika Penelitian (Analisis Manual dan IBM SPSS)', 'Dr. Edi Riadi', 'Andi', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2019-07-25', '1551', '1551/Dinarpusta/19', 'Teknologi Enzim', 'R. Susanti Fidia Fibriana', 'Andi', '660.634', 1, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2019-07-25', '1552', '1552/Dinarpusta/19', 'Teknologi Enzim', 'R. Susanti Fidia Fibriana', 'Andi', '660.634', 1, 'F', 'BANTUAN PERPUSNAS 2018', 96700),
('2019-07-25', '1553', '1553/Dinarpusta/19', 'Analisis Struktur', 'E. Sutarman', 'Andi', '721', 1, 'F', 'BANTUAN PERPUSNAS 2018', 96700),
('2019-07-25', '1554', '1554/Dinarpusta/19', 'Analisis Struktur', 'E. Sutarman', 'Andi', '721', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67600),
('2019-07-25', '1555', '1555/Dinarpusta/19', 'Struktur Beton Bertulang Tahan Gempa', 'Anugrah Pamungkas', 'Andi', '693.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67600),
('2019-07-25', '1556', '1556/Dinarpusta/19', 'Struktur Beton Bertulang Tahan Gempa', 'Anugrah Pamungkas', 'Andi', '693.9', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1557', '1557/Dinarpusta/19', 'Statistik SEM Structural Equation Modeling dengan Lisrel', 'Dr. Edi Riadi', 'Andi', '011.75', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1558', '1558/Dinarpusta/19', 'Statistik SEM Structural Equation Modeling dengan Lisrel', 'Dr. Edi Riadi', 'Andi', '011.75', 1, 'F', 'BANTUAN PERPUSNAS 2018', 65000),
('2019-07-25', '1559', '1559/Dinarpusta/19', '100++ Soal & jawaban Ekspor - Impor-Interinsuler dalam Angka', 'Prof. Dr. Herman Budi Sasono, S.E., M.M.', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 65000),
('2019-07-25', '156', '156/Dinarpusta/19', 'Karakter Pembangun Hidup Yang Diberkati', 'Maya Hermanto', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1560', '1560/Dinarpusta/19', '100++ Soal & jawaban Ekspor - Impor-Interinsuler dalam Angka', 'Prof. Dr. Herman Budi Sasono, S.E., M.M.', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 76100),
('2019-07-25', '1561', '1561/Dinarpusta/19', 'Metode Penelitian Bisnis Untuk Skripsi, Tesis, Dan Disertasi', 'Prof.Dr. Suliyanto, S.E., M.M.', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 76100),
('2019-07-25', '1562', '1562/Dinarpusta/19', 'Metode Penelitian Bisnis Untuk Skripsi, Tesis, Dan Disertasi', 'Prof.Dr. Suliyanto, S.E., M.M.', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1563', '1563/Dinarpusta/19', 'Perpajakan Indonesia Mekanisme & Perhitungan ', 'Prof. Supramono Theresia Woro Damayanti', 'Andi', '336.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1564', '1564/Dinarpusta/19', 'Perpajakan Indonesia Mekanisme & Perhitungan ', 'Prof. Supramono Theresia Woro Damayanti', 'Andi', '336.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 102600),
('2019-07-25', '1565', '1565/Dinarpusta/19', 'Teknologi Bahan ', 'Ir. Syamsul Hadi, M.T., Ph.D.', 'Andi', '660', 1, 'F', 'BANTUAN PERPUSNAS 2018', 102600),
('2019-07-25', '1566', '1566/Dinarpusta/19', 'Teknologi Bahan ', 'Ir. Syamsul Hadi, M.T., Ph.D.', 'Andi', '660', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1567', '1567/Dinarpusta/19', 'Service Quality dan Satisfaction', 'Fandy Tjiptono, Ph.D', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1568', '1568/Dinarpusta/19', 'Service Quality dan Satisfaction', 'Fandy Tjiptono, Ph.D', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1569', '1569/Dinarpusta/19', 'Demokrasi Alternatif Meraih Keadilan Kesejahteraan Melalui Perdamaian dan Tax Amnesty', 'Dr. Parlagutan Silitonga S.H., M.M., M.B.A.', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '157', '157/Dinarpusta/19', 'Karakter Pembangun Hidup Yang Diberkati', 'Maya Hermanto', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1570', '1570/Dinarpusta/19', 'Demokrasi Alternatif Meraih Keadilan Kesejahteraan Melalui Perdamaian dan Tax Amnesty', 'Dr. Parlagutan Silitonga S.H., M.M., M.B.A.', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 65900),
('2019-07-25', '1571', '1571/Dinarpusta/19', 'Housekeeping Passport Manajemen Operasional Housekeeping', 'Ludfi Orbani', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 65900),
('2019-07-25', '1572', '1572/Dinarpusta/19', 'Housekeeping Passport Manajemen Operasional Housekeeping', 'Ludfi Orbani', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1573', '1573/Dinarpusta/19', 'Transformasi Jiwa ', 'Dr. Gunawan Setiadi, MPH', 'Andi', '617', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1574', '1574/Dinarpusta/19', 'Transformasi Jiwa ', 'Dr. Gunawan Setiadi, MPH', 'Andi', '617', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41100),
('2019-07-25', '1575', '1575/Dinarpusta/19', 'Strategi Menegakan Mutu Pendidikan Tinggi Berbasis KKN', 'DR. Willy Susilo, S. Pd., M. B. A.', 'Andi', '333.24', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41100),
('2019-07-25', '1576', '1576/Dinarpusta/19', 'Strategi Menegakan Mutu Pendidikan Tinggi Berbasis KKN', 'DR. Willy Susilo, S. Pd., M. B. A.', 'Andi', '333.24', 1, 'F', 'BANTUAN PERPUSNAS 2018', 33400),
('2019-07-25', '1577', '1577/Dinarpusta/19', 'Rich Inc Setiap Orang Bisa Jadi Pengusaha', 'Benny Lo', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 33400),
('2019-07-25', '1578', '1578/Dinarpusta/19', 'Rich Inc Setiap Orang Bisa Jadi Pengusaha', 'Benny Lo', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41100),
('2019-07-25', '1579', '1579/Dinarpusta/19', 'Jurusan Apa Buat Kamu?', 'M. Sinar Dinarga, Dkk', 'Andi', '373.238', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41100),
('2019-07-25', '158', '158/Dinarpusta/19', 'Prophetic Encounter', 'Dr. Paul dan Dr. Christina Ang', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1580', '1580/Dinarpusta/19', 'Jurusan Apa Buat Kamu?', 'M. Sinar Dinarga, Dkk', 'Andi', '373.238', 1, 'F', 'BANTUAN PERPUSNAS 2018', 89800),
('2019-07-25', '1581', '1581/Dinarpusta/19', 'Sistem Kompetensi Nasional Berbasis KKNI & SKKNI', 'Willy Susilo', 'Andi', '005.11', 1, 'F', 'BANTUAN PERPUSNAS 2018', 89800),
('2019-07-25', '1582', '1582/Dinarpusta/19', 'Sistem Kompetensi Nasional Berbasis KKNI & SKKNI', 'Willy Susilo', 'Andi', '005.11', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1583', '1583/Dinarpusta/19', 'Korupsi Membuka Pandora Box Perilaku Korup Dari Dimensi Etika, Budaya, dan Keperilakuan', 'Ardeno Kurniawan, S.E., M.Acc., Ak', 'Andi', '364.132', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1584', '1584/Dinarpusta/19', 'Korupsi Membuka Pandora Box Perilaku Korup Dari Dimensi Etika, Budaya, dan Keperilakuan', 'Ardeno Kurniawan, S.E., M.Acc., Ak', 'Andi', '364.132', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67900),
('2019-07-25', '1585', '1585/Dinarpusta/19', 'Credit Top Secret ', 'Iswi Hariyani ', 'Andi', '332.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67900),
('2019-07-25', '1586', '1586/Dinarpusta/19', 'Credit Top Secret ', 'Iswi Hariyani ', 'Andi', '332.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1587', '1587/Dinarpusta/19', 'Credit Top Secret ', 'Iswi Hariyani ', 'Andi', '332.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1588', '1588/Dinarpusta/19', 'Statistika Terapan Untuk Mahasiswa Ekonomi & Bisnis', 'Pangestu Subagyo', 'Andi', '215.98', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67900),
('2019-07-25', '1589', '1589/Dinarpusta/19', 'Statistika Terapan Untuk Mahasiswa Ekonomi & Bisnis', 'Pangestu Subagyo', 'Andi', '215.98', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67900),
('2019-07-25', '159', '159/Dinarpusta/19', 'Prophetic Encounter', 'Dr. Paul dan Dr. Christina Ang', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 43700),
('2019-07-25', '1590', '1590/Dinarpusta/19', 'Manajemen Strategik ', 'Fandy Tjiptono, Ph.D', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56600),
('2019-07-25', '1591', '1591/Dinarpusta/19', 'Manajemen Strategik ', 'Fandy Tjiptono, Ph.D', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56600),
('2019-07-25', '1592', '1592/Dinarpusta/19', 'Pendidikan Kewarganegaraan ', 'Wahyu Widodo, ', 'Andi', '329', 1, 'F', 'BANTUAN PERPUSNAS 2018', 49600),
('2019-07-25', '1593', '1593/Dinarpusta/19', 'Pendidikan Kewarganegaraan ', 'Wahyu Widodo, ', 'Andi', '329', 1, 'F', 'BANTUAN PERPUSNAS 2018', 49600),
('2019-07-25', '1594', '1594/Dinarpusta/19', 'Pendidikan Kewarganegaraan ', 'Dr. I Nengah Suastika , M.Pd.', 'Andi', '323.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 44500),
('2019-07-25', '1595', '1595/Dinarpusta/19', 'Pendidikan Kewarganegaraan ', 'Dr. I Nengah Suastika , M.Pd.', 'Andi', '323.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 44500),
('2019-07-25', '1596', '1596/Dinarpusta/19', 'Manajemen Pemasaran Teori & Implementasi', 'Dr. Sudaryono', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 53800),
('2019-07-25', '1597', '1597/Dinarpusta/19', 'Pemasaran Pariwisata', 'Dr. I Gusti Bagus Rai Utama, M.A.', 'Andi', '659', 1, 'F', 'BANTUAN PERPUSNAS 2018', 53800),
('2019-07-25', '1598', '1598/Dinarpusta/19', 'Pemasaran Pariwisata', 'Dr. I Gusti Bagus Rai Utama, M.A.', 'Andi', '659', 1, 'F', 'BANTUAN PERPUSNAS 2018', 170200),
('2019-07-25', '1599', '1599/Dinarpusta/19', 'Inspirasi Desain Rumah Minimalis', 'Rio Manullang', 'Andi', '728.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 170200),
('2019-07-25', '160', '160/Dinarpusta/19', 'Penyingkapan Kitab Wahyu', 'Pdt. Dr. Sudhi Dharma, M.TH.', 'Andi Yogyakarta', '228', 1, 'F', 'APBD 2019', 43700),
('2019-07-25', '1600', '1600/Dinarpusta/19', 'Untung Berlipat dari Budidaya Talas Tanaman Multi Manfaat', 'H.Rahmat Rukmana', 'Lily Publisher', '635.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1601', '1601/Dinarpusta/19', 'Untung Berlipat dari Budidaya Talas Tanaman Multi Manfaat', 'H.Rahmat Rukmana', 'Lily Publisher', '635.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1602', '1602/Dinarpusta/19', 'Raspberry Pi Mikrokontroler Mungil Serba bisa', 'Edi Rakhman', 'Andi', '621.381', 1, 'F', 'BANTUAN PERPUSNAS 2018', 154000),
('2019-07-25', '1603', '1603/Dinarpusta/19', 'Robot Vision Teknik Membangun Robot Cerdas Masa Depan', 'Dr.Widodo Budiharto,S.Si.,M.Kom', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 154000),
('2019-07-25', '1604', '1604/Dinarpusta/19', 'Robot Vision Teknik Membangun Robot Cerdas Masa Depan', 'Dr.Widodo Budiharto,S.Si.,M.Kom', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1605', '1605/Dinarpusta/19', 'NEKAD BISNIS TOUR & TRAVEL', 'Daniel Teguh Kurniawanto', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1606', '1606/Dinarpusta/19', 'NEKAD BISNIS TOUR & TRAVEL', 'Daniel Teguh Kurniawanto', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1607', '1607/Dinarpusta/19', 'Ilmu Sosial Budaya Dasar', 'Drs.Lies Sudibyo,MH', 'Andi', '302.14', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1608', '1608/Dinarpusta/19', 'Ilmu Sosial Budaya Dasar', 'Drs.Lies Sudibyo,MH', 'Andi', '302.14', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1609', '1609/Dinarpusta/19', 'Say No to Galau Skripsi', 'Lilis Ratna', 'Andi', '011.75', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '161', '161/Dinarpusta/19', 'Penyingkapan Kitab Wahyu', 'Pdt. Dr. Sudhi Dharma, M.TH.', 'Andi Yogyakarta', '228', 1, 'F', 'APBD 2019', 81300),
('2019-07-25', '1610', '1610/Dinarpusta/19', 'Sistem Informasi Geografis dengan Quantum GIS', 'Eko Budiyanto,S.Pd.,M.Si.', 'Andi', '525', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1611', '1611/Dinarpusta/19', 'Sukses Budi Daya Melon Golden di Pekarangan dan Perkebunan', 'Arrum L.', 'Lily Publisher', '635.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 64200),
('2019-07-25', '1612', '1612/Dinarpusta/19', 'Hoew To Win Customer Thourgh Customer Service With Heart', 'Prof.Dr.PM.Budi haryono.', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2019-07-25', '1613', '1613/Dinarpusta/19', 'Manajemen Kapal Niaga', 'Prof.Dr.Herman Budi Sasono,SE.,MM.', 'Andi', '650', 1, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2019-07-25', '1614', '1614/Dinarpusta/19', 'Manajemen Kapal Niaga', 'Prof.Dr.Herman Budi Sasono,SE.,MM.', 'Andi', '650', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1615', '1615/Dinarpusta/19', 'S.O.U.P Lezat Usaha Hebat ', 'Agung Setiyo Wibowo', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1616', '1616/Dinarpusta/19', 'FEATURE Tulisan Jurnalistik yang Kreatif', 'Fanny Lesmana', 'Andi', '411', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1617', '1617/Dinarpusta/19', 'Pengantar Bisnis Teori dan Contoh Kasus ', 'Dr.Sudaryono', 'Andi', '330', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1618', '1618/Dinarpusta/19', 'Pengantar Bisnis Teori dan Contoh Kasus ', 'Dr.Sudaryono', 'Andi', '330', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1619', '1619/Dinarpusta/19', 'Mengajar SAINS yang Menyenabgkan di dalam Kelas disertai 50 Tips dan Teknik Kreatif', 'Teresia Pujayanti', 'Andi', '373.24', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '162', '162/Dinarpusta/19', 'Keselamatan Dalam Kristus', 'K. A. M. Jusufroni', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 81300),
('2019-07-25', '1620', '1620/Dinarpusta/19', 'Mengajar SAINS yang Menyenangkan di dalam Kelas disertai 50 Tips dan Teknik Kreatif', 'Teresia Pujayanti', 'Andi', '373.24', 1, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2019-07-25', '1621', '1621/Dinarpusta/19', 'Bartending & Mixology', 'I Gusti Nyoman Wiantara', 'Andi', '647.95', 1, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2019-07-25', '1622', '1622/Dinarpusta/19', 'Bartending & Mixology', 'I Gusti Nyoman Wiantara', 'Andi', '647.95', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1623', '1623/Dinarpusta/19', 'Mitos Jurnalisme', 'Dudi Sabil Islakandar ', 'Andi', '007.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1624', '1624/Dinarpusta/19', 'Mitos Jurnalisme', 'Dudi Sabil Islakandar ', 'Andi', '007.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2019-07-25', '1625', '1625/Dinarpusta/19', 'Toksikologi Lingkungan ', 'Dantje T.Sembel,B.Agr.Sc.,Ph.D', 'Andi', '571.95', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2019-07-25', '1626', '1626/Dinarpusta/19', 'Konsep dan aplikasi Statistik', 'E.Sutarman', 'Andi', '70.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1627', '1627/Dinarpusta/19', 'Konsep dan aplikasi Statistik', 'E.Sutarman', 'Andi', '70.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1628', '1628/Dinarpusta/19', 'Psikologi Pendidikan ', 'Drs. M Dimiyati Mahmud', 'Andi', '370.15', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42700),
('2019-07-25', '1629', '1629/Dinarpusta/19', 'Psikologi Pendidikan ', 'Drs. M Dimiyati Mahmud', 'Andi', '370.15', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42700),
('2019-07-25', '163', '163/Dinarpusta/19', 'Keselamatan Dalam Kristus', 'K. A. M. Jusufroni', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 81300),
('2019-07-25', '1630', '1630/Dinarpusta/19', 'Logika Matematka ', 'Jong jek Siang', 'Andi', '511.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 94000),
('2019-07-25', '1631', '1631/Dinarpusta/19', 'How To Be A Proffesional Customer Service ', 'Prof.Dr.PM.Budi haryono.', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 94000),
('2019-07-25', '1632', '1632/Dinarpusta/19', 'How To Be A Proffesional Customer Service ', 'Prof.Dr.PM.Budi haryono.', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1633', '1633/Dinarpusta/19', 'Toksikologi Lingkungan ', 'Dantje T.Sembel,B.Agr.Sc.,Ph.D', 'Andi', '571.95', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1634', '1634/Dinarpusta/19', 'Mikrobiologi Kesehatan ', 'Dra.Agnes Sri Harti, M.Si.', 'Andi', '616.01', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1635', '1635/Dinarpusta/19', 'Mikrobiologi Kesehatan ', 'Dra.Agnes Sri Harti, M.Si.', 'Andi', '616.01', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1636', '1636/Dinarpusta/19', '100++ Teknik Menguasai Adobe Lightroom', 'TIM', 'Andi', '770.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30700),
('2019-07-25', '1637', '1637/Dinarpusta/19', '100++ Teknik Menguasai Adobe Lightroom', 'TIM', 'Andi', '770.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30700),
('2019-07-25', '1638', '1638/Dinarpusta/19', 'Backpacking KOREA', 'Ferial Thalib', 'Andi', '910 .2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67200),
('2019-07-25', '1639', '1639/Dinarpusta/19', 'Backpacking KOREA', 'Ferial Thalib', 'Andi', '910.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 67200),
('2019-07-25', '164', '164/Dinarpusta/19', 'Kekuatan Sebuah Pengharapan', 'Salmon Hutasoit', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 81300),
('2019-07-25', '1640', '1640/Dinarpusta/19', 'Cara Tokcer ANDROID Canggih Tanpa Rooting', 'Lea Willsen', 'Andi', '005.43', 1, 'F', 'BANTUAN PERPUSNAS 2018', 28800),
('2019-07-25', '1641', '1641/Dinarpusta/19', 'Cara Tokcer ANDROID Canggih Tanpa Rooting', 'Lea Willsen', 'Andi', '005.43', 1, 'F', 'BANTUAN PERPUSNAS 2018', 28800),
('2019-07-25', '1642', '1642/Dinarpusta/19', 'Membuat Skripsi Tesis dan Disertasi  dengan Partial Least Square SEM (PLS SEM)', 'Jonathan Sarwono ', 'Andi', '011.75', 1, 'F', 'BANTUAN PERPUSNAS 2018', 106900),
('2019-07-25', '1643', '1643/Dinarpusta/19', 'Membuat Skripsi Tesis dan Disertasi  dengan Partial Least Square SEM (PLS SEM)', 'Jonathan Sarwono ', 'Andi', '011.75', 1, 'F', 'BANTUAN PERPUSNAS 2018', 106900),
('2019-07-25', '1644', '1644/Dinarpusta/19', ' MY TOUR MY ADVENTURE ', 'Andy Kristono', 'Andi', '910.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1645', '1645/Dinarpusta/19', ' MY TOUR MY ADVENTURE ', 'Andy Kristono', 'Andi', '910.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1646', '1646/Dinarpusta/19', 'Perencanaan Program Promosi Kesehatan', 'Heni Trisnowati,S.K.M,M.P.H.', 'Andi', '614', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85100),
('2019-07-25', '1647', '1647/Dinarpusta/19', 'Perencanaan Program Promosi Kesehatan', 'Heni Trisnowati,S.K.M,M.P.H.', 'Andi', '614', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85100),
('2019-07-25', '1648', '1648/Dinarpusta/19', 'LURIK Pesona,Ragam dan Filosofi', 'Asti Musman', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1649', '1649/Dinarpusta/19', 'LURIK Pesona,Ragam dan Filosofi', 'Asti Musman', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '165', '165/Dinarpusta/19', 'Kekuatan Sebuah Pengharapan', 'Salmon Hutasoit', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 94100),
('2019-07-25', '1650', '1650/Dinarpusta/19', 'Tetap Sehat Saat Lansia', 'dr.Yekti Mumpuni', 'Andi', '618.97', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1651', '1651/Dinarpusta/19', 'Tetap Sehat Saat Lansia', 'dr.Yekti Mumpuni', 'Andi', '618.97', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1652', '1652/Dinarpusta/19', 'Manajemen UMKM & Sumber Daya Manusia', 'Dr. Parlagutan Silitonga S.H., M.M., M.B.A.', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1653', '1653/Dinarpusta/19', 'Manajemen UMKM & Sumber Daya Manusia', 'Dr. Parlagutan Silitonga S.H., M.M., M.B.A.', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1654', '1654/Dinarpusta/19', 'Statistika Non Parametrik dalam Aplikasi Penelitian', 'Dr. Suliyanto', 'Andi', '005.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1655', '1655/Dinarpusta/19', 'Menggambar Rancang Bangunan 2D dengan Auto Cad', 'Suparno Sastra M.', 'Andi', '720.22', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1656', '1656/Dinarpusta/19', 'Statistika Non Parametrik dalam Aplikasi Penelitian', 'Dr. Suliyanto', 'Andi', '005.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1657', '1657/Dinarpusta/19', 'Pedoman Gizi Lengkap Keluarga & Olahragawan', 'Prof. Dr. Djoko Pekik Irianto, M.Kes., AIFO', 'Andi', '612.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1658', '1658/Dinarpusta/19', 'Pedoman Gizi Lengkap Keluarga & Olahragawan', 'Prof. Dr. Djoko Pekik Irianto, M.Kes., AIFO', 'Andi', '612.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1659', '1659/Dinarpusta/19', 'Opportunity Calling', 'Ir. Hendro, M.M.', 'Andi', '34.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '166', '166/Dinarpusta/19', 'Penyegar Jiwa', 'Bishop. Dr. Jahja Handjojo. D.Hum', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 94100),
('2019-07-25', '1660', '1660/Dinarpusta/19', 'Opportunity Calling', 'Ir. Hendro, M.M.', 'Andi', '34.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 52200),
('2019-07-25', '1661', '1661/Dinarpusta/19', 'Matematika Lanjut Untuk Ilmu Fisika & Teknik', 'Bambang Murdaka Eka Jati', 'Andi', '519', 1, 'F', 'BANTUAN PERPUSNAS 2018', 52200),
('2019-07-25', '1662', '1662/Dinarpusta/19', 'Matematika Lanjut Untuk Ilmu Fisika & Teknik', 'Bambang Murdaka Eka Jati', 'Andi', '519', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1663', '1663/Dinarpusta/19', 'Sukse Bisnis Dan Beternak Sapi Perah ', 'Chaidir Bakri ', 'Lily Publisher', '636.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1664', '1664/Dinarpusta/19', 'Sukse Bisnis Dan Beternak Sapi Perah ', 'Chaidir Bakri ', 'Lily Publisher', '636.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1665', '1665/Dinarpusta/19', '100 Jalan Mengeruk Uang Yang Halal ', 'Aditya, S.T', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1666', '1666/Dinarpusta/19', '101 Jalan Mengeruk Uang Yang Halal ', 'Aditya, S.T', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1667', '1667/Dinarpusta/19', 'Panen Untung DARi Akuabisnis Kakap Merah', 'M. Ghufran H. Kordi K.', 'Lily Publisher', '639.31', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1668', '1668/Dinarpusta/19', 'Panen Untung DARi Akuabisnis Kakap Merah', 'M. Ghufran H. Kordi K.', 'Lily Publisher', '639.31', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77900),
('2019-07-25', '1669', '1669/Dinarpusta/19', 'Franchise Top Secret', 'Cita Yustisia Serfiyani', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77900),
('2019-07-25', '167', '167/Dinarpusta/19', 'Penyegar Jiwa', 'Bishop. Dr. Jahja Handjojo. D.Hum', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1670', '1670/Dinarpusta/19', 'Franchise Top Secret', 'Cita Yustisia Serfiyani', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41500),
('2019-07-25', '1671', '1671/Dinarpusta/19', 'Prinsip - Prinsip Pemasaran ', 'Ari Setiyaningrum', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41500),
('2019-07-25', '1672', '1672/Dinarpusta/19', 'Prinsip - Prinsip Pemasaran ', 'Ari Setiyaningrum', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59000),
('2019-07-25', '1673', '1673/Dinarpusta/19', 'Vertikultur', 'Nugraheni Widyawati', 'Lily Publisher', '630', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59000),
('2019-07-25', '1674', '1674/Dinarpusta/19', 'Vertikultur', 'Nugraheni Widyawati', 'Lily Publisher', '630', 1, 'F', 'BANTUAN PERPUSNAS 2018', 96700),
('2019-07-25', '1675', '1675/Dinarpusta/19', 'Cara Mudah Bertaman 29 Jenis Sayur dalam Pot', 'Nugraheni Widyawati', 'Lily Publisher', '631.68', 1, 'F', 'BANTUAN PERPUSNAS 2018', 96700),
('2019-07-25', '1676', '1676/Dinarpusta/19', 'Cara Mudah Bertaman 29 Jenis Sayur dalam Pot', 'Nugraheni Widyawati', 'Lily Publisher', '631.68', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1677', '1677/Dinarpusta/19', 'Smart Leadership Being A Leader ', 'Paulus Kurniawan ', 'Andi', '158.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1678', '1678/Dinarpusta/19', 'Smart Leadership Being A Leader ', 'Paulus Kurniawan ', 'Andi', '158.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 32400),
('2019-07-25', '1679', '1679/Dinarpusta/19', 'Step BY Step Membuat Busana Bayi denga Mudah & Murah ', 'Fitriasih Pudyo Atmaningrum, S.pd., M.Sn', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 32400),
('2019-07-25', '168', '168/Dinarpusta/19', 'Penyegar Jiwa', 'Bishop. Dr. Jahja Handjojo. D.Hum', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1680', '1680/Dinarpusta/19', 'Step BY Step Membuat Busana Bayi denga Mudah & Murah ', 'Fitriasih Pudyo Atmaningrum, S.pd., M.Sn', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1681', '1681/Dinarpusta/19', 'Asuhan Keperawatan Gerontik', 'Drs. Sunaryo, M.Kes', 'Andi', '613.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1682', '1682/Dinarpusta/19', 'Asuhan Keperawatan Gerontik', 'Drs. Sunaryo, M.Kes', 'Andi', '613.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 46200),
('2019-07-25', '1683', '1683/Dinarpusta/19', 'Pay With Smart ', 'Maruli Perdamean', 'Andi', '790.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 46200),
('2019-07-25', '1684', '1684/Dinarpusta/19', 'Pay With Smart ', 'Maruli Perdamean', 'Andi', '790.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41500),
('2019-07-25', '1685', '1685/Dinarpusta/19', 'Pengantar Wiraswastaan', 'Dr. Mohammad Masyur Wiratmo, M.Sc', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41500),
('2019-07-25', '1686', '1686/Dinarpusta/19', 'Pengantar Wiraswastaan', 'Dr. Mohammad Masyur Wiratmo, M.Sc', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 90700),
('2019-07-25', '1687', '1687/Dinarpusta/19', 'Biokimia Enzim Dan Metabolisme Karbohidrat', 'M. Nurkhozin', 'Andi', '378', 1, 'F', 'BANTUAN PERPUSNAS 2018', 90700),
('2019-07-25', '1688', '1688/Dinarpusta/19', 'Biokimia Enzim Dan Metabolisme Karbohidrat', 'M. Nurkhozin', 'Andi', '378', 1, 'F', 'BANTUAN PERPUSNAS 2018', 54800),
('2019-07-25', '1689', '1689/Dinarpusta/19', 'Pendidikan Keperawatan Jiwa [Teori dan Aplikasi]', 'Abdul Muhith', 'Andi', '616.8917', 1, 'F', 'BANTUAN PERPUSNAS 2018', 54800),
('2019-07-25', '169', '169/Dinarpusta/19', 'Momen Inspirasi ', 'Imanuel Kristo', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 30300),
('2019-07-25', '1690', '1690/Dinarpusta/19', 'Pendidikan Keperawatan Jiwa [Teori dan Aplikasi]', 'Abdul Muhith', 'Andi', '616.8917', 1, 'F', 'BANTUAN PERPUSNAS 2018', 74000),
('2019-07-25', '1691', '1691/Dinarpusta/19', 'Strategi Penelitian Bisnis ', 'Jogiyanto Hartono M.,M.B.A., Ph.D., Prof', 'Andi', '658.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 74000),
('2019-07-25', '1692', '1692/Dinarpusta/19', 'Strategi Pemasaran ', 'Fandy Tjiptono, Ph.D', 'Andi', '658.401', 1, 'F', 'BANTUAN PERPUSNAS 2018', 40200),
('2019-07-25', '1693', '1693/Dinarpusta/19', 'Strategi Pemasaran ', 'Fandy Tjiptono, Ph.D', 'Andi', '658.401', 1, 'F', 'BANTUAN PERPUSNAS 2018', 40200),
('2019-07-25', '1694', '1694/Dinarpusta/19', 'Smart Leadership Being A Decision Maker #1', 'Paulus Kurniawan ', 'Andi', '158.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1695', '1695/Dinarpusta/19', 'Inovasi ', 'Arman Hakim Nasution', 'Andi', '608', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1696', '1696/Dinarpusta/19', 'Inovasi ', 'Arman Hakim Nasution', 'Andi', '608', 1, 'F', 'BANTUAN PERPUSNAS 2018', 126500),
('2019-07-25', '1697', '1697/Dinarpusta/19', 'Service Management  ', 'Fandy Tjiptono, Ph.D', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 126500),
('2019-07-25', '1698', '1698/Dinarpusta/19', 'Service Management  ', 'Fandy Tjiptono, Ph.D', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 92400),
('2019-07-25', '1699', '1699/Dinarpusta/19', 'Smart Leadership Being A Decsion Maker #2', 'Paulus Kurniawan ', 'Andi', '158.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 92400),
('2019-07-25', '170', '170/Dinarpusta/19', 'Momen Inspirasi', 'Imanuel Kristo', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 30300),
('2019-07-25', '1700', '1700/Dinarpusta/19', 'Smart Leadership Being A Decsion Maker #2', 'Paulus Kurniawan ', 'Andi', '158.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 61500),
('2019-07-25', '1701', '1701/Dinarpusta/19', 'Aneka Kreasi Pola Rajut', 'Marvelly Marta Widada', 'Andi', '746.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 61500),
('2019-07-25', '1702', '1702/Dinarpusta/19', 'Aneka Kreasi Pola Rajut', 'Marvelly Marta Widada', 'Andi', '746.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77900),
('2019-07-25', '1703', '1703/Dinarpusta/19', 'Inspirasi Segar dengan Kreasi  Sampah Segara Dapur', 'CS Priyanti ', 'Andi', '628', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77900),
('2019-07-25', '1704', '1704/Dinarpusta/19', 'Penganti Akuntansi Berdasarkan SAK ETAP dan IFRS', 'Syaiful Bahri, S.E., MSA', 'Andi', '657', 1, 'F', 'BANTUAN PERPUSNAS 2018', 102600),
('2019-07-25', '1705', '1705/Dinarpusta/19', 'Penganti Akuntansi Berdasarkan SAK ETAP dan IFRS', 'Syaiful Bahri, S.E., MSA', 'Andi', '657', 1, 'F', 'BANTUAN PERPUSNAS 2018', 102600),
('2019-07-25', '1706', '1706/Dinarpusta/19', 'Perpajakan Edisi Tebaru 2016', 'Prof. Dr. Mardiasmo, MBA., Ak', 'Andi', '336.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1707', '1707/Dinarpusta/19', 'Perpajakan Edisi Tebaru 2016', 'Prof. Dr. Mardiasmo, MBA., Ak', 'Andi', '336.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1708', '1708/Dinarpusta/19', 'Manajemen Strategis', 'Eddy Yunus', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1709', '1709/Dinarpusta/19', 'Manajemen Strategis', 'Eddy Yunus', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '171', '171/Dinarpusta/19', 'Momen Inspirasi', 'Imanuel Kristo', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '1710', '1710/Dinarpusta/19', 'Piano Pop', 'Sang Nyoman Satria Irnaningrat', 'Andi', '786.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1711', '1711/Dinarpusta/19', 'Piano Pop', 'Sang Nyoman Satria Irnaningrat', 'Andi', '786.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1712', '1712/Dinarpusta/19', 'Ladang Duit dari Bisnis Bimbel', 'Adrian, Eko Saputro', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42700),
('2019-07-25', '1713', '1713/Dinarpusta/19', 'Ladang Duit dari Bisnis Bimbel', 'Adrian, Eko Saputro', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42700),
('2019-07-25', '1714', '1714/Dinarpusta/19', 'Beternak Burung Sriti & Walet Satu Atap ', 'Drh. Wheindrata HS.Sp.W', 'Lily Publisher', '636.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1715', '1715/Dinarpusta/19', 'Beternak Burung Sriti & Walet Satu Atap ', 'Drh. Wheindrata HS.Sp.W', 'Lily Publisher', '636.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1716', '1716/Dinarpusta/19', 'Logika Matematka ', 'Jong jek Siang', 'Andi', '511.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 115500),
('2019-07-25', '1717', '1717/Dinarpusta/19', 'Restrukturisasi Perusahaan dalam Perspektif Hukum Bisnis pada Berbagai Jenis Badan Usaha ', 'Cita Yustisia Serfiyani', 'Andi', '658.02     ', 1, 'F', 'BANTUAN PERPUSNAS 2018', 115500),
('2019-07-25', '1718', '1718/Dinarpusta/19', 'Creative Top Secret Ramuan Sukses Bisnis Kreatif Sepanjang Masa', 'Cita Yustisia Serfiyani', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 50100),
('2019-07-25', '1719', '1719/Dinarpusta/19', 'Creative Top Secret Ramuan Sukses Bisnis Kreatif Sepanjang Masa', 'Cita Yustisia Serfiyani', 'Andi', '338.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 50100),
('2019-07-25', '172', '172/Dinarpusta/19', 'Penjaga Sesama Manusia', 'Pdt. Agus Wiyanto, M.TH.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '1720', '1720/Dinarpusta/19', 'Multirotor Modeling - Designing - Building', 'Taufiq Dwi Septiani Suyadhi', 'Andi', '690', 1, 'F', 'BANTUAN PERPUSNAS 2018', 124000),
('2019-07-25', '1721', '1721/Dinarpusta/19', 'Multirotor Modeling - Designing - Building', 'Taufiq Dwi Septiani Suyadhi', 'Andi', '690', 1, 'F', 'BANTUAN PERPUSNAS 2018', 124000),
('2019-07-25', '1722', '1722/Dinarpusta/19', 'Budidaya Padi Pada Lahan Marjinal Kiat Meningkatkan Produksi Padi', 'Prof. Dr. Ir. M Zulman Harja Utama, MP', 'Andi', '633.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1723', '1723/Dinarpusta/19', 'Budidaya Padi Pada Lahan Marjinal Kiat Meningkatkan Produksi Padi', 'Prof. Dr. Ir. M Zulman Harja Utama, MP', 'Andi', '633.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1724', '1724/Dinarpusta/19', 'Intelijen Teori Intelijen Dan Pembangunan Jaringan', 'Y. Wahyu Saronto', 'Andi', '355.0009', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1725', '1725/Dinarpusta/19', 'Intelijen Teori Intelijen Dan Pembangunan Jaringan', 'Y. Wahyu Saronto', 'Andi', '355.0009', 1, 'F', 'BANTUAN PERPUSNAS 2018', 30000),
('2019-07-25', '1726', '1726/Dinarpusta/19', 'Logika Matematka ', 'Jong jek Siang', 'Andi', '511.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1727', '1727/Dinarpusta/19', 'Wirausaha Penggemukan Domba dan Perawatan Domba Ketangkasan', 'H. Rahmat Rukmana', 'Lily Publisher', '636.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1728', '1728/Dinarpusta/19', 'Menggambar Rancang Bangunan 2D dengan Auto Cad', 'Suparno Sastra M.', 'Andi', '720.22', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1729', '1729/Dinarpusta/19', 'Pengantar Metodologi Penelitian ', 'Prof. Dr. Kris H. Timotius', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '173', '173/Dinarpusta/19', 'Penjaga Sesama Manusia', 'Pdt. Agus Wiyanto, M.TH.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 43200),
('2019-07-25', '1730', '1730/Dinarpusta/19', 'Pengantar Metodologi Penelitian ', 'Prof. Dr. Kris H. Timotius', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 46200),
('2019-07-25', '1731', '1731/Dinarpusta/19', 'Administrasi dan Akuntabilitas Publik', 'Prof. Dr. Drs. Rakhmat, M.S', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 46200),
('2019-07-25', '1732', '1732/Dinarpusta/19', 'Administrasi dan Akuntabilitas Publik', 'Prof. Dr. Drs. Rakhmat, M.S', 'Andi', '658', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56100),
('2019-07-25', '1733', '1733/Dinarpusta/19', 'Manajemen Pemasaran Teori & Implementasi', 'Dr. Sudaryono', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56100),
('2019-07-25', '1734', '1734/Dinarpusta/19', 'Manajemen Pemasaran Teori & Implementasi', 'Dr. Sudaryono', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56100),
('2019-07-25', '1735', '1735/Dinarpusta/19', 'Import Top Secret ', 'Ismiyadi ', 'Andi', '382.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56100),
('2019-07-25', '1736', '1736/Dinarpusta/19', 'Import Top Secret ', 'Ismiyadi ', 'Andi', '382.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56100),
('2019-07-25', '1737', '1737/Dinarpusta/19', 'Statistik Kesehatan', 'I Ketut Swajana,SKM., M.P.H.', 'Andi', '610', 1, 'F', 'BANTUAN PERPUSNAS 2018', 56100),
('2019-07-25', '1738', '1738/Dinarpusta/19', 'Statistik Kesehatan', 'I Ketut Swajana,SKM., M.P.H.', 'Andi', '610', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '1739', '1739/Dinarpusta/19', 'Inspirasi Segar dengan Kreasi  Sampah Segara Dapur', 'CS Priyanti ', 'Andi', '628', 1, 'F', 'BANTUAN PERPUSNAS 2018', 38500),
('2019-07-25', '174', '174/Dinarpusta/19', 'Penjaga Sesama Manusia', 'Pdt. Agus Wiyanto, M.TH.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 43200),
('2019-07-25', '1740', '1740/Dinarpusta/19', 'Arsitektur Dan Kenyamanan Termal', 'Noor Cholis Idham, ph. D., IAI', 'Andi', '720.22', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800);
INSERT INTO `buku` (`tanggal_terima`, `id_buku`, `no_induk`, `judul_buku`, `pengarang`, `penerbit`, `no_kelas`, `eksamplar`, `jenis`, `keterangan`, `harga`) VALUES
('2019-07-25', '1741', '1741/Dinarpusta/19', 'Arsitektur Dan Kenyamanan Termal', 'Noor Cholis Idham, ph. D., IAI', 'Andi', '720.22', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1742', '1742/Dinarpusta/19', 'S.O.U.P Lezat Usaha Hebat ', 'Agung Setiyo Wibowo', 'Andi', '346.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1743', '1743/Dinarpusta/19', 'Manajemen Penanggulangan Bencana', 'Dr. I. Khambali, S.T., MPPM.', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1744', '1744/Dinarpusta/19', 'Manajemen Penanggulangan Bencana', 'Dr. I. Khambali, S.T., MPPM.', 'Andi', '658.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1745', '1745/Dinarpusta/19', 'METODE PENYUSUSNAN PROTOTIPE DENAH', 'Riandy Tarigan', 'Andi', '720.28', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1746', '1746/Dinarpusta/19', 'METODE PENYUSUSNAN PROTOTIPE DENAH', 'Riandy Tarigan', 'Andi', '720.28', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1747', '1747/Dinarpusta/19', 'MATEMATIKA TEKNIK', 'E. Sutarman', 'Andi', '519', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1748', '1748/Dinarpusta/19', 'MATEMATIKA TEKNIK', 'E. Sutarman', 'Andi', '519', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1749', '1749/Dinarpusta/19', 'Pemberdayaan Wanita dalam Bidang Kesehatan', 'A. August Burns', 'Andi', '613.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '175', '175/Dinarpusta/19', 'Perempuan dan Kristus', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 77000),
('2019-07-25', '1750', '1750/Dinarpusta/19', 'Untung Selangit dari agribisnis kopi', 'H. Rahmat Rukmana', 'Lily Publisher', '633.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2019-07-25', '1751', '1751/Dinarpusta/19', 'Untung Selangit dari agribisnis kopi', 'H. Rahmat Rukmana', 'Lily Publisher', '633.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 84700),
('2019-07-25', '1752', '1752/Dinarpusta/19', 'Pemberdayaan Wanita dalam Bidang Kesehatan', 'A. August Burns', 'Andi', '613.04', 1, 'F', 'BANTUAN PERPUSNAS 2018', 63100),
('2019-07-25', '1753', '1753/Dinarpusta/19', 'Manajemen Keperawtan DeMYSTiFieD', 'Irene McEachen, R.N., Ed.D.', 'Andi', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 63100),
('2019-07-25', '1754', '1754/Dinarpusta/19', 'Model Perencanaan Vegetasi Hutan Kota', 'Dr. I. Khambali, S.T., MPPM.', 'Andi', '635.977', 1, 'F', 'BANTUAN PERPUSNAS 2018', 45400),
('2019-07-25', '1755', '1755/Dinarpusta/19', 'Model Perencanaan Vegetasi Hutan Kota', 'Dr. I. Khambali, S.T., MPPM.', 'Andi', '635.977', 1, 'F', 'BANTUAN PERPUSNAS 2018', 45400),
('2019-07-25', '1756', '1756/Dinarpusta/19', 'Prinsip - prinsip Desain Arsitektur Tanah Gempa', 'Noor Cholis Idham, ph. D., IAI', 'Andi', '721', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1757', '1757/Dinarpusta/19', 'Prinsip - prinsip Desain Arsitektur Tanah Gempa', 'Noor Cholis Idham, ph. D., IAI', 'Andi', '721', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1758', '1758/Dinarpusta/19', 'Ilmu Kesehatan Masyarakat', 'Dr., dr., Alexander Lucas Slamet Ryadi, S.K.M.', 'Andi', '612', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1759', '1759/Dinarpusta/19', 'Ilmu Kesehatan Masyarakat', 'Dr., dr., Alexander Lucas Slamet Ryadi, S.K.M.', 'Andi', '612', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '176', '176/Dinarpusta/19', 'Perempuan dan Kristus', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 77000),
('2019-07-25', '1760', '1760/Dinarpusta/19', 'Kota untuk semua', 'Parmonangan Manurung', 'Andi', '711.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1761', '1761/Dinarpusta/19', 'Kota untuk semua', 'Parmonangan Manurung', 'Andi', '711.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1762', '1762/Dinarpusta/19', 'Farmakalogi DeMYSTiFieD', 'Dr. Mary Kamienski ', 'Rapha Publishing', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 58200),
('2019-07-25', '1763', '1763/Dinarpusta/19', 'Farmakalogi DeMYSTiFieD', 'Dr. Mary Kamienski ', 'Rapha Publishing', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 58200),
('2019-07-25', '1764', '1764/Dinarpusta/19', 'Asuhan Kebidanan Komunitas', 'Dainty Maternity, SST., M.Keb.', 'Andi', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 89900),
('2019-07-25', '1765', '1765/Dinarpusta/19', 'Asuhan Kebidanan Komunitas', 'Dainty Maternity, SST., M.Keb.', 'Andi', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 89900),
('2019-07-25', '1766', '1766/Dinarpusta/19', 'From Zero to a PRO Arduino', 'Abdul Kadir ', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 33400),
('2019-07-25', '1767', '1767/Dinarpusta/19', 'From Zero to a PRO Arduino', 'Abdul Kadir ', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 33400),
('2019-07-25', '1768', '1768/Dinarpusta/19', 'Membuat Robot Cerdas Berbasis Vision', 'Mada Sanjaya WS, Ph. D', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1769', '1769/Dinarpusta/19', 'Membuat Robot Cerdas Berbasis Vision', 'Mada Sanjaya WS, Ph. D', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '177', '177/Dinarpusta/19', 'Perempuan dan Kristus', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 72700),
('2019-07-25', '1770', '1770/Dinarpusta/19', 'Teknologi Bahan Lanjut', 'Ir. Syamsul Hadi, M.T., Ph.D.', 'Andi', '693.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1771', '1771/Dinarpusta/19', 'Teknologi Bahan Lanjut', 'Ir. Syamsul Hadi, M.T., Ph.D.', 'Andi', '693.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 41900),
('2019-07-25', '1772', '1772/Dinarpusta/19', 'Robot Cerdas Berbasis Speech Recognition', 'Mada Sanjaya WS, Ph. D', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1773', '1773/Dinarpusta/19', 'Robot Cerdas Berbasis Speech Recognition', 'Mada Sanjaya WS, Ph. D', 'Andi', '629.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1774', '1774/Dinarpusta/19', 'Manajemen Keperawatan DeMYSTiFieD', 'Irene McEachen, R.N., Ed.D.', 'Andi', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 50500),
('2019-07-25', '1775', '1775/Dinarpusta/19', 'HAMA-HAMA TANAMAN HORTIKULTURA', 'Dantje T.Sembel,B.Agr.Sc.,Ph.D', 'Lily Publisher', '632.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 50500),
('2019-07-25', '1776', '1776/Dinarpusta/19', 'Farm big book budi daya & pasca panen bunga potong unggulan', 'H. Rahmat Rukmana', 'Lily Publisher', '635.9', 1, 'F', 'BANTUAN PERPUSNAS 2018', 62500),
('2019-07-25', '1777', '1777/Dinarpusta/19', 'The Miracle of colors', 'Nurheti Yuliarti', 'Rapha Publishing', '641.34', 1, 'F', 'BANTUAN PERPUSNAS 2018', 62500),
('2019-07-25', '1778', '1778/Dinarpusta/19', 'The Miracle of colors', 'Nurheti Yuliarti', 'Rapha Publishing', '641.34', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1779', '1779/Dinarpusta/19', 'Herbal Bali ', 'Ibunda Suparni', 'Rapha Publishing', '635.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '178', '178/Dinarpusta/19', 'Perjalanan Menemukan Identitas', 'Bambang Suryono', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 72700),
('2019-07-25', '1780', '1780/Dinarpusta/19', 'Herbal Bali ', 'Ibunda Suparni', 'Rapha Publishing', '635.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1781', '1781/Dinarpusta/19', 'Cara Jitu Mengatasi Asam Urat', 'Dr. Yekti Mumpuni', 'Rapha Publishing', '616.39', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1782', '1782/Dinarpusta/19', 'Cara Jitu Mengatasi Asam Urat', 'Dr. Yekti Mumpuni', 'Rapha Publishing', '616.39', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1783', '1783/Dinarpusta/19', 'Serasi & Gaya Dengan Sarimbit Muslim ', 'Eri Rohayati ', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1784', '1784/Dinarpusta/19', 'Serasi & Gaya Dengan Sarimbit Muslim ', 'Eri Rohayati ', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 66700),
('2019-07-25', '1785', '1785/Dinarpusta/19', '9 Secrets Of Women ', 'Dyah Umiyarni Purnamasari, SKM, M.Si.', 'Rapha Publishing', '641.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 66700),
('2019-07-25', '1786', '1786/Dinarpusta/19', '9 Secrets Of Women ', 'Dyah Umiyarni Purnamasari, SKM, M.Si.', 'Rapha Publishing', '641.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1787', '1787/Dinarpusta/19', 'Gigi Merawat Dan Menjaga Kesehatan Gigi Dan Mulut ', 'Drg. Dwi Septianingtyas, Sp.PM', 'Rapha Publishing', '617.70', 1, 'F', 'BANTUAN PERPUSNAS 2018', 42800),
('2019-07-25', '1788', '1788/Dinarpusta/19', 'Gigi Merawat Dan Menjaga Kesehatan Gigi Dan Mulut ', 'Drg. Dwi Septianingtyas, Sp.PM', 'Rapha Publishing', '617.70', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '1789', '1789/Dinarpusta/19', 'Imunomodulator Bahan Alami ', 'Prof. Dr. Ediati Sasmito, S.E., Apt.', 'Rapha Publishing', '615.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 34200),
('2019-07-25', '179', '179/Dinarpusta/19', 'Perjalanan Menemukan Identitas', 'Bambang Suryono', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 38500),
('2019-07-25', '1790', '1790/Dinarpusta/19', 'Imunomodulator Bahan Alami ', 'Prof. Dr. Ediati Sasmito, S.E., Apt.', 'Rapha Publishing', '615.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 119700),
('2019-07-25', '1791', '1791/Dinarpusta/19', 'Sehat Dengan Juice ', 'Yohanes Sunardi', 'Rapha Publishing', '663.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 119700),
('2019-07-25', '1792', '1792/Dinarpusta/19', 'Sehat Dengan Juice ', 'Yohanes Sunardi', 'Rapha Publishing', '663.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 93200),
('2019-07-25', '1793', '1793/Dinarpusta/19', 'The Miracle Of Colors ', 'Dwi Ermawati', 'Rapha Publishing', '641.34', 1, 'F', 'BANTUAN PERPUSNAS 2018', 93200),
('2019-07-25', '1794', '1794/Dinarpusta/19', 'The Miracle Of Colors ', 'Dwi Ermawati', 'Rapha Publishing', '641.34', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1795', '1795/Dinarpusta/19', 'Untung Berlipat Dari Budi Daya Manggis Tanaman Multi Manfaat', 'M. Jawal Anwarudin Syah', 'Lily Publisher', '634.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 85500),
('2019-07-25', '1796', '1796/Dinarpusta/19', 'Untung Berlipat Dari Budi Daya Manggis Tanaman Multi Manfaat', 'M. Jawal Anwarudin Syah', 'Lily Publisher', '634.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2019-07-25', '1797', '1797/Dinarpusta/19', 'Home Care Nursing ', 'Ns. Andi Parellangi, S.Kep., M.H.', 'Andi', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 128300),
('2019-07-25', '1798', '1798/Dinarpusta/19', 'Home Care Nursing ', 'Ns. Andi Parellangi, S.Kep., M.H.', 'Andi', '610.73', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1799', '1799/Dinarpusta/19', 'Pengantar Untuk Simulasi Proses Dengan Aspen Hysys', 'Prof. Dr. Ir. Heru Setyawan, M.Eng.', 'Andi', '660.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '180', '180/Dinarpusta/19', 'Perjalanan Menemukan Identitas', 'Bambang Suryono', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 38500),
('2019-07-25', '1800', '1800/Dinarpusta/19', 'Pengantar Untuk Simulasi Proses Dengan Aspen Hysys', 'Prof. Dr. Ir. Heru Setyawan, M.Eng.', 'Andi', '660.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2019-07-25', '1801', '1801/Dinarpusta/19', 'Turbin Air Teiri & Dasar Perencanaan ', 'Syukri Himran', 'Andi', '628.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 77000),
('2019-07-25', '1802', '1802/Dinarpusta/19', 'Turbin Air Teiri & Dasar Perencanaan ', 'Syukri Himran', 'Andi', '628.1', 1, 'F', 'BANTUAN PERPUSNAS 2018', 60300),
('2019-07-25', '1803', '1803/Dinarpusta/19', 'Metode Pengumpulan Dan Teknik Analisis Data ', 'Jogiyanto Hartono M.,M.B.A., Ph.D., Prof', 'Andi', '658.05', 1, 'F', 'BANTUAN PERPUSNAS 2018', 60300),
('2019-07-25', '1804', '1804/Dinarpusta/19', 'Metode Pengumpulan Dan Teknik Analisis Data ', 'Jogiyanto Hartono M.,M.B.A., Ph.D., Prof', 'Andi', '658.05', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1805', '1805/Dinarpusta/19', 'Healthy Menu Untuk Penderita Penyakit Jantung', 'Khusnul Khotimah', 'Rapha Publishing', '616', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1806', '1806/Dinarpusta/19', 'Healthy Menu Untuk Penderita Penyakit Jantung', 'Khusnul Khotimah', 'Rapha Publishing', '616', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1807', '1807/Dinarpusta/19', 'Halaman Organik Minimalis ', 'Hieronymus Budi Susanto', 'Lily Publisher', '635', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1808', '1808/Dinarpusta/19', 'Halaman Organik Minimalis ', 'Hieronymus Budi Susanto', 'Lily Publisher', '635', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '1809', '1809/Dinarpusta/19', 'Hebal Kalimantan Ramuan Tradisional Asli Dari Kalimantan ', 'Ibunda Suparni', 'Rapha Publishing', '635.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 59900),
('2019-07-25', '181', '181/Dinarpusta/19', 'Kerajaan-MU Bukan Kerajaanku', 'Ev. Daniel Alexander', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1810', '1810/Dinarpusta/19', 'Hebal Kalimantan Ramuan Tradisional Asli Dari Kalimantan ', 'Ibunda Suparni', 'Rapha Publishing', '635.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1811', '1811/Dinarpusta/19', 'Buku Pintar Menghitung Biaya Bangunan ', 'Rio Manullang', 'Andi', '692.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '1812', '1812/Dinarpusta/19', 'Buku Pintar Menghitung Biaya Bangunan ', 'Rio Manullang', 'Andi', '692.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1813', '1813/Dinarpusta/19', 'Grow Your Own Kitchen Spice ', 'Cahya Saparinto ', 'Lily Publisher', '633.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 36000),
('2019-07-25', '1814', '1814/Dinarpusta/19', 'Grow Your Own Kitchen Spice ', 'Cahya Saparinto ', 'Lily Publisher', '633.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 32500),
('2019-07-25', '1815', '1815/Dinarpusta/19', 'Teknologi Aspa Dan Penggunaannya', 'Ir. Soehartono', 'Andi', '691.9', 1, 'F', 'BANTUAN PERPUSNAS 2018', 32500),
('2019-07-25', '1816', '1816/Dinarpusta/19', 'Teknologi Aspa Dan Penggunaannya', 'Ir. Soehartono', 'Andi', '691.9', 1, 'F', 'BANTUAN PERPUSNAS 2018', 118000),
('2019-07-25', '1817', '1817/Dinarpusta/19', 'Khasiat Madu Untuk Kesehatan Dan Kecantikan ', 'Nurhenti Yuliarti', 'Rapha Publishing', '638.16', 1, 'F', 'BANTUAN PERPUSNAS 2018', 118000),
('2019-07-25', '1818', '1818/Dinarpusta/19', 'Khasiat Madu Untuk Kesehatan Dan Kecantikan ', 'Nurhenti Yuliarti', 'Rapha Publishing', '638.16', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2019-07-25', '1819', '1819/Dinarpusta/19', 'Aloe Vera Khasit A-Z Untuk Kesehatan Dan Kecantikan ', 'Lely Noormindhawati', 'Rapha Publishing', '681.63', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68400),
('2019-07-25', '182', '182/Dinarpusta/19', 'Pelopor Kesuksesan', 'Zevrijn Boy Kanu', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1820', '1820/Dinarpusta/19', 'Aloe Vera Khasit A-Z Untuk Kesehatan Dan Kecantikan ', 'Lely Noormindhawati', 'Rapha Publishing', '681.63', 1, 'F', 'BANTUAN PERPUSNAS 2018', 111200),
('2019-07-25', '1821', '1821/Dinarpusta/19', 'Have An Excelllent Husband in 5 Days ', 'Dr. Kevin Leman ', 'Andi', '640', 1, 'F', 'BANTUAN PERPUSNAS 2018', 111200),
('2019-07-25', '1822', '1822/Dinarpusta/19', 'Have An Excelllent Husband in 5 Days ', 'Dr. Kevin Leman ', 'Andi', '640', 1, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2019-07-25', '1823', '1823/Dinarpusta/19', 'Panduan Gizi & Kesahatan Anak Sekolah ', 'Dyah Umiyarni Purnamasari, SKM, M.Si.', 'Andi', '641.562', 1, 'F', 'BANTUAN PERPUSNAS 2018', 94100),
('2019-07-25', '1824', '1824/Dinarpusta/19', 'Panduan Gizi & Kesahatan Anak Sekolah ', 'Dyah Umiyarni Purnamasari, SKM, M.Si.', 'Andi', '641.562', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1825', '1825/Dinarpusta/19', 'Ilmu Kesehatan Masyarakat', 'I Ketut Swajana,SKM., M.P.H.', 'Andi', '614', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1826', '1826/Dinarpusta/19', 'Ilmu Kesehatan Masyarakat', 'I Ketut Swajana,SKM., M.P.H.', 'Andi', '614', 1, 'F', 'BANTUAN PERPUSNAS 2018', 74000),
('2019-07-25', '1827', '1827/Dinarpusta/19', 'Jahe Organik Di Pekarangan & Perkebunan ', 'Hieronymus Budi Susanto', 'Lily Publisher', '635', 1, 'F', 'BANTUAN PERPUSNAS 2018', 74000),
('2019-07-25', '1828', '1828/Dinarpusta/19', 'Jahe Organik Di Pekarangan & Perkebunan ', 'Hieronymus Budi Susanto', 'Lily Publisher', '635', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '1829', '1829/Dinarpusta/19', 'Jejak Sukses Pengusaha Kelapa Indonesia ', 'Mawardin M. Simpala', 'Lily Publisher', '633.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 72700),
('2019-07-25', '183', '183/Dinarpusta/19', 'Pengantar Praktis Studi Kitab-kitab Injil', 'Deky Hidnas Yan Nggadas', 'Andi Yogyakarta', '225', 1, 'F', 'APBD 2019', 59600),
('2019-07-25', '1830', '1830/Dinarpusta/19', 'Panen Untung dar iProduksi Tokolan Udang Dalam Waktu Singkat ', 'Akhmad Mustafa', 'Lily Publisher', '639.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68000),
('2019-07-25', '1831', '1831/Dinarpusta/19', 'Sukses Budi Daya Ikan Gurami Secara Intensif ', 'H. Rahmat Rukmana', 'Lily Publisher', '639.31', 1, 'F', 'BANTUAN PERPUSNAS 2018', 68000),
('2019-07-25', '1832', '1832/Dinarpusta/19', 'Wirausaha ternak Kerbau Secara Intensif', 'H. Rahmat Rukmana', 'Lily Publisher', '636.02', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1833', '1833/Dinarpusta/19', 'Wirausaha Ternak Puyuh Secara Intensif', 'H. Rahmat Rukmana', 'Lily Publisher', '637.7', 1, 'F', 'BANTUAN PERPUSNAS 2018', 47100),
('2019-07-25', '1834', '1834/Dinarpusta/19', 'Kunci Sukses Memilihara  Kura - Kura Brazil', 'Yo Hi Kuang', 'Lily Publisher', '639', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1835', '1835/Dinarpusta/19', 'PLTMH ( Pembangkit Listrik Tenaga Mikro Hidro)', 'Hunggul Y.S.H. Nugroho', 'Andi', '621.313', 1, 'F', 'BANTUAN PERPUSNAS 2018', 55600),
('2019-07-25', '1836', '1836/Dinarpusta/19', 'Sukses Budi Daya Ikan Lele Secara Intensif ', 'H. Rahmat Rukmana', 'Lily Publisher', '639.31', 1, 'F', 'BANTUAN PERPUSNAS 2018', 58200),
('2019-07-25', '1837', '1837/Dinarpusta/19', 'Untung Selamgit Dari Agribisnis Cabai', 'H.Rahmat Rukmana', 'Lily Publisher', '635.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 58200),
('2019-07-25', '1838', '1838/Dinarpusta/19', 'Anggrek Hidroponik', 'Inayat Hanoum', 'Lily Publisher', '631.58', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1839', '1839/Dinarpusta/19', 'Merawat & Meraup Untung Dari Hewan Kesayangan Terpopuler ', 'Drh. Nurheti Yuliarti', 'Lily Publisher', '636.08', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '184', '184/Dinarpusta/19', 'Pembinaan Warga Gereja Selaras Dengan Tantangan Jaman', 'Dr. R. M. Driel S. Brotosudarmo', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 59600),
('2019-07-25', '1840', '1840/Dinarpusta/19', 'Sukses Budi Daya Ikan Mas Secara Insentif', 'H.Rahmat Rukmana', 'Lily Publisher', '639.31', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1841', '1841/Dinarpusta/19', 'Pemasaran Produk Pertanian', 'Ratya Anindita', 'Andi', '381.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1842', '1842/Dinarpusta/19', 'Best Management Practice Kelapa Sawit ', 'Maruli Perdamean', 'Lily Publisher', '655.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1843', '1843/Dinarpusta/19', 'Sukses Budi Daya Ikan Patin Secara Intensif ', 'H.Rahmat Rukmana', 'Lily Publisher', '639.31', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1844', '1844/Dinarpusta/19', 'Sukses Budi Daya Bawng Merah Di Pekarangan Dan Perkebunan ', 'H.Rahmat Rukmana', 'Lily Publisher', '635.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1845', '1845/Dinarpusta/19', 'Untung Selangit Dari Agribisnis Pala ', 'H.Rahmat Rukmana', 'Lily Publisher', '633.83', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1846', '1846/Dinarpusta/19', 'Sukses Budi Daya Pisang Di Perkarangan Dan Perkebunan ', 'Bambang Cahyono', 'Lily Publisher', '634.77', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1847', '1847/Dinarpusta/19', 'Panduan Praktis Membuat Biogas Portabel Skala Rumah Tangga & Industri ', 'Dr. Ir. Hardoyo, M.Eng.', 'Lily Publisher', '665.77', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1848', '1848/Dinarpusta/19', 'Buku Pintar Bisnis & Budi Daya Kekerangan ', 'Dr. Achmad Surdradjat', 'Lily Publisher', '639.4', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1849', '1849/Dinarpusta/19', 'Sukses Budi Daya Pepaya California Di pekarangan Dan Perkebunan ', 'Hieronymus Budi Susanto', 'Lily Publisher', '635.5', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '185', '185/Dinarpusta/19', 'Raising Kingdom Kids', 'Tony Evans', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 72700),
('2019-07-25', '1850', '1850/Dinarpusta/19', 'Kocek Mantap Dari Anis Merah Jawara Lomba', 'Suryo S', 'Lily Publisher', '636.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1851', '1851/Dinarpusta/19', 'Meraup Untuk Bertanam Cabe Hibrida Unggul di Lahan & Polybag', 'Emil Salim', 'Lily Publisher', '635.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1852', '1852/Dinarpusta/19', 'Keajaiban Air & Buah Jadi Satu : Infused Water ', 'Feri Sulianta ', 'Rapha Publishing', '615.85', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1853', '1853/Dinarpusta/19', 'Seputaran Kesehatan Gigi & Mulut ', 'Drg. Agam Ferry Erwana', 'Rapha Publishing', '611.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1854', '1854/Dinarpusta/19', 'Antibodi & Imunohistokimia ', 'R. Warsito', 'Rapha Publishing', '616.07', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1855', '1855/Dinarpusta/19', 'Menjelajah Aneka Tumbuhan ', 'Dian Oky Saktyowati ', 'Trans Mandiri Abadi', '0', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1856', '1856/Dinarpusta/19', 'Untung Selangit Dari Agribisnis Karet ', 'H.Rahmat Rukmana', 'Lily Publisher', '633.8', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1857', '1857/Dinarpusta/19', 'Panen Untung Dari Budi Daya Salak Insentif', 'Bambang Cahyono', 'Lily Publisher', '634.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1858', '1858/Dinarpusta/19', 'Diabetes Makan Apa???', 'Prof. Dr. Hans Tandra,SpPD-KEMD,Ph.D.,FINASIM,FACE', 'Rapha Publishing', '641.56', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1859', '1859/Dinarpusta/19', 'Grow Your Own  Fruits ', 'Cahyo Saparinto ', 'Lily Publisher', '634', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '186', '186/Dinarpusta/19', 'Pengantar Perjanjian Baru ', 'Dr. R. M. Driel S. Brotosudarmo', 'Andi Yogyakarta', '225', 1, 'F', 'APBD 2019', 72700),
('2019-07-25', '1860', '1860/Dinarpusta/19', 'Simpel Hidroponik ', 'Muhammad Lqbal', 'Lily Publisher', '633.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1861', '1861/Dinarpusta/19', 'Kelapa', 'Mwardin M. Simpala', 'Lily Publisher', '633.6', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1862', '1862/Dinarpusta/19', 'Budi Daya & Pascapanen tanaman Obat Unggulan ', 'H.Rahmat Rukmana', 'Lily Publisher', '635.67', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1863', '1863/Dinarpusta/19', 'Photopreneurship Mendulang Dolar Melalui Foto', 'M.Suyanto', 'Andi', '770.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1864', '1864/Dinarpusta/19', 'Buku Pintar Teknisi Otodidak Sepeda Motor Metic', 'Marsudi, M.T.', 'Andi', '629.2', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1865', '1865/Dinarpusta/19', 'Termodinamika Dasar Mesin Konversi Energi', 'Chandrasa Soekardi ', 'Andi', '621.042', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1866', '1866/Dinarpusta/19', 'Windows 8.1 Hack,Tips & Trik ', 'San Fransisco', 'Andi', '004.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2019-07-25', '1867', '1867/Dinarpusta/19', 'Windows 8.1 Hack,Tips & Trik ', 'San Fransisco', 'Andi', '004.3', 1, 'F', '', 0),
('2019-07-25', '1868', '1868/Dinarpusta/19', 'MATLAB untuk MAHASISWA', 'Dr.Eng.R.H.Sianipar ', 'Andi', '740.71', 1, 'F', '', 0),
('2019-07-25', '1869', '1869/Dinarpusta/19', 'MATLAB untuk MAHASISWA', 'Dr.Eng.R.H.Sianipar ', 'Andi', '740.71', 1, 'F', '', 0),
('2019-07-25', '187', '187/Dinarpusta/19', 'Pastoral Konseling Alkitabiah 1', 'June Hunt', 'Andi Yogyakarta', '261.5', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1870', '1870/Dinarpusta/19', 'Microsoft Word 2016 untuk Pemula', 'TIM', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '1871', '1871/Dinarpusta/19', 'Microsoft Word 2016 untuk Pemula', 'TIM', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '1872', '1872/Dinarpusta/19', 'Menguasai ArcGIS 10 untuk Pemula ', 'TIM', 'Andi', '004.3', 1, 'F', '', 0),
('2019-07-25', '1873', '1873/Dinarpusta/19', 'Menguasai ArcGIS 10 untuk Pemula ', 'TIM', 'Andi', '004.3', 1, 'F', '', 0),
('2019-07-25', '1874', '1874/Dinarpusta/19', 'Analisis Data Pemodelan Bisnis menggunakan EXCEL', 'C.Trihendradi ', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1875', '1875/Dinarpusta/19', 'Analisis Data Pemodelan Bisnis menggunakan EXCEL', 'C.Trihendradi ', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1876', '1876/Dinarpusta/19', 'Mudah Membagun Jaringan Wireles untuk Pemula', 'TIM', 'Andi', '469.5', 1, 'F', '', 0),
('2019-07-25', '1877', '1877/Dinarpusta/19', 'Mudah Membagun Jaringan Wireles untuk Pemula', 'TIM', 'Andi', '469.5', 1, 'F', '', 0),
('2019-07-25', '1878', '1878/Dinarpusta/19', 'Adobe Photoshop CC untuk Pemula', 'TIM', 'Andi', '006.696 ', 1, 'F', '', 0),
('2019-07-25', '1879', '1879/Dinarpusta/19', 'Adobe Photoshop CC untuk Pemula', 'TIM', 'Andi', '006.696 ', 1, 'F', '', 0),
('2019-07-25', '188', '188/Dinarpusta/19', 'Pastoral Konseling Alkitabiah 2', 'June Hunt', 'Andi Yogyakarta', '261.5', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '1880', '1880/Dinarpusta/19', 'Bikin Sendiri Blog dengan BLOGGER untuk Pemula', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1881', '1881/Dinarpusta/19', 'Bikin Sendiri Blog dengan BLOGGER untuk Pemula', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1882', '1882/Dinarpusta/19', 'Seri Pemprograman PHP di Ubuntu Membuat Sistem Informasi kursus berbasis Web', 'Khadafi Zubaidi', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1883', '1883/Dinarpusta/19', 'Seri Pemprograman PHP di Ubuntu Membuat Sistem Informasi kursus berbasis Web', 'Khadafi Zubaidi', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1884', '1884/Dinarpusta/19', 'Tips Berjualan Berpromosi Online Terbaik', 'Feri Sulianta ', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1885', '1885/Dinarpusta/19', 'Tips Berjualan Berpromosi Online Terbaik', 'Feri Sulianta ', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1886', '1886/Dinarpusta/19', 'Trik Cepat Membangun Aplikasi Berbasis Web dengan  Framework Codelgniter', 'Yenda Purbadian', 'Andi', '005.36', 1, 'F', '', 0),
('2019-07-25', '1887', '1887/Dinarpusta/19', 'Trik Cepat Membangun Aplikasi Berbasis Web dengan  Framework Codelgniter', 'Yenda Purbadian', 'Andi', '005.36', 1, 'F', '', 0),
('2019-07-25', '1888', '1888/Dinarpusta/19', 'Koleksi Software Gratis untuk HACKING dan CRACKING', 'TIM', 'Andi', '510.9', 1, 'F', '', 0),
('2019-07-25', '1889', '1889/Dinarpusta/19', 'Koleksi Software Gratis untuk HACKING dan CRACKING', 'TIM', 'Andi', '510.9', 1, 'F', '', 0),
('2019-07-25', '189', '189/Dinarpusta/19', 'Pendidikan Agama Kristen Dalam Alkitab dan Dunia Pendidikan Masa Kini', 'Harianto GP', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1890', '1890/Dinarpusta/19', 'POWER POINT 2013 untuk Marketing Kit Online', 'TIM', 'Andi', '005.1', 1, 'F', '', 0),
('2019-07-25', '1891', '1891/Dinarpusta/19', 'POWER POINT 2013 untuk Marketing Kit Online', 'TIM', 'Andi', '005.1', 1, 'F', '', 0),
('2019-07-25', '1892', '1892/Dinarpusta/19', 'Desain Danbo PaperCraft mdengan CorelDraw X7', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1893', '1893/Dinarpusta/19', 'Desain Danbo PaperCraft mdengan CorelDraw X7', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1894', '1894/Dinarpusta/19', 'WEBMASTER SERIES Menguasai HTML', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1895', '1895/Dinarpusta/19', 'WEBMASTER SERIES Menguasai HTML', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1896', '1896/Dinarpusta/19', 'Kiat Sukses & Cara Memulai BISNIS Web Hosting', 'TIM', 'Andi', '004.3', 1, 'F', '', 0),
('2019-07-25', '1897', '1897/Dinarpusta/19', 'Kiat Sukses & Cara Memulai BISNIS Web Hosting', 'TIM', 'Andi', '004.3', 1, 'F', '', 0),
('2019-07-25', '1898', '1898/Dinarpusta/19', 'jQuery & Ajax untuk Web Designer', 'Dr.Eng.R.H.Sianipar ', 'Andi', '006.868', 1, 'F', '', 0),
('2019-07-25', '1899', '1899/Dinarpusta/19', 'jQuery & Ajax untuk Web Designer', 'Dr.Eng.R.H.Sianipar ', 'Andi', '006.869', 1, 'F', '', 0),
('2019-07-25', '190', '190/Dinarpusta/19', 'Sukses Lolos TPA, Simulasi + TOEFL', 'Risky Wulandari', 'Andi Yogyakarta', '153.93', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1900', '1900/Dinarpusta/19', 'Manajemen Warna dan Desain ', 'SARWO NUGROHO', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1901', '1901/Dinarpusta/19', 'Manajemen Warna dan Desain ', 'SARWO NUGROHO', 'Andi', '005.269', 1, 'F', '', 0),
('2019-07-25', '1902', '1902/Dinarpusta/19', 'Panduan praktis Membuat Mni Games Android Menggunakan Adobe Animate CC', 'Ardy Saputro', 'Andi', '005.28', 1, 'F', '', 0),
('2019-07-25', '1903', '1903/Dinarpusta/19', 'Panduan praktis Membuat Mni Games Android Menggunakan Adobe Animate CC', 'Ardy Saputro', 'Andi', '005.29', 1, 'F', '', 0),
('2019-07-25', '1904', '1904/Dinarpusta/19', 'Belajar Mandiri Membuat Struktur Rumah Dua Lantai SAP 2000', 'Ngudi Hari Crista', 'Andi', '005.2', 1, 'F', '', 0),
('2019-07-25', '1905', '1905/Dinarpusta/19', 'Belajar Mandiri Membuat Struktur Rumah Dua Lantai SAP 2001', 'Ngudi Hari Crista', 'Andi', '005.2', 1, 'F', '', 0),
('2019-07-25', '1906', '1906/Dinarpusta/19', 'Cepat & mudah Belajar sendiri Mengamankan & Menyelamatkan Data pada Harddisk', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1907', '1907/Dinarpusta/19', 'Cepat & mudah Belajar sendiri Mengamankan & Menyelamatkan Data pada Harddisk', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1908', '1908/Dinarpusta/19', 'Mudah Membuat Game Adventure Adobe Flash CS 6 ActionScript 3.0', 'Ardy Saputro', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1909', '1909/Dinarpusta/19', 'Mudah Membuat Game Adventure Adobe Flash CS 6 ActionScript 3.0', 'Ardy Saputro', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '191', '191/Dinarpusta/19', 'Sukses Lolos TPA, Simulasi + TOEFL', 'Risky Wulandari', 'Andi Yogyakarta', '153.93', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1910', '1910/Dinarpusta/19', 'Pemrograman C Soal dan Penyelesain ', 'R.H.Sianipar', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1911', '1911/Dinarpusta/19', 'Pemrograman C Soal dan Penyelesain ', 'R.H.Sianipar', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1912', '1912/Dinarpusta/19', 'Kupas Tuntas Adobe Premiere CC', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1913', '1913/Dinarpusta/19', 'Kupas Tuntas Adobe Premiere CC', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1914', '1914/Dinarpusta/19', 'Stastidtik Nonparametrik Terapan : Teori,contoh kasus, Aplikasi dengan IBM SPSS', ' Mohammad Farhan Qudratullah, M.Si.', 'Andi', '005.695', 1, 'F', '', 0),
('2019-07-25', '1915', '1915/Dinarpusta/19', 'Stastidtik Nonparametrik Terapan : Teori,contoh kasus, Aplikasi dengan IBM SPSS', ' Mohammad Farhan Qudratullah, M.Si.', 'Andi', '005.695', 1, 'F', '', 0),
('2019-07-25', '1916', '1916/Dinarpusta/19', 'Belajr Sendiri Pasti Bisa Javascript', 'Abdul Kadir ', 'Andi', '006.698', 1, 'F', '', 0),
('2019-07-25', '1917', '1917/Dinarpusta/19', 'Belajr Sendiri Pasti Bisa Javascript', 'Abdul Kadir ', 'Andi', '006.698', 1, 'F', '', 0),
('2019-07-25', '1918', '1918/Dinarpusta/19', 'Dasar Pemprograman Python 3', 'Abdul Kadir ', 'Andi', '005.5', 1, 'F', '', 0),
('2019-07-25', '1919', '1919/Dinarpusta/19', 'Dasar Pemprograman Python 3', 'Abdul Kadir ', 'Andi', '005.5', 1, 'F', '', 0),
('2019-07-25', '192', '192/Dinarpusta/19', 'Personality plus at Work', 'Florence Littauer dan Rose Sweet', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1920', '1920/Dinarpusta/19', 'Kriptografi & Implementasinya Menggunakan MATLAB', 'Emy Setyaningsih,S.Si.,M.Kom', 'Andi', '006.66', 1, 'F', '', 0),
('2019-07-25', '1921', '1921/Dinarpusta/19', 'Kriptografi & Implementasinya Menggunakan MATLAB', 'Emy Setyaningsih,S.Si.,M.Kom', 'Andi', '006.66', 1, 'F', '', 0),
('2019-07-25', '1922', '1922/Dinarpusta/19', 'ERGONOMIKA & MANAJEMEN TEKNOLOGI INFORMASI', 'FERY SULIANTA', 'Andi', '004.068', 1, 'F', '', 0),
('2019-07-25', '1923', '1923/Dinarpusta/19', 'ERGONOMIKA & MANAJEMEN TEKNOLOGI INFORMASI', 'FERY SULIANTA', 'Andi', '004.068', 1, 'F', '', 0),
('2019-07-25', '1924', '1924/Dinarpusta/19', 'Kupas Tuntas Adobe Flash Pro CC', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1925', '1925/Dinarpusta/19', 'Kupas Tuntas Adobe Flash Pro CC', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1926', '1926/Dinarpusta/19', ' You Can do it CREATIVE Poster product', 'TIM', 'Andi', '006.66', 1, 'F', '', 0),
('2019-07-25', '1927', '1927/Dinarpusta/19', ' You Can do it CREATIVE Poster product', 'TIM', 'Andi', '006.66', 1, 'F', '', 0),
('2019-07-25', '1928', '1928/Dinarpusta/19', 'Kupas Tuntas pemrograman PHP & MySQL dengan Adobe Dreamweaver CC', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1929', '1929/Dinarpusta/19', 'Kupas Tuntas pemrograman PHP & MySQL dengan Adobe Dreamweaver CC', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '193', '193/Dinarpusta/19', 'Personality plus at Work', 'Florence Littauer dan Rose Sweet', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1930', '1930/Dinarpusta/19', 'Dasar Pemprograman Python 2 Implementasi Menggunakan Java, C++, Matlab & Pascal ', 'TIM', 'Andi', '005.5', 1, 'F', '', 0),
('2019-07-25', '1931', '1931/Dinarpusta/19', 'Dasar Pemprograman Python 2 Implementasi Menggunakan Java, C++, Matlab & Pascal ', 'TIM', 'Andi', '005.5', 1, 'F', '', 0),
('2019-07-25', '1932', '1932/Dinarpusta/19', ' Teknik Instalasi dan Re-mastering Sistem Operasi WINDOWS', 'TIM', 'Andi', '005.43', 1, 'F', '', 0),
('2019-07-25', '1933', '1933/Dinarpusta/19', ' Teknik Instalasi dan Re-mastering Sistem Operasi WINDOWS', 'TIM', 'Andi', '005.43', 1, 'F', '', 0),
('2019-07-25', '1934', '1934/Dinarpusta/19', 'Membuat Company Profile dengan Adobe Flash CS 6', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1935', '1935/Dinarpusta/19', 'Membuat Company Profile dengan Adobe Flash CS 6', 'TIM', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1936', '1936/Dinarpusta/19', 'Serba Serbi Teknik Seleks Blending Adobe Photoshop', 'TIM', 'Andi', '005.628', 1, 'F', '', 0),
('2019-07-25', '1937', '1937/Dinarpusta/19', 'Serba Serbi Teknik Seleks Blending Adobe Photoshop', 'TIM', 'Andi', '005.628', 1, 'F', '', 0),
('2019-07-25', '1938', '1938/Dinarpusta/19', 'KERJA BARENG & BERBAGI DATA pada Microsoft Office', 'TIM', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '1939', '1939/Dinarpusta/19', 'KERJA BARENG & BERBAGI DATA pada Microsoft Office', 'TIM', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '194', '194/Dinarpusta/19', 'Psikologi, Landasan keilmuan Praktik Keperawatan Jiwa', 'I Wayan Candra', 'Andi Yogyakarta', '150', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1940', '1940/Dinarpusta/19', 'KOMPILASI PROYEK KRIPTOGRAFI dengan VISUAL BASIC. NET', 'Dr.Eng RH.Sianipar', 'Andi', '005.1', 1, 'F', '', 0),
('2019-07-25', '1941', '1941/Dinarpusta/19', 'KOMPILASI PROYEK KRIPTOGRAFI dengan VISUAL BASIC. NET', 'Dr.Eng RH.Sianipar', 'Andi', '005.1', 1, 'F', '', 0),
('2019-07-25', '1942', '1942/Dinarpusta/19', 'Crazy Corel Tutorial untuk Berbagai Versi CORELDRAW ', 'Eko Hadi Wibowo', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1943', '1943/Dinarpusta/19', 'Crazy Corel Tutorial untuk Berbagai Versi CORELDRAW ', 'Eko Hadi Wibowo', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1944', '1944/Dinarpusta/19', ' RPG M aker Developing Series : Membuat Game dengan RPG Maker VX', 'Hamsyah Musthofa', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1945', '1945/Dinarpusta/19', ' RPG M aker Developing Series : Membuat Game dengan RPG Maker VX', 'Hamsyah Musthofa', 'Andi', '006.696', 1, 'F', '', 0),
('2019-07-25', '1946', '1946/Dinarpusta/19', 'Teknik Meracik Warna Koreksi Pixel', 'FERY SULIANTA', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1947', '1947/Dinarpusta/19', 'Teknik Meracik Warna Koreksi Pixel', 'FERY SULIANTA', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1948', '1948/Dinarpusta/19', 'Kreasi Animasi Menngunkan Adobe After Effects', 'Atep M', 'Andi', '006.6', 1, 'F', '', 0),
('2019-07-25', '1949', '1949/Dinarpusta/19', 'Kreasi Animasi Menngunkan Adobe After Effects', 'Atep M', 'Andi', '006.6', 1, 'F', '', 0),
('2019-07-25', '195', '195/Dinarpusta/19', 'Psikologi, Landasan keilmuan Praktik Keperawatan Jiwa', 'I Wayan Candra', 'Andi Yogyakarta', '150', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1950', '1950/Dinarpusta/19', 'Smart Trik Jquery without Plugin', 'Rohy', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1951', '1951/Dinarpusta/19', 'Smart Trik Jquery without Plugin', 'Rohy', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1952', '1952/Dinarpusta/19', 'Kreasi Company Profile Interaktif dengan Flash Action 3.0', 'Herman Thuan', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1953', '1953/Dinarpusta/19', 'Kreasi Company Profile Interaktif dengan Flash Action 3.0', 'Herman Thuan', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1954', '1954/Dinarpusta/19', 'Desain Undangan dengan CorelDraw X7', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1955', '1955/Dinarpusta/19', 'Desain Undangan dengan CorelDraw X7', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1956', '1956/Dinarpusta/19', 'Tip dan Trik Berkreasi dengan CorelDRAW X7', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1957', '1957/Dinarpusta/19', 'Tip dan Trik Berkreasi dengan CorelDRAW X7', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1958', '1958/Dinarpusta/19', '100 Tip & Trik Microsoft Word 2013', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1959', '1959/Dinarpusta/19', '100 Tip & Trik Microsoft Word 2013', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '196', '196/Dinarpusta/19', 'Aplikasi Komunikasi Terapeutik Nursing & Health', 'Abdul Muhits', 'Andi Yogyakarta', '610.73', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1960', '1960/Dinarpusta/19', 'CorelDRAW X7 New Fitur dan New Tutorial ', 'Andri Setyawan', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1961', '1961/Dinarpusta/19', 'CorelDRAW X7 New Fitur dan New Tutorial ', 'Andri Setyawan', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1962', '1962/Dinarpusta/19', 'Cepat & Mudah Belajar sendiri Microsoft Access 2013', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1963', '1963/Dinarpusta/19', 'Cepat & Mudah Belajar sendiri Microsoft Access 2014', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1964', '1964/Dinarpusta/19', 'Pemrograman Aplikasi Android dengan SENCHA TOUCH', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1965', '1965/Dinarpusta/19', 'Pemrograman Aplikasi Android dengan SENCHA TOUCH', 'TIM', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1966', '1966/Dinarpusta/19', 'Top Tips & Trik Microsoft Office untuk Bisnis & Perkantoran', 'TIM', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '1967', '1967/Dinarpusta/19', 'Top Tips & Trik Microsoft Office untuk Bisnis & Perkantoran', 'TIM', 'Andi', '005', 1, 'F', '', 0),
('2019-07-25', '1968', '1968/Dinarpusta/19', 'Webmaster Series : Menguasai CSS', 'TIM', 'Andi', '004.678', 1, 'F', '', 0),
('2019-07-25', '1969', '1969/Dinarpusta/19', 'Webmaster Series : Menguasai CSS', 'TIM', 'Andi', '004.678', 1, 'F', '', 0),
('2019-07-25', '197', '197/Dinarpusta/19', 'Aplikasi Komunikasi Terapeutik Nursing & Health', 'Abdul Muhits', 'Andi Yogyakarta', '610.73', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1970', '1970/Dinarpusta/19', 'Ragam Model Penelitian & Pengolahannya SPSS', 'TIM', 'Andi', '005.11', 1, 'F', '', 0),
('2019-07-25', '1971', '1971/Dinarpusta/19', 'Ragam Model Penelitian & Pengolahannya SPSS', 'TIM', 'Andi', '005.11', 1, 'F', '', 0),
('2019-07-25', '1972', '1972/Dinarpusta/19', '100 Kasus Pemrograman Visual C# ', 'Dr.Eng RH.Sianipar', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1973', '1973/Dinarpusta/19', '101 Kasus Pemrograman Visual C# ', 'Dr.Eng RH.Sianipar', 'Andi', '005.268', 1, 'F', '', 0),
('2019-07-25', '1974', '1974/Dinarpusta/19', 'Mudah Menggunakan Internet untuk Pemula', 'TIM', 'Andi', '005.43', 1, 'F', '', 0),
('2019-07-25', '1975', '1975/Dinarpusta/19', 'Mudah Menggunakan Internet untuk Pemula', 'TIM', 'Andi', '005.43', 1, 'F', '', 0),
('2019-07-25', '1976', '1976/Dinarpusta/19', '155 Tips & Trik Populer Microsoft Word 2010-2013-2016', 'TIM', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '1977', '1977/Dinarpusta/19', '155 Tips & Trik Populer Microsoft Word 2010-2013-2016', 'TIM', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '1978', '1978/Dinarpusta/19', 'Statistik Penelitian Bisnis & Pariwisata', 'Dr.I Gusti Bagus Rai Utama, S.E.,M.MA.,M.A.', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '1979', '1979/Dinarpusta/19', 'Statistik Penelitian Bisnis & Pariwisata', 'Dr.I Gusti Bagus Rai Utama, S.E.,M.MA.,M.A.', 'Andi', '004', 1, 'F', '', 0),
('2019-07-25', '198', '198/Dinarpusta/19', 'Dream and destiny', 'Benny Pattinasarany', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1980', '1980/Dinarpusta/19', 'Cepat & Mudah Belajar Sendiri Microsoft Excel 2013', 'TIM', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1981', '1981/Dinarpusta/19', 'Cepat & Mudah Belajar Sendiri Microsoft Excel 2014', 'TIM', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1982', '1982/Dinarpusta/19', 'From Zero to Advance Macro Excel 2013', 'TIM', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1983', '1983/Dinarpusta/19', 'From Zero to Advance Macro Excel 2013', 'TIM', 'Andi', '004.21', 1, 'F', '', 0),
('2019-07-25', '1984', '1984/Dinarpusta/19', 'Microsoft Access 2016 untuk Pemula', 'TIM', 'Andi', '004.3', 1, 'F', '', 0),
('2019-07-25', '1985', '1985/Dinarpusta/19', 'Microsoft Access 2016 untuk Pemula', 'TIM', 'Andi', '004.3', 1, 'F', '', 0),
('2019-07-25', '1986', '1986/Dinarpusta/19', 'Kupas Tuntas MAIL MERGE MS. WORD untuk Administrasi Perkantoran Menggunakan da MS-Access', 'TIM', 'Andi', '004.695', 1, 'F', '', 0),
('2019-07-25', '1987', '1987/Dinarpusta/19', 'Kupas Tuntas MAIL MERGE MS. WORD untuk Administrasi Perkantoran Menggunakan da MS-Access', 'TIM', 'Andi', '004.695', 1, 'F', '', 0),
('2019-07-25', '1988', '1988/Dinarpusta/19', ' INTERNET-TCP/IP: KONSEP & IMPLEMENTASI', 'Onno W. Purbo', 'Andi', '006.754', 1, 'F', '', 0),
('2019-07-25', '1989', '1989/Dinarpusta/19', ' INTERNET-TCP/IP: KONSEP & IMPLEMENTASI', 'Onno W. Purbo', 'Andi', '006.755', 1, 'F', '', 0),
('2019-07-25', '199', '199/Dinarpusta/19', 'Dream and destiny', 'Benny Pattinasarany', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '1990', '1990/Dinarpusta/19', 'Pemrograman VISUAL BASIC NET untuk Pemula', 'RH.Sianipar', 'Andi', '005.5', 1, 'F', '', 0),
('2019-07-25', '1991', '1991/Dinarpusta/19', 'Pemrograman VISUAL BASIC NET untuk Pemula', 'RH.Sianipar', 'Andi', '005.5', 1, 'F', '', 0),
('2019-07-25', '1992', '1992/Dinarpusta/19', '3 IN 1 FISIKA MEKANIKA', 'Samekto Budi Pramono', 'Andi', '005.265', 1, 'F', '', 0),
('2019-07-25', '1993', '1993/Dinarpusta/19', '3 IN 1 FISIKA MEKANIKA', 'Samekto Budi Pramono', 'Andi', '005.265', 1, 'F', '', 0),
('2022-09-28', '1994', '1994/Dinarpusta/22', 'Start to Up', 'Fitri Kinasih', 'PT Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '1995', '1995/Dinarpusta/22', 'Start to Up', 'Fitri Kinasih', 'PT Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '1996', '1996/Dinarpusta/22', 'Strategi Merancang Sistem Informasi Masa Kini ARSITEKTUR', 'Feri Sulianta ', 'PT Elex Media Komputindo', '005.36', 1, 'F', '', 0),
('2022-09-28', '1997', '1997/Dinarpusta/22', 'Strategi Merancang Sistem Informasi Masa Kini ARSITEKTUR', 'Feri Sulianta ', 'PT Elex Media Komputindo', '005.36', 1, 'F', '', 0),
('2022-09-28', '1998', '1998/Dinarpusta/22', 'Strategi Merancang Sistem Informasi Masa Kini ARSITEKTUR', 'Feri Sulianta ', 'PT Elex Media Komputindo', '005.36', 1, 'F', '', 0),
('2022-09-28', '1999', '1999/Dinarpusta/22', '10 Rahasia Kuno untuk Meraih Kesuksesan,kekayaan,dan kebahagiaan', 'SUHARDI', 'PT Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2019-07-25', '200', '200/Dinarpusta/19', '#Fight#pray #Hope, #Garis harapan untuk anak penderita kanker', 'Kennedy jennifer Dhillon', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2022-09-28', '2000', '2000/Dinarpusta/22', '11 Rahasia Kuno untuk Meraih Kesuksesan,kekayaan,dan kebahagiaan', 'SUHARDI', 'PT Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '2001', '2001/Dinarpusta/22', '12 Rahasia Kuno untuk Meraih Kesuksesan,kekayaan,dan kebahagiaan', 'SUHARDI', 'PT Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '2002', '2002/Dinarpusta/22', 'Snack Antilapar ALA DEBM Diet enak,bahagia, menyenangkan', 'Robert Hendrik Liembono', 'PT Gramedia Pustaka Utama', '641.3', 1, 'F', '', 0),
('2022-09-28', '2003', '2003/Dinarpusta/22', 'Snack Antilapar ALA DEBM Diet enak,bahagia, menyenangkan', 'Robert Hendrik Liembono', 'PT Gramedia Pustaka Utama', '641.3', 1, 'F', '', 0),
('2022-09-28', '2004', '2004/Dinarpusta/22', 'Snack Antilapar ALA DEBM Diet enak,bahagia, menyenangkan', 'Robert Hendrik Liembono', 'PT Gramedia Pustaka Utama', '641.3', 1, 'F', '', 0),
('2022-09-28', '2005', '2005/Dinarpusta/22', 'Snack Antilapar ALA DEBM Diet enak,bahagia, menyenangkan', 'Robert Hendrik Liembono', 'PT Gramedia Pustaka Utama', '641.3', 1, 'F', '', 0),
('2022-09-28', '2006', '2006/Dinarpusta/22', 'Manajemen Risiko,Krisis, & Bencana Untuk Industri Pariwisata yang Berkelanjutan', 'Dr.Drs. Soeseno Bong, M.M.', 'PT Gramedia Pustaka Utama', '658.405', 1, 'F', '', 0),
('2022-09-28', '2007', '2007/Dinarpusta/22', 'Manajemen Risiko,Krisis, & Bencana Untuk Industri Pariwisata yang Berkelanjutan', 'Dr.Drs. Soeseno Bong, M.M.', 'PT Gramedia Pustaka Utama', '658.405', 1, 'F', '', 0),
('2022-09-28', '2008', '2008/Dinarpusta/22', 'Manajemen Risiko,Krisis, & Bencana Untuk Industri Pariwisata yang Berkelanjutan', 'Dr.Drs. Soeseno Bong, M.M.', 'PT Gramedia Pustaka Utama', '658.405', 1, 'F', '', 0),
('2022-09-28', '2009', '2009/Dinarpusta/22', 'Manajemen Risiko,Krisis, & Bencana Untuk Industri Pariwisata yang Berkelanjutan', 'Dr.Drs. Soeseno Bong, M.M.', 'PT Gramedia Pustaka Utama', '658.405', 1, 'F', '', 0),
('2019-07-25', '201', '201/Dinarpusta/19', '#Fight#pray #Hope, #Garis harapan untuk anak penderita kanker', 'Kennedy jennifer Dhillon', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2022-09-28', '2010', '2010/Dinarpusta/22', 'Manajemen Risiko,Krisis, & Bencana Untuk Industri Pariwisata yang Berkelanjutan', 'Dr.Drs. Soeseno Bong, M.M.', 'PT Gramedia Pustaka Utama', '658.405', 1, 'F', '', 0),
('2022-09-28', '2011', '2011/Dinarpusta/22', 'Manajemen Risiko,Krisis, & Bencana Untuk Industri Pariwisata yang Berkelanjutan', 'Dr.Drs. Soeseno Bong, M.M.', 'PT Gramedia Pustaka Utama', '658.405', 1, 'F', '', 0),
('2022-09-28', '2012', '2012/Dinarpusta/22', 'New Business Model For Hotel Industry WINNING COMPETITION', 'Chris Skinner', 'PT. Elex Media Komputindo', '401.9', 1, 'F', '', 0),
('2022-09-28', '2013', '2013/Dinarpusta/22', 'MANUSIA DIGITAL', 'Chris Skinner', 'PT. Elex Media Komputindo', '401.9', 1, 'F', '', 0),
('2022-09-28', '2014', '2014/Dinarpusta/22', 'MANUSIA DIGITAL', 'Chris Skinner', 'PT. Elex Media Komputindo', '401.9', 1, 'F', '', 0),
('2022-09-28', '2015', '2015/Dinarpusta/22', 'Membangun Keluarga Bahagia dengan Iman,Cinta, & Wacana', 'Bambang Yodoyono', 'PT. Elex Media Komputindo', '2x4.3', 1, 'F', '', 0),
('2022-09-28', '2016', '2016/Dinarpusta/22', 'Out Of the Maze', 'Spencer Johnson, M.D', 'PT. Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '2017', '2017/Dinarpusta/22', 'Out Of the Maze', 'Spencer Johnson, M.D', 'PT. Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '2018', '2018/Dinarpusta/22', 'Business Model Navigator ', 'Oliver Gassmann', 'PT. Elex Media Komputindo', '650.1', 1, 'F', '', 0),
('2022-09-28', '2019', '2019/Dinarpusta/22', 'Business Model Navigator ', 'Oliver Gassmann', 'PT. Elex Media Komputindo', '650.1', 1, 'F', '', 0),
('2019-07-25', '202', '202/Dinarpusta/19', 'Banyak Jalan Menuju Hawaii', 'I Gusti Gede Astawa', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2022-09-28', '2020', '2020/Dinarpusta/22', '9 Bulan dibuat penuh cina dibuat penuh harap Mewnjalani Kehamilan & Persalinan yang Sehat', 'dr.Irfan Rahmatullah, Sp.OG', 'PT. Gramedia Pustaka Utama', '612.6', 1, 'F', '', 0),
('2022-09-28', '2021', '2021/Dinarpusta/22', 'Builiding the Internet of Things', 'Maciej Krans', 'PT. Elex Media Komputindo', '004.678', 1, 'F', '', 0),
('2022-09-28', '2022', '2022/Dinarpusta/22', 'Life Will Never be The Same', 'Davit Setiawan', 'PT. Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '2023', '2023/Dinarpusta/22', 'Kitab Suci Kuliah', 'Andhika Putra Sudarman', 'PT. Elex Media Komputindo', '155.25', 1, 'F', '', 0),
('2022-09-28', '2024', '2024/Dinarpusta/22', 'Gereja di Atas Batu Karang', 'Tino Ulahayanan,MSC ', 'PT. Gramedia Pustaka Utama', '922', 1, 'F', '', 0),
('2022-09-28', '2025', '2025/Dinarpusta/22', 'Flesh Out', 'Bellazmr', 'PT. Gramedia Widiasarana', '813', 1, 'F', '', 0),
('2022-09-28', '2026', '2026/Dinarpusta/22', 'Seni Negosiasi China : MEMPERDAYA SANG NAGA', 'LEONIE McKEON', 'PT.Elex Media Komputindo', '650.1', 1, 'F', '', 0),
('2022-09-28', '2027', '2027/Dinarpusta/22', 'Seni Negosiasi China : MEMPERDAYA SANG NAGA', 'LEONIE McKEON', 'PT.Elex Media Komputindo', '650.1', 1, 'F', '', 0),
('2022-09-28', '2028', '2028/Dinarpusta/22', 'Seni Negosiasi China : MEMPERDAYA SANG NAGA', 'LEONIE McKEON', 'PT.Elex Media Komputindo', '650.1', 1, 'F', '', 0);
INSERT INTO `buku` (`tanggal_terima`, `id_buku`, `no_induk`, `judul_buku`, `pengarang`, `penerbit`, `no_kelas`, `eksamplar`, `jenis`, `keterangan`, `harga`) VALUES
('2022-09-28', '2029', '2029/Dinarpusta/22', 'The Little Book of Skin Care', 'Charlotte Cho', 'PT.Elex Media Komputindo', '646.72', 1, 'F', '', 0),
('2019-07-25', '203', '203/Dinarpusta/19', 'Banyak Jalan Menuju Hawaii', 'I Gusti Gede Astawa', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2022-09-28', '2030', '2030/Dinarpusta/22', 'The Little Book of Skin Care', 'Charlotte Cho', 'PT.Elex Media Komputindo', '646.72', 1, 'F', '', 0),
('2022-09-28', '2031', '2031/Dinarpusta/22', 'Pergulatan Demokrasi Liberal 1950-1959', 'Seno Joko Suyono', 'Kepustakaan Populer Gramedia', '320.51', 1, 'F', '', 0),
('2022-09-28', '2032', '2032/Dinarpusta/22', 'Pergulatan Demokrasi Liberal 1950-1959', 'Seno Joko Suyono', 'Kepustakaan Populer Gramedia', '320.51', 1, 'F', '', 0),
('2022-09-28', '2033', '2033/Dinarpusta/22', '30 Pola Sulam Pita', 'Yana Izzuddin', 'PT.Gramedia Pustaka Utama', '745.5', 1, 'F', '', 0),
('2022-09-28', '2034', '2034/Dinarpusta/22', '30 Pola Sulam Pita', 'Yana Izzuddin', 'PT.Gramedia Pustaka Utama', '745.5', 1, 'F', '', 0),
('2022-09-28', '2035', '2035/Dinarpusta/22', '30 Pola Sulam Pita', 'Yana Izzuddin', 'PT.Gramedia Pustaka Utama', '745.5', 1, 'F', '', 0),
('2022-09-28', '2036', '2036/Dinarpusta/22', '30 Pola Sulam Pita', 'Yana Izzuddin', 'PT.Gramedia Pustaka Utama', '745.5', 1, 'F', '', 0),
('2022-09-28', '2037', '2037/Dinarpusta/22', '30 Pola Sulam Pita', 'Yana Izzuddin', 'PT.Gramedia Pustaka Utama', '745.5', 1, 'F', '', 0),
('2022-09-28', '2038', '2038/Dinarpusta/22', '30 Pola Sulam Pita', 'Yana Izzuddin', 'PT.Gramedia Pustaka Utama', '745.5', 1, 'F', '', 0),
('2022-09-28', '2039', '2039/Dinarpusta/22', '30 Pola Sulam Pita', 'Yana Izzuddin', 'PT.Gramedia Pustaka Utama', '745.5', 1, 'F', '', 0),
('2019-07-25', '204', '204/Dinarpusta/19', 'Fun & Easy Trick Psiko-math', 'Anis Faozi', 'Andi Yogyakarta', '153.93', 1, 'F', 'APBD 2019', 0),
('2022-09-28', '2040', '2040/Dinarpusta/22', 'Analisis Kinerja Manajemen', 'Hery, S.E., M.Si., CRP., RSA.', 'PT.Grasindo', '657.3', 1, 'F', '', 0),
('2022-09-28', '2041', '2041/Dinarpusta/22', 'Analisis Kinerja Manajemen', 'Hery, S.E., M.Si., CRP., RSA.', 'PT.Grasindo', '657.3', 1, 'F', '', 0),
('2022-09-28', '2042', '2042/Dinarpusta/22', 'The calling', 'Agung Setiyo Wibowo', 'PT.Elex Media Komputindo', '243', 1, 'F', '', 0),
('2022-09-28', '2043', '2043/Dinarpusta/22', 'The calling', 'Agung Setiyo Wibowo', 'PT.Elex Media Komputindo', '243', 1, 'F', '', 0),
('2022-09-28', '2044', '2044/Dinarpusta/22', 'The calling', 'Agung Setiyo Wibowo', 'PT.Elex Media Komputindo', '243', 1, 'F', '', 0),
('2022-09-28', '2045', '2045/Dinarpusta/22', 'Semua Bisa Menjadi Programer RUBY BASIC', 'Ir.Yunair Supardi', 'PT.Elex Media Komputindo', '005.10', 1, 'F', '', 0),
('2022-09-28', '2046', '2046/Dinarpusta/22', 'Semua Bisa Menjadi Programer RUBY BASIC', 'Ir.Yunair Supardi', 'PT.Elex Media Komputindo', '005.10', 1, 'F', '', 0),
('2022-09-28', '2047', '2047/Dinarpusta/22', 'Semua Bisa Menjadi Programer RUBY BASIC', 'Ir.Yunair Supardi', 'PT.Elex Media Komputindo', '005.10', 1, 'F', '', 0),
('2022-09-28', '2048', '2048/Dinarpusta/22', 'Semua Bisa Menjadi Programer RUBY BASIC', 'Ir.Yunair Supardi', 'PT.Elex Media Komputindo', '005.10', 1, 'F', '', 0),
('2022-09-28', '2049', '2049/Dinarpusta/22', 'Kitab YOUTUBER', 'Jubilee Enterprise', 'PT.Elex Media Komputindo', '006.754', 1, 'F', '', 0),
('2019-07-25', '205', '205/Dinarpusta/19', 'Fun & Easy Trick Psiko-math', 'Anis Faozi', 'Andi Yogyakarta', '153.93', 1, 'F', 'APBD 2019', 0),
('2022-09-28', '2050', '2050/Dinarpusta/22', 'Kitab YOUTUBER', 'Jubilee Enterprise', 'PT.Elex Media Komputindo', '006.754', 1, 'F', '', 0),
('2022-09-28', '2051', '2051/Dinarpusta/22', 'Kitab YOUTUBER', 'Jubilee Enterprise', 'PT.Elex Media Komputindo', '006.754', 1, 'F', '', 0),
('2022-09-28', '2052', '2052/Dinarpusta/22', 'Belajar Pemrograman dengan Visual Studio', 'Jubilee Enterprise', 'PT.Elex Media Komputindo', '005.262', 1, 'F', '', 0),
('2022-09-28', '2053', '2053/Dinarpusta/22', 'Belajar Pemrograman dengan Visual Studio', 'Jubilee Enterprise', 'PT.Elex Media Komputindo', '005.262', 1, 'F', '', 0),
('2022-09-28', '2054', '2054/Dinarpusta/22', 'Belajar Pemrograman dengan Visual Studio', 'Jubilee Enterprise', 'PT.Elex Media Komputindo', '005.262', 1, 'F', '', 0),
('2022-09-28', '2055', '2055/Dinarpusta/22', 'Istri Teroris, Korban yang Terlupakan', 'Leebarty Taskarina', 'PT.Elex Media Komputindo', '363.3', 1, 'F', '', 0),
('2022-09-28', '2056', '2056/Dinarpusta/22', 'Istri Teroris, Korban yang Terlupakan', 'Leebarty Taskarina', 'PT.Elex Media Komputindo', '363.3', 1, 'F', '', 0),
('2022-09-28', '2057', '2057/Dinarpusta/22', 'Istri Teroris, Korban yang Terlupakan', 'Leebarty Taskarina', 'PT.Elex Media Komputindo', '363.3', 1, 'F', '', 0),
('2022-09-28', '2058', '2058/Dinarpusta/22', 'Istri Teroris, Korban yang Terlupakan', 'Leebarty Taskarina', 'PT.Elex Media Komputindo', '363.3', 1, 'F', '', 0),
('2022-09-28', '2059', '2059/Dinarpusta/22', 'Istri Teroris, Korban yang Terlupakan', 'Leebarty Taskarina', 'PT.Elex Media Komputindo', '363.3', 1, 'F', '', 0),
('2019-07-25', '206', '206/Dinarpusta/19', 'Phobia? No Way!!', 'Suhendri Cahya Purnama', 'Andi Yogyakarta', '152.4', 1, 'F', 'APBD 2019', 0),
('2022-09-28', '2060', '2060/Dinarpusta/22', 'New Business Model For Hotel Industry WINNING COMPETITION', 'Dicky Sumarsono', 'PT.Grsmedia Pustaka Utama', '647.94', 1, 'F', '', 0),
('2022-09-28', '2061', '2061/Dinarpusta/22', 'New Business Model For Hotel Industry WINNING COMPETITION', 'Dicky Sumarsono', 'PT.Grsmedia Pustaka Utama', '647.94', 1, 'F', '', 0),
('2022-09-28', '2062', '2062/Dinarpusta/22', '101 Tip dan Trik Adobe Photoshop ', 'Jubilee Enterprise', 'PT.Elex Media Komputindo', '006.66', 1, 'F', '', 0),
('2022-09-28', '2063', '2063/Dinarpusta/22', 'Pemprograman Aplikasi Android dengan Android studio, Photoshop, dan Audition', 'Herlinah,S.Kom,M.Si.', 'PT.Elex Media Komputindo', '006.66', 1, 'F', '', 0),
('2019-07-25', '2064', '2064/Dinarpusta/19', 'Inspirasi kebayah Muslimah untuk remaja', 'Eri Rohayati', 'Andi', '646.3', 1, 'F', 'BANTUAN PERPUSNAS 2018', 51300),
('2019-07-25', '207', '207/Dinarpusta/19', 'Phobia? No Way!!', 'Suhendri Cahya Purnama', 'Andi Yogyakarta', '152.4', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '208', '208/Dinarpusta/19', 'Limit Beyond Limit at ion', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '209', '209/Dinarpusta/19', 'Limit Beyond Limit at ion', 'Kennedy Jennifer Dhillon', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '210', '210/Dinarpusta/19', '101 Great Tips For a Salesperson', 'Ari Kurnia', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '211', '211/Dinarpusta/19', '101 Great Tips For a Salesperson', 'Ari Kurnia', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '212', '212/Dinarpusta/19', 'Psikkologi Suatu pengantar', 'Drs. M. Dimyanti Mahmud', 'Andi Yogyakarta', '150.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '213', '213/Dinarpusta/19', 'Psikkologi Suatu pengantar', 'Drs. M. Dimyanti Mahmud', 'Andi Yogyakarta', '150.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '214', '214/Dinarpusta/19', 'Public Relations', 'Dr. Syarifuddin S. Gassing, BE., M. Si', 'Andi Yogyakarta', '150.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '215', '215/Dinarpusta/19', 'Public Relations', 'Dr. Syarifuddin S. Gassing, BE., M. Si', 'Andi Yogyakarta', '150.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '216', '216/Dinarpusta/19', 'Inspiring Stories, 150 kisah untuk menguatkan hidup anda', 'Imelda Saputra', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '217', '217/Dinarpusta/19', 'Inspiring Stories, 150 kisah untuk menguatkan hidup anda', 'Imelda Saputra', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '218', '218/Dinarpusta/19', 'I\'m A Coach, strategi mengembangkan potensi diri dengan cocoaching', 'Pramudianto', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '219', '219/Dinarpusta/19', 'I\'m A Coach, strategi mengembangkan potensi diri dengan cocoaching', 'Pramudianto', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '220', '220/Dinarpusta/19', 'Pasti Lolos TKPA ( Tes kemampuan dan Potensi Akademis)', 'Muhamad Akrom., M. Si', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '221', '221/Dinarpusta/19', 'Pasti Lolos TKPA ( Tes kemampuan dan Potensi Akademis)', 'Muhamad Akrom., M. Si', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '222', '222/Dinarpusta/19', 'Psikologi Kesehatan Mental: awas kesurupan', 'Siswanto, S. Psi.,M. Si', 'Andi Yogyakarta', '005.7', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '223', '223/Dinarpusta/19', 'Psikologi Kesehatan Mental: awas kesurupan', 'Siswanto, S. Psi.,M. Si', 'Andi Yogyakarta', '005.7', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '224', '224/Dinarpusta/19', 'Kamus Psikologi super lengkap', 'husamah, S. Pd', 'Andi Yogyakarta', '150.3', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '225', '225/Dinarpusta/19', 'Kamus Psikologi super lengkap', 'husamah, S. Pd', 'Andi Yogyakarta', '150.3', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '226', '226/Dinarpusta/19', 'Profesional Waiter, Pramusaji Ahli', 'H. Marsum Widjojo Atmodjo, S.E', 'Andi Yogyakarta', '647.94', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '227', '227/Dinarpusta/19', 'Profesional Waiter, Pramusaji Ahli', 'H. Marsum Widjojo Atmodjo, S.E', 'Andi Yogyakarta', '647.94', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '228', '228/Dinarpusta/19', 'cara cerdas ++, menembus ujian psikotest & tes Akadepik Calon Polisi', 'Ismail', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '229', '229/Dinarpusta/19', 'cara cerdas ++, menembus ujian psikotest & tes Akadepik Calon Polisi', 'Ismail', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '230', '230/Dinarpusta/19', 'Cara cerdas ++,Lolos Ujian  CPNS', 'Ismail', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '231', '231/Dinarpusta/19', 'Cara cerdas ++,Lolos Ujian  CPNS', 'Ismail', 'Andi Yogyakarta', '155.25', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '232', '232/Dinarpusta/19', 'Mudah Menguasai SPBS', 'Giovany', 'Andi Yogyakarta', '006', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '233', '233/Dinarpusta/19', 'Mudah Menguasai SPBS', 'Giovany', 'Andi Yogyakarta', '006', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '234', '234/Dinarpusta/19', 'WiFi, membangun warnet sendiri berbasis wifi', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '235', '235/Dinarpusta/19', 'WiFi, membangun warnet sendiri berbasis wifi', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '236', '236/Dinarpusta/19', 'Cepat dan mudah membuat animasi kartun dengan flash', 'Madcoms', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '237', '237/Dinarpusta/19', 'Cepat dan mudah membuat animasi kartun dengan flash', 'Madcoms', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '238', '238/Dinarpusta/19', 'Mahir Komputerisasi Akuntansi dengan MYOB Accounting V.23', 'Arvian Triantoro', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '239', '239/Dinarpusta/19', 'Mahir Komputerisasi Akuntansi dengan MYOB Accounting V.23', 'Arvian Triantoro', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '240', '240/Dinarpusta/19', 'Presentasi Multimedia lebih Dahsyat dengan Microsoft Powerpoint', 'Madcoms', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '241', '241/Dinarpusta/19', 'Presentasi Multimedia lebih Dahsyat dengan Microsoft Powerpoint', 'Madcoms', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '242', '242/Dinarpusta/19', 'Statistika Inferensial', 'Dr. Eng. Yeri Sutopo, M. Pd., M. T', 'Andi Yogyakarta', '006.6', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '243', '243/Dinarpusta/19', 'Statistika Inferensial', 'Dr. Eng. Yeri Sutopo, M. Pd., M. T', 'Andi Yogyakarta', '006.6', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '244', '244/Dinarpusta/19', 'Kumpulan Top Minigame', 'P. Seno Wibowo', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '245', '245/Dinarpusta/19', 'Kumpulan Top Minigame', 'P. Seno Wibowo', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '246', '246/Dinarpusta/19', 'Kreasi digital dengan Photoshop untuk pemula', 'Madcoms', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '247', '247/Dinarpusta/19', 'Belajar sendiri pasti bisa pemrograman', 'Abdul Kadir', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '248', '248/Dinarpusta/19', '500 trik dan tips Excel', 'Musliadi KH', 'Andi Yogyakarta', '005.265', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '249', '249/Dinarpusta/19', '500 trik dan tips Excel', 'Musliadi KH', 'Andi Yogyakarta', '005.265', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '250', '250/Dinarpusta/19', 'Mengolah Database dengan Microsoft Excel', 'Madcoms', 'Andi Yogyakarta', '005.11', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '251', '251/Dinarpusta/19', 'Mengolah Database dengan Microsoft Excel', 'Madcoms', 'Andi Yogyakarta', '005.11', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '252', '252/Dinarpusta/19', 'Artificial Intelligence Konsep dan penerapannya', 'Widodo Budiharto', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '253', '253/Dinarpusta/19', 'Artificial Intelligence Konsep dan penerapannya', 'Widodo Budiharto', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '254', '254/Dinarpusta/19', 'Microsoft Excel untuk Administrasi Perkantoran Modern MS Office 2019', 'Madcoms', 'Andi Yogyakarta', '004.3', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '255', '255/Dinarpusta/19', 'Microsoft Excel untuk Administrasi Perkantoran Modern MS Office 2019', 'Madcoms', 'Andi Yogyakarta', '004.3', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '256', '256/Dinarpusta/19', 'Panduan mudah Pengembangan Google map Android', 'Yusuf Mufti', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '257', '257/Dinarpusta/19', 'Panduan mudah Pengembangan Google map Android', 'Yusuf Mufti', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '258', '258/Dinarpusta/19', 'Arduino & Sensor Tuntunan Praktis mempelajari penggunaan sensor untuk aneka proyek elektronika berba', 'Abdul Kadir', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '259', '259/Dinarpusta/19', 'Arduino & Sensor Tuntunan Praktis mempelajari penggunaan sensor untuk aneka proyek elektronika berba', 'Abdul Kadir', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '260', '260/Dinarpusta/19', 'Sistem Informasi Akuntansi', 'TMBooks', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '261', '261/Dinarpusta/19', 'Sistem Informasi Akuntansi', 'TMBooks', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '262', '262/Dinarpusta/19', 'Cara Mudah dan menyenangkan belajar pemrograman', 'Hindrawari Enggar', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '263', '263/Dinarpusta/19', 'Cara Mudah dan menyenangkan belajar pemrograman', 'Hindrawari Enggar', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '264', '264/Dinarpusta/19', 'Tutorial Lengkap menguasai ArcGls 10', 'Giovany', 'Andi Yogyakarta', '004.05', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '265', '265/Dinarpusta/19', 'Tutorial Lengkap menguasai ArcGls 10', 'Giovany', 'Andi Yogyakarta', '004.05', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '266', '266/Dinarpusta/19', 'Microsoft office word, Excel, powerpoint  untuk administrasi perkantoran', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '267', '267/Dinarpusta/19', 'Microsoft office word, Excel, powerpoint  untuk administrasi perkantoran', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '268', '268/Dinarpusta/19', 'Aplikasi Akuntansi dengan microsoft excel VBA (macro)', 'M. Leo Agung', 'Andi Yogyakarta', '005.3 ', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '269', '269/Dinarpusta/19', 'Pemrograman Stored Procedure pada MySQL', 'Dwi Prabantini', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '270', '270/Dinarpusta/19', 'Pemrograman Stored Procedure pada MySQL', 'Dwi Prabantini', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '271', '271/Dinarpusta/19', 'Pengindraan jauh Metode Analisis & Interpretasi Citra Satelit', 'Indarto', 'Andi Yogyakarta', '007', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '272', '272/Dinarpusta/19', 'Pengindraan jauh Metode Analisis & Interpretasi Citra Satelit', 'Indarto', 'Andi Yogyakarta', '007', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '273', '273/Dinarpusta/19', 'Panduan Praktis pemrograman Robot Vision Menggunakan MATLAB dan IDE Arduino', 'Mada Sanjaya W. S., Ph.D', 'Andi Yogyakarta', '005.75', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '274', '274/Dinarpusta/19', 'Panduan Praktis pemrograman Robot Vision Menggunakan MATLAB dan IDE Arduino', 'Mada Sanjaya W. S., Ph.D', 'Andi Yogyakarta', '005.75', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '275', '275/Dinarpusta/19', 'Bikin web ilkan komersial berbasis wordpress', 'P. Seno Wibowo', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '276', '276/Dinarpusta/19', 'Bikin web ilkan komersial berbasis wordpress', 'P. Seno Wibowo', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '277', '277/Dinarpusta/19', 'Web Rapid Application Development with ASP. NET 4.6', 'Erick Kurniawan', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '278', '278/Dinarpusta/19', 'Web Rapid Application Development with ASP. NET 4.6', 'Erick Kurniawan', 'Andi Yogyakarta', '005.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '279', '279/Dinarpusta/19', 'Kreasi Efek Film Spektakuler dengan A dobe Preimere', 'Maya', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '280', '280/Dinarpusta/19', 'Kreasi Efek Film Spektakuler dengan A dobe Preimere', 'Maya', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '281', '281/Dinarpusta/19', 'Kreasi Populer dengan Photoshop untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '282', '282/Dinarpusta/19', 'Kreasi Populer dengan Photoshop untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '283', '283/Dinarpusta/19', 'Belajar Cepat Pemrograman Query dengan MySqL', 'R. H. Sianipar', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '284', '284/Dinarpusta/19', 'Belajar Cepat Pemrograman Query dengan MySqL', 'R. H. Sianipar', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '285', '285/Dinarpusta/19', 'Panduan Mudah membuat Augmented Reality', 'Budi Arifitama', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '286', '286/Dinarpusta/19', 'Panduan Mudah membuat Augmented Reality', 'Budi Arifitama', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '287', '287/Dinarpusta/19', 'Panduan Praktis membangun mail Server handal & Gratis hingga Online', 'Hardana, S. Kom.', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '288', '288/Dinarpusta/19', 'Panduan Praktis membangun mail Server handal & Gratis hingga Online', 'Hardana, S. Kom.', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '289', '289/Dinarpusta/19', 'Pemrograman Python untuk Ilmu Komputer dan Teknik', 'Widodo Budiharto', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '290', '290/Dinarpusta/19', 'Pemrograman Python untuk Ilmu Komputer dan Teknik', 'Widodo Budiharto', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '291', '291/Dinarpusta/19', 'Video Editing Profesional dengan Pinnacle studio 17 plus', 'Ignas', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '292', '292/Dinarpusta/19', 'Video Editing Profesional dengan Pinnacle studio 17 plus', 'Ignas', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '293', '293/Dinarpusta/19', 'Flash book: menciptakan Company Profile dengan Adobe Flash', 'Eko Hadi Wibowo', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '294', '294/Dinarpusta/19', 'Flash book: menciptakan Company Profile dengan Adobe Flash', 'Eko Hadi Wibowo', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '295', '295/Dinarpusta/19', 'Petunjuk Praktis Penelitian Teknologi Informasi', 'Andi Wahju Rahardjo Emanuel', 'Andi Yogyakarta', '008', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '296', '296/Dinarpusta/19', 'Petunjuk Praktis Penelitian Teknologi Informasi', 'Andi Wahju Rahardjo Emanuel', 'Andi Yogyakarta', '008', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '297', '297/Dinarpusta/19', 'Komputer Forensik Melacak Kejahatan Digital', 'Feri Sulianta', 'Andi Yogyakarta', '005.84,', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '298', '298/Dinarpusta/19', 'Komputer Forensik Melacak Kejahatan Digital', 'Feri Sulianta', 'Andi Yogyakarta', '005.84,', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '299', '299/Dinarpusta/19', 'Photoshop Project:Ubah fotomu dengan style vintage dan retro', 'Matius Tomy Suryadi', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '300', '300/Dinarpusta/19', 'Photoshop Project:Ubah fotomu dengan style vintage dan retro', 'Matius Tomy Suryadi', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '301', '301/Dinarpusta/19', 'Konfigurasi Routerboard Mikrotik RB-750', 'Hardana, S. Kom.', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 67600),
('2019-07-25', '302', '302/Dinarpusta/19', 'Konfigurasi Routerboard Mikrotik RB-750', 'Hardana, S. Kom.', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 67600),
('2019-07-25', '303', '303/Dinarpusta/19', 'Kungfu Hacking dengan Nmap', 'Mr. Doel', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 43200),
('2019-07-25', '304', '304/Dinarpusta/19', 'Kungfu Hacking dengan Nmap', 'Mr. Doel', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 43200),
('2019-07-25', '305', '305/Dinarpusta/19', 'Membuat Rigging Karakter dan animasidi After Effects', 'Atep M', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '306', '306/Dinarpusta/19', 'Membuat Rigging Karakter dan animasidi After Effects', 'Atep M', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '307', '307/Dinarpusta/19', 'Pemmrograman ABAP sebagai SAP ERP', 'Yayan Irianto', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 36800),
('2019-07-25', '308', '308/Dinarpusta/19', 'Pemmrograman ABAP sebagai SAP ERP', 'Yayan Irianto', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 36800),
('2019-07-25', '309', '309/Dinarpusta/19', ' Pasti bisa !! Belajar Sendiri CoreIDRAW X7', 'Leo Agung', 'Andi Yogyakarta', '006.686', 1, 'F', 'APBD 2019', 37700),
('2019-07-25', '310', '310/Dinarpusta/19', ' Pasti bisa !! Belajar Sendiri CoreIDRAW X7', 'Leo Agung', 'Andi Yogyakarta', '006.686', 1, 'F', 'APBD 2019', 37700),
('2019-07-25', '311', '311/Dinarpusta/19', 'kreatif Membuat Ragam Desain Media dengan CoreIDRAW Adobe InDesign', 'Purindraswari', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '312', '312/Dinarpusta/19', 'kreatif Membuat Ragam Desain Media dengan CoreIDRAW Adobe InDesign', 'Purindraswari', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '313', '313/Dinarpusta/19', 'CoreIDRAW X7', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 59900),
('2019-07-25', '314', '314/Dinarpusta/19', 'CoreIDRAW X7', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 59900),
('2019-07-25', '315', '315/Dinarpusta/19', '\" Tip Trik\" Mempercepat Kinerja Laptop dan PC', 'Nikodemus WK', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 89900),
('2019-07-25', '316', '316/Dinarpusta/19', '\" Tip Trik\" Mempercepat Kinerja Laptop dan PC', 'Nikodemus WK', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 89900),
('2019-07-25', '317', '317/Dinarpusta/19', '100 tip &trik  Microsoft PowerPoint 2013', 'M. Leo Agung', 'Andi Yogyakarta', '004', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '318', '318/Dinarpusta/19', '100 tip &trik  Microsoft PowerPoint 2013', 'M. Leo Agung', 'Andi Yogyakarta', '004', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '319', '319/Dinarpusta/19', 'Pemrograman Web Services dan SOA dengan NetBeans', 'Wiranto Herry Utomo', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '320', '320/Dinarpusta/19', 'Kreasi digital dengan Photoshop untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '321', '321/Dinarpusta/19', 'Kreasi digital dengan Photoshop untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '322', '322/Dinarpusta/19', 'Manipulasi Foto pribadi dengan Adobe photoshop', 'Putri Christian', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '323', '323/Dinarpusta/19', 'Manipulasi Foto pribadi dengan Adobe photoshop', 'Putri Christian', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 30700),
('2019-07-25', '324', '324/Dinarpusta/19', 'Pemrograman Web Services dan SOA dengan NetBeans', 'Wiranto Herry Utomo', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 30700),
('2019-07-25', '325', '325/Dinarpusta/19', 'kreatif membuat pesan periklanan dengan CorelDraw dan Adobe Photoshop', 'Purindraswari', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 30700),
('2019-07-25', '326', '326/Dinarpusta/19', 'kreatif membuat pesan periklanan dengan CorelDraw dan Adobe Photoshop', 'Purindraswari', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 30700),
('2019-07-25', '327', '327/Dinarpusta/19', 'Membuar  Video clip Profesional dengan Adobe Premiere', 'Elizabeth Kurnia', 'Andi Yogyakarta', '004.3', 1, 'F', 'APBD 2019', 77000),
('2019-07-25', '328', '328/Dinarpusta/19', 'Membuar  Video clip Profesional dengan Adobe Premiere', 'Elizabeth Kurnia', 'Andi Yogyakarta', '004.3', 1, 'F', 'APBD 2019', 77000),
('2019-07-25', '329', '329/Dinarpusta/19', 'Video Iklan Komersial Premiere CS6', 'P.Seno Wibowo', 'Andi Yogyakarta', '006.698', 1, 'F', 'APBD 2019', 61600),
('2019-07-25', '330', '330/Dinarpusta/19', 'Video Iklan Komersial Premiere CS6', 'P.Seno Wibowo', 'Andi Yogyakarta', '006.698', 1, 'F', 'APBD 2019', 61600),
('2019-07-25', '331', '331/Dinarpusta/19', 'Membangun Aplikasi stok Inventori dengan Ms. Access', 'M. Leo Agung', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 40200),
('2019-07-25', '332', '332/Dinarpusta/19', 'Membangun Aplikasi stok Inventori dengan Ms. Access', 'M. Leo Agung', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 40200),
('2019-07-25', '333', '333/Dinarpusta/19', 'Adobe Lightroom 5 Panduan lengkap Fotografer Profesional', 'Fl. Sigit Suryantoro', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '334', '334/Dinarpusta/19', 'Adobe Lightroom 5 Panduan lengkap Fotografer Profesional', 'Fl. Sigit Suryantoro', 'Andi Yogyakarta', '006.696', 1, 'F', 'APBD 2019', 41900),
('2019-07-25', '335', '335/Dinarpusta/19', 'Panduan Mudah belajar Arduino menggunakan simulasi Proteus', 'Muhammad Syahwil, S. T., M. T', 'Andi Yogyakarta', '005.73', 1, 'F', 'APBD 2019', 108600),
('2019-07-25', '336', '336/Dinarpusta/19', 'Panduan Mudah belajar Arduino menggunakan simulasi Proteus', 'Muhammad Syahwil, S. T., M. T', 'Andi Yogyakarta', '005.73', 1, 'F', 'APBD 2019', 108600),
('2019-07-25', '337', '337/Dinarpusta/19', 'Computer Vision & Aplikasinya menggunakan C# & EmguCV', 'Budiman Putra AR', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 39400),
('2019-07-25', '338', '338/Dinarpusta/19', 'Computer Vision & Aplikasinya menggunakan C# & EmguCV', 'Budiman Putra AR', 'Andi Yogyakarta', '005.1', 1, 'F', 'APBD 2019', 39400),
('2019-07-25', '339', '339/Dinarpusta/19', '2D CAD Drawing dengan AutoCad', 'Ignas', 'Andi Yogyakarta', '006.686', 1, 'F', 'APBD 2019', 43700),
('2019-07-25', '340', '340/Dinarpusta/19', '2D CAD Drawing dengan AutoCad', 'Ignas', 'Andi Yogyakarta', '006.686', 1, 'F', 'APBD 2019', 43700),
('2019-07-25', '341', '341/Dinarpusta/19', 'kreatif Digital dengan Photoshop untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 51300),
('2019-07-25', '342', '342/Dinarpusta/19', 'kreatif Digital dengan Photoshop untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 51300),
('2019-07-25', '343', '343/Dinarpusta/19', 'programing Wireless untuk Arduino                                          ', 'Abdul Kadir', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 59600),
('2019-07-25', '344', '344/Dinarpusta/19', 'programing Wireless untuk Arduino                                          ', 'Abdul Kadir', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 59600),
('2019-07-25', '345', '345/Dinarpusta/19', 'Auto CAD panduan Praktis Perencanaan Proyek Rumah Tinggal', 'Triono Subagio', 'Andi Yogyakarta', '006', 1, 'F', 'APBD 2019', 36800),
('2019-07-25', '346', '346/Dinarpusta/19', 'Auto CAD panduan Praktis Perencanaan Proyek Rumah Tinggal', 'Triono Subagio', 'Andi Yogyakarta', '006', 1, 'F', 'APBD 2019', 36800),
('2019-07-25', '347', '347/Dinarpusta/19', ' Belajar Sendiri pasti bisa pemrograman', 'Abdul Kadir', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 98400),
('2019-07-25', '348', '348/Dinarpusta/19', 'Desain Kartun & Karikatur dengan Adobe Illustrator', 'Putri Christian', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 98400),
('2019-07-25', '349', '349/Dinarpusta/19', 'Desain Kartun & Karikatur dengan Adobe Illustrator', 'Putri Christian', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 36800),
('2019-07-25', '350', '350/Dinarpusta/19', 'Restoring Relationship', 'Sunarto', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 36800),
('2019-07-25', '351', '351/Dinarpusta/19', 'Restoring Relationship', 'Sunarto', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '352', '352/Dinarpusta/19', 'Restoring Relationship', 'Sunarto', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '353', '353/Dinarpusta/19', 'Dari Jomblo sampe merit', 'Eva Yunita', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 45300),
('2019-07-25', '354', '354/Dinarpusta/19', 'Dari Jomblo sampe merit', 'Eva Yunita', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 45300),
('2019-07-25', '355', '355/Dinarpusta/19', 'Dari Jomblo sampe merit', 'Eva Yunita', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 59600),
('2019-07-25', '356', '356/Dinarpusta/19', 'Mengubah Impian Menjadi Kenyataan', 'Felix Wibowo', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 59600),
('2019-07-25', '357', '357/Dinarpusta/19', 'Mengubah Impian Menjadi Kenyataan', 'Felix Wibowo', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 89000),
('2019-07-25', '358', '358/Dinarpusta/19', 'Mengubah Impian Menjadi Kenyataan', 'Felix Wibowo', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 89000),
('2019-07-25', '359', '359/Dinarpusta/19', 'Generasi Anti Galau', 'Kornelius Sabat', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 84700),
('2019-07-25', '360', '360/Dinarpusta/19', 'Generasi Anti Galau', 'Kornelius Sabat', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 84700),
('2019-07-25', '361', '361/Dinarpusta/19', 'God is Greater than cancer', 'Michelle Theodora', 'Andi Yogyakarta', '231', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '362', '362/Dinarpusta/19', 'God is Greater than cancer', 'Michelle Theodora', 'Andi Yogyakarta', '231', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '363', '363/Dinarpusta/19', 'Hidup Produktif', 'Jarot Wijanarko', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 98400),
('2019-07-25', '364', '364/Dinarpusta/19', 'Hidup Produktif', 'Jarot Wijanarko', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 98400),
('2019-07-25', '365', '365/Dinarpusta/19', 'Membongkar Fakta Dunia Roh', 'Ari Suksmono', 'Andi Yogyakarta', '235', 1, 'F', 'APBD 2019', 41800),
('2019-07-25', '366', '366/Dinarpusta/19', 'Membongkar Fakta Dunia Roh', 'Ari Suksmono', 'Andi Yogyakarta', '235', 1, 'F', 'APBD 2019', 41800),
('2019-07-25', '367', '367/Dinarpusta/19', 'Menghambarkan Garam', 'Jimmy Tjandra', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 109500),
('2019-07-25', '368', '368/Dinarpusta/19', 'Menghambarkan Garam', 'Jimmy Tjandra', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 109500),
('2019-07-25', '369', '369/Dinarpusta/19', 'Ministry in the digital World', 'Bagus Prabangkara', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 99200),
('2019-07-25', '370', '370/Dinarpusta/19', 'Ministry in the digital World', 'Bagus Prabangkara', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 99200),
('2019-07-25', '371', '371/Dinarpusta/19', 'Ministry in the digital World', 'Bagus Prabangkara', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 46100),
('2019-07-25', '372', '372/Dinarpusta/19', 'Mertua, menantu, ipar', 'Jarot Wijanarko', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 46100),
('2019-07-25', '373', '373/Dinarpusta/19', 'Mertua, menantu, ipar', 'Jarot Wijanarko', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 70600),
('2019-07-25', '374', '374/Dinarpusta/19', 'Gembala yang Mengajar', 'Pdt. Dr. Doni Heryanto', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 70600),
('2019-07-25', '375', '375/Dinarpusta/19', 'Gembala yang Mengajar', 'Pdt. Dr. Doni Heryanto', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 119700),
('2019-07-25', '376', '376/Dinarpusta/19', 'Gembala yang Mengajar', 'Pdt. Dr. Doni Heryanto', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 119700),
('2019-07-25', '377', '377/Dinarpusta/19', 'Gereja yang bertumbuh & Berkembang', 'Timotius Sukarman', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '378', '378/Dinarpusta/19', 'Gereja yang bertumbuh & Berkembang', 'Timotius Sukarman', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 34200),
('2019-07-25', '379', '379/Dinarpusta/19', 'Merpati Ku idam-idamanku', 'Brigitta Grace', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '380', '380/Dinarpusta/19', 'Merpati Ku idam-idamanku', 'Brigitta Grace', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '381', '381/Dinarpusta/19', 'Conflict, Mencabut Akar & Menyelesaikan Konflik', 'Michael Lawson', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '382', '382/Dinarpusta/19', 'Membangun Keintiman dengan Bapa', 'J. H. Gondowijoyo', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '383', '383/Dinarpusta/19', 'Menyiapkan Kehidupan Pernikahan yang bahagia', 'Maya Hermanto', 'Andi Yogyakarta', '265.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '384', '384/Dinarpusta/19', 'Momen Inspirasi', 'Imanuel Kristo', 'Andi Yogyakarta', '252', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '385', '385/Dinarpusta/19', 'On Being Servant of God', 'Warren W. Wiersbe', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '386', '386/Dinarpusta/19', 'Mindset Sukses penentu Pribadi sukses', 'Drs. Soeparno Broto R., M. M., A. P. U', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '387', '387/Dinarpusta/19', 'Heaven and the Afterlife', 'James L. Garlow dan Keith Wall', 'Andi Yogyakarta', '204', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '388', '388/Dinarpusta/19', 'Doa yang ditolak Tuhan', 'Jimmy Tjandra', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '389', '389/Dinarpusta/19', 'From Mafia Boss to the Cross', 'Dr. Bruno Caporrrimo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '390', '390/Dinarpusta/19', 'In search of Blessings', 'Kathryn Kuhlman', 'Andi Yogyakarta', '231.8', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '391', '391/Dinarpusta/19', 'Miracles Still Happen', 'Tonny Effenfy', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '392', '392/Dinarpusta/19', 'Hell Empty Heaven Full', 'Reinhard Bonnke', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '393', '393/Dinarpusta/19', 'God is Greater than cancer', 'Michelle Theodora', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '394', '394/Dinarpusta/19', 'Menjawab tantangan amanat agung', 'Dean Theodora', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '395', '395/Dinarpusta/19', 'Reach to the highest', 'Felix Wibowo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '396', '396/Dinarpusta/19', 'Fly like an eagle', 'Bram Soei Ndoen', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '397', '397/Dinarpusta/19', 'Hotter than gossip', 'Danny A. Gamadhi', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '398', '398/Dinarpusta/19', 'Yesus Kristus sang penyelamat Dunia', 'Catherine Mackenzie', 'Andi Yogyakarta', '232', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '399', '399/Dinarpusta/19', 'Yesus Kristus sang penyelamat Dunia', 'Catherine Mackenzie', 'Andi Yogyakarta', '232', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '400', '400/Dinarpusta/19', 'Yesus Kristus sang penyelamat Dunia', 'Catherine Mackenzie', 'Andi Yogyakarta', '232', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '401', '401/Dinarpusta/19', 'Three Simple Rules', 'Rueben P. JOB', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '402', '402/Dinarpusta/19', 'Three Simple Rules', 'Rueben P. JOB', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '403', '403/Dinarpusta/19', 'Iman Kristen Menjawab', 'Hananto Kusumo', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '404', '404/Dinarpusta/19', 'Iman Kristen Menjawab', 'Hananto Kusumo', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '405', '405/Dinarpusta/19', 'Ilmu Berkhotbah', 'Kresbinol Labomar', 'Andi Yogyakarta', '231', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '406', '406/Dinarpusta/19', 'Ilmu Berkhotbah', 'Kresbinol Labomar', 'Andi Yogyakarta', '231', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '407', '407/Dinarpusta/19', 'Ilmu Berkhotbah', 'Kresbinol Labomar', 'Andi Yogyakarta', '231', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '408', '408/Dinarpusta/19', 'Momen Inspirasi', 'Andreas Nawawi', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '409', '409/Dinarpusta/19', 'Momen Inspirasi', 'Andreas Nawawi', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '410', '410/Dinarpusta/19', 'Ziarah hati', 'Debora Vivi', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '411', '411/Dinarpusta/19', 'Ziarah hati', 'Debora Vivi', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '412', '412/Dinarpusta/19', 'Rahasia Keberhasilan Gereja di Korea', 'Sukatmo M. Div', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '413', '413/Dinarpusta/19', 'Rahasia Keberhasilan Gereja di Korea', 'Sukatmo M. Div', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '414', '414/Dinarpusta/19', 'Hidup Normal di Dunia ynag Abnormal', 'Budi untung', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '415', '415/Dinarpusta/19', 'Dapatkah keselamatan orang percaya Hilang?', 'Jenus Junimen', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '416', '416/Dinarpusta/19', 'Dapatkah keselamatan orang percaya Hilang?', 'Jenus Junimen', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '417', '417/Dinarpusta/19', 'Dapatkah keselamatan orang percaya Hilang?', 'Jenus Junimen', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '418', '418/Dinarpusta/19', 'Masih adakah Mujizat itu?', 'Ps. Andry Christian, M. Th', 'Andi Yogyakarta', '226.7', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '419', '419/Dinarpusta/19', 'Masih adakah Mujizat itu?', 'Ps. Andry Christian, M. Th', 'Andi Yogyakarta', '226.7', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '420', '420/Dinarpusta/19', 'Masih adakah Mujizat itu?', 'Ps. Andry Christian, M. Th', 'Andi Yogyakarta', '226.7', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '421', '421/Dinarpusta/19', 'Healthy Heart, Healthy Mind, Body and soul', 'Jonathan Willy Siagian', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '422', '422/Dinarpusta/19', 'Healthy Heart, Healthy Mind, Body and soul', 'Jonathan Willy Siagian', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '423', '423/Dinarpusta/19', 'Hidup Normal di Dunia ynag Abnormal', 'Budi untung', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '424', '424/Dinarpusta/19', 'Rancangan Kekal', 'Ps. Frendy Matindas', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '425', '425/Dinarpusta/19', 'Generasi Pembaru', 'Budi Abdipatra', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '426', '426/Dinarpusta/19', 'Hancurkan Kuasa Iblis dalam diri Anda', 'Thomas J. Sappington', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '427', '427/Dinarpusta/19', 'Memenangkan Masa Depan', 'Jack W. Hayford', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '428', '428/Dinarpusta/19', 'Ilustrasi Kehidupan lewat dunia satwa', 'Elly Kurnilasari', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '429', '429/Dinarpusta/19', 'Understanding your Personal Prophecy', 'Gary Cake', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '430', '430/Dinarpusta/19', 'Iman Kerajaan', 'J. H. Gondowijoyo', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '431', '431/Dinarpusta/19', 'Menghalau Kebisingan menuai Kelegaan', 'Tony Horsfall', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '432', '432/Dinarpusta/19', 'Membedakan Ilah-ilah Zaman ini', 'Derek Tidball', 'Andi Yogyakarta', '202.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '433', '433/Dinarpusta/19', 'Healthy Heart, Healthy Mind, Body and soul', 'Jonathan Willy Siagian', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '434', '434/Dinarpusta/19', 'Menjadi Istri yang Cakap', 'Lily Christianto', 'Andi Yogyakarta', '265.5', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '435', '435/Dinarpusta/19', 'Manakah yang Alkitabiah Kepenatuaan atau kependetaan?', 'Alexander Strauch', 'Andi Yogyakarta', '253', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '436', '436/Dinarpusta/19', 'Momen Inspirasi', 'Imanuel Kristo', 'Andi Yogyakarta', '252', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '437', '437/Dinarpusta/19', ' Memetik Hikmat Menuai Berkat', 'Stefanus Purnomo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '438', '438/Dinarpusta/19', 'Words of Distinction', 'Ishak Sugianto', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '439', '439/Dinarpusta/19', 'From Ground zero to the star', 'Pdt. Utju Terahadi, M. Div.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '440', '440/Dinarpusta/19', 'Inti Pengajaran Agama Kristen', 'Pdt. Dr. Edwer Dethan, M. Div., M. Th.', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '441', '441/Dinarpusta/19', 'Unforgettable Jomblo', 'Eva Yunita', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '442', '442/Dinarpusta/19', 'Membangun Karakter Unggul', 'DR. Willy Susilo, S. Pd., M. B. A.', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '443', '443/Dinarpusta/19', 'Hati Misi', 'Bagus Surjantoro', 'Andi Yogyakarta', '266', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '444', '444/Dinarpusta/19', 'mengertikah apa yang engkau baca?', 'Ro, Woo Ho', 'Andi Yogyakarta', '225', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '445', '445/Dinarpusta/19', 'You can learn to lead', 'Stewart Dinnen', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '446', '446/Dinarpusta/19', 'Ziarah Hati', 'Debora Vivi', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '447', '447/Dinarpusta/19', 'Warisan Bapa', 'Vonny Agustina Susanta', 'Andi Yogyakarta', '0', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '448', '448/Dinarpusta/19', 'Homiletika Pengkhotbah dan khotbahnya', 'E. P. Gintings', 'Andi Yogyakarta', '251', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '449', '449/Dinarpusta/19', 'Daftar Situs kristiani Terpopuler', 'Samuel Cahyadi', 'Andi Yogyakarta', '263.042', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '450', '450/Dinarpusta/19', 'Hell Empty Heaven Full', 'Reinhard Bonnke', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '451', '451/Dinarpusta/19', 'Sejuta sehari 21 kisah bermakna dari china', 'Hendra Rey', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '452', '452/Dinarpusta/19', 'Urapan Seorang Raja', 'Iwan Setiawan Elyon', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '453', '453/Dinarpusta/19', 'Ular-ular dalam Gereja', 'David orton', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '454', '454/Dinarpusta/19', 'Hati yang Indah', 'Jarot Wijanarko', 'Andi Yogyakarta', '241.1', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '455', '455/Dinarpusta/19', 'Merpatiku idam-idamanku', 'Brigitta Grace', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '456', '456/Dinarpusta/19', 'Haruskah aku menyerah', 'Herdy N. Hutabarat', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '457', '457/Dinarpusta/19', 'Gaya hidup sang pemenang', 'Heru Tri Budi', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '458', '458/Dinarpusta/19', 'Wanita luar biasa', 'Christine Sofia Dimu Here', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '459', '459/Dinarpusta/19', 'Rhythms of Grace', 'Tony Horsfall', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '460', '460/Dinarpusta/19', 'Revolusi Penyembahan Profetik', 'Drs. Bram Soei Ndoen, M. A.', 'Andi Yogyakarta', '242', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '461', '461/Dinarpusta/19', 'Yesus yang tak kau kenal', 'Dr. Sunday Adelaja', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '462', '462/Dinarpusta/19', 'Menari di atas Air', 'Daniel Agus Setianto', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '463', '463/Dinarpusta/19', 'Unpredictable Ending 3: Destiny', 'Prita Laura', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '464', '464/Dinarpusta/19', 'Warriors of Life', 'Yotam Sugihyono', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '465', '465/Dinarpusta/19', 'Rahasia Sukses menjadi Worship Leader, singer dan Pemusik', 'Ronee Paul', 'Andi Yogyakarta', '246', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '466', '466/Dinarpusta/19', 'Daily Motivation small tough, big impact', 'Adi Soenarno', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '467', '467/Dinarpusta/19', 'menyembuhkan luka-luka batin', 'Charles Stanley', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '468', '468/Dinarpusta/19', 'One Month to live', 'Rick Warren', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '469', '469/Dinarpusta/19', 'Ilmu Belajar dan Didaktika ', 'Junihot Simanjuntak', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '470', '470/Dinarpusta/19', 'face to face Appearances from Jesus', 'David E. Taylor', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '471', '471/Dinarpusta/19', 'Meraih sukses rohani', 'Sarah Bowling', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '472', '472/Dinarpusta/19', 'Selamat tinggal penyakit', 'Felix Wibowo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '473', '473/Dinarpusta/19', 'I\'m so lucky', 'Soeparno', 'Andi Yogyakarta', '231.8', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '474', '474/Dinarpusta/19', 'Pasti ada apa-apa dengan cinta & pacaran', 'Samuel W', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '475', '475/Dinarpusta/19', 'Pasti ada apa-apa dengan cinta & pacaran', 'Samuel W', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '476', '476/Dinarpusta/19', 'Pasti ada apa-apa dengan cinta & pacaran', 'Samuel W', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '477', '477/Dinarpusta/19', 'Kalo pacaran bisa asyik, ngapain ngejomblo?', 'S. Rahoyo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '478', '478/Dinarpusta/19', 'Celah-celah dalam dunia anak muda', 'Mas friani', 'Andi Yogyakarta', '241', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '479', '479/Dinarpusta/19', 'Persepuluhan kunci kebebasan Financial', 'Steven Teo', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '480', '480/Dinarpusta/19', 'Kalo pacaran bisa asyik, ngapain ngejomblo?', 'S. Rahoyo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '481', '481/Dinarpusta/19', 'Celah-celah dalam dunia anak muda', 'Mas friani', 'Andi Yogyakarta', '241', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '482', '482/Dinarpusta/19', 'Celah-celah dalam dunia anak muda', 'Mas friani', 'Andi Yogyakarta', '241', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '483', '483/Dinarpusta/19', 'Persepuluhan kunci kebebasan Financial', 'Steven Teo', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '484', '484/Dinarpusta/19', 'Dia Jodohku bukan sih, Tuhan?', 'Franky Nataluna T.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '485', '485/Dinarpusta/19', 'Dia Jodohku bukan sih, Tuhan?', 'Franky Nataluna T.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '486', '486/Dinarpusta/19', 'Dia Jodohku bukan sih, Tuhan?', 'Franky Nataluna T.', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '487', '487/Dinarpusta/19', 'Heart of Worship', 'Rev. Samuel Lye', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '488', '488/Dinarpusta/19', 'Open Heaven ', 'Dr. Paul Ang', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '489', '489/Dinarpusta/19', 'Open Heaven ', 'Dr. Paul Ang', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '490', '490/Dinarpusta/19', 'History of YHWH', 'Oky Otto otto', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 0);
INSERT INTO `buku` (`tanggal_terima`, `id_buku`, `no_induk`, `judul_buku`, `pengarang`, `penerbit`, `no_kelas`, `eksamplar`, `jenis`, `keterangan`, `harga`) VALUES
('2019-07-25', '491', '491/Dinarpusta/19', 'History of YHWH', 'Oky Otto otto', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '492', '492/Dinarpusta/19', 'Wanita Terpuji pilihan Allah', 'Justin Wan', 'Andi Yogyakarta', '220.8', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '493', '493/Dinarpusta/19', 'Wanita Terpuji pilihan Allah', 'Justin Wan', 'Andi Yogyakarta', '220.8', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '494', '494/Dinarpusta/19', 'God\'s call to Holy Life', 'Teguh Bowo Sembodo', 'Andi Yogyakarta', '232.901', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '495', '495/Dinarpusta/19', 'God\'s call to Holy Life', 'Teguh Bowo Sembodo', 'Andi Yogyakarta', '232.901', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '496', '496/Dinarpusta/19', 'God\'s call to Holy Life', 'Teguh Bowo Sembodo', 'Andi Yogyakarta', '232.901', 1, 'F', 'APBD 2019', 0),
('2019-07-25', '497', '497/Dinarpusta/19', 'Unpredictable Ending: The Calling', 'Prita Laura', 'Andi Yogyakarta', '236.1', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '498', '498/Dinarpusta/19', 'I don\'nt want Delilah I need you', 'Bishop Eddie L. Long', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '499', '499/Dinarpusta/19', 'High Impact Living', 'Heru Tri Budi', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '500', '500/Dinarpusta/19', 'Hermeneutik : Prinsip-prinsip dan proses Interpretasi Alkitabiah', 'Henry A. Virkler', 'Andi Yogyakarta', '220.6', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '501', '501/Dinarpusta/19', 'Making Militant Disciples', 'David L. Watson', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '502', '502/Dinarpusta/19', 'Visioneering', 'Andy stanley', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '503', '503/Dinarpusta/19', 'Healing Movement', 'Pdt. DR. Ir. Niko Njotorahardjo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '504', '504/Dinarpusta/19', 'Mistaken Identity', 'Don', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '505', '505/Dinarpusta/19', 'Cek dari Tuhan', 'C. H. Spurgeon', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '506', '506/Dinarpusta/19', 'Power Of Hope', 'Salmon Hutasoit', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '507', '507/Dinarpusta/19', 'Secret Summer Dreams', 'Beverly Lewis', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '508', '508/Dinarpusta/19', 'Menanti pelangi d balik awan kelabu asmara arini', 'Santi Konanjaya', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '509', '509/Dinarpusta/19', 'Doa Bapa kami bukan sekadar Doa Liturgi', 'Jonar S.', 'Andi Yogyakarta', '242', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '510', '510/Dinarpusta/19', 'Generasi anti galau', 'Kornelius Sabat', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '511', '511/Dinarpusta/19', 'Manifesto politik Yesus', 'Gunche lugo', 'Andi Yogyakarta', '232', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '512', '512/Dinarpusta/19', 'Hakim & raja bumi', 'Dr. Sunday Adelaja', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '513', '513/Dinarpusta/19', 'My Unforgettable Experience', 'Imelda Saputra', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '514', '514/Dinarpusta/19', 'We Shall Overcome', 'Samuel', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '515', '515/Dinarpusta/19', 'Iman di atas garis', 'Ev. Meriana Rungkat', 'Andi Yogyakarta', '238', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '516', '516/Dinarpusta/19', 'Three Simple Rules', 'Rueben P. JOB', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '517', '517/Dinarpusta/19', 'How to be Filled with Spiritual power', 'Harold J. Chadwick', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '518', '518/Dinarpusta/19', 'Understanding God ', 'Dr. Sunday Adelaja', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '519', '519/Dinarpusta/19', 'Yesus yang disalib bagiku', 'Mark A. Marinella, M. D., F. A. C. P.', 'Andi Yogyakarta', '232.963', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '520', '520/Dinarpusta/19', 'Mencicipi Kekal sebelum kematian', 'Pdt. Jaerock Lee', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '521', '521/Dinarpusta/19', 'Fruitful Life for His Glory', 'Maruli Pardamean', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '522', '522/Dinarpusta/19', 'Christianity Beyond Belief', 'Todd D. Hunter', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '523', '523/Dinarpusta/19', 'Hidup dalam Kesehatan Ilahi', 'Jimmy Chang, M. P. M', 'Andi Yogyakarta', '241.2', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '524', '524/Dinarpusta/19', 'Doktrin Inkarnasi Kristus', 'Pdt. Dr. Harry Sudarma', 'Andi Yogyakarta', '232.97', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '525', '525/Dinarpusta/19', 'Countdown to the Apocalypse', 'Grant R. Jeffrey', 'Andi Yogyakarta', '236.9', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '526', '526/Dinarpusta/19', 'Discover Your Destiny', 'Tony evans', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '527', '527/Dinarpusta/19', 'Menuju Sekolah Kristen Impian', 'Khoe Yao Tung', 'Andi Yogyakarta', '268', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '528', '528/Dinarpusta/19', 'Effective Pastoring', 'Bill Lawrence', 'Andi Yogyakarta', '266', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '529', '529/Dinarpusta/19', 'Eksistensi Dunia Roh', 'Jonar S.', 'Andi Yogyakarta', '202.11', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '530', '530/Dinarpusta/19', 'culture of Honor', 'Danny Silk', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '531', '531/Dinarpusta/19', 'Dream Big', 'Patricia King', 'Andi Yogyakarta', '234', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '532', '532/Dinarpusta/19', 'Spiritual Intelligence', 'Alan E. Nelson', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '533', '533/Dinarpusta/19', 'MODEL', 'Elia Paul ang', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '534', '534/Dinarpusta/19', 'Successfull Kids Through Character', 'John Yates', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '535', '535/Dinarpusta/19', 'You ? Ask Bible Answer', 'Sudiyono', 'Andi Yogyakarta', '220.6', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '536', '536/Dinarpusta/19', 'spiritual accountability', 'Dr. Alemu Beeftu', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '537', '537/Dinarpusta/19', 'The highest call to end the Journey', 'Pdt. Utju Teahadi, M. Div', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '538', '538/Dinarpusta/19', 'Jomblo tapi hepi', 'Magdalena A. Lodiay', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '539', '539/Dinarpusta/19', 'Tragedi dibalik roh cinta uang', 'Jekoi Silitonga', 'Andi Yogyakarta', '241.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '540', '540/Dinarpusta/19', 'Seorang hamba yang meneladani jejak Yesus', 'S. Rahoyo', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '541', '541/Dinarpusta/19', 'Christ our life', 'Andrew Murray', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '542', '542/Dinarpusta/19', 'Jomblo bingung kawin pusing', 'S. Rahoyo', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '543', '543/Dinarpusta/19', 'Cantik tanpa kecantikan', 'Pdt. Pengky Andu', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '544', '544/Dinarpusta/19', 'Sumeleh untuk menang', 'Obaja Tanto Setiawan', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '545', '545/Dinarpusta/19', 'I believe I can Fly', 'Pdt. Pengky Andu', 'Andi Yogyakarta', '234.2', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '546', '546/Dinarpusta/19', 'Abraham Alex Tanuseputra Sang Visioner', 'Harianto GP', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '547', '547/Dinarpusta/19', 'Sex and Relationship', 'Tim Clinton', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '548', '548/Dinarpusta/19', 'Foxe\'s Book of Martyrs, kisah para martir', 'John Foxe', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '549', '549/Dinarpusta/19', 'Cewek &cermin', 'Kara Powell', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '550', '550/Dinarpusta/19', 'Mengenal &belajar Raja-raja Israel & Yehuda', 'Ratih Maharani', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '551', '551/Dinarpusta/19', 'Smart book og Chiristianity Perjanjian lama', 'Lukas Adi S', 'Andi Yogyakarta', '221', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '552', '552/Dinarpusta/19', 'Empowered Prayer', 'James W. Goll', 'Andi Yogyakarta', '242', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '553', '553/Dinarpusta/19', 'New Testament Theology, memuliakan Allah dalam Kristus', 'Thomas R. Schreiner', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '554', '554/Dinarpusta/19', 'tip trik programmer macro Excel profesional', 'feri sulianta', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '555', '555/Dinarpusta/19', 'tip trik programmer macro Excel profesional', 'feri sulianta', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '556', '556/Dinarpusta/19', 'Dasar Pemrograman JavaSscript langkah demi langkah', 'Dr. Eng RH. Sianipar', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '557', '557/Dinarpusta/19', 'Dasar Pemrograman JavaSscript langkah demi langkah', 'Dr. Eng RH. Sianipar', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '558', '558/Dinarpusta/19', 'Georefenrencing menggunakan ArcGIS', 'Syarul Ridha, S. Pd., M. Pd', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '559', '559/Dinarpusta/19', 'Georefenrencing menggunakan ArcGIS', 'Syarul Ridha, S. Pd., M. Pd', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '560', '560/Dinarpusta/19', 'Cepat Mudah belajar sendiri Microsoft Word 2013', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '561', '561/Dinarpusta/19', 'Cepat Mudah belajar sendiri Microsoft Word 2013', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '562', '562/Dinarpusta/19', 'Menguasai Rumus & Fungsi Microsoft Excel Populer untuk Pemula', 'M. Leo Agung', 'Andi Yogyakarta', '004.0151', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '563', '563/Dinarpusta/19', 'Menguasai Rumus & Fungsi Microsoft Excel Populer untuk Pemula', 'M. Leo Agung', 'Andi Yogyakarta', '004.0151', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '564', '564/Dinarpusta/19', 'Machine Learning & Computational Intelligence', 'Widodo Budiharto', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '565', '565/Dinarpusta/19', 'Machine Learning & Computational Intelligence', 'Widodo Budiharto', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '566', '566/Dinarpusta/19', 'Visual C ++ 2013', 'Ignas', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '567', '567/Dinarpusta/19', 'Visual C ++ 2013', 'Ignas', 'Andi Yogyakarta', '004.21', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '568', '568/Dinarpusta/19', 'Desain PopArt untuk kaos gaul dengan CorelDRAW X6', 'Ignas', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '569', '569/Dinarpusta/19', 'Desain PopArt untuk kaos gaul dengan CorelDRAW X6', 'Ignas', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '570', '570/Dinarpusta/19', 'Sudahkah anda sungguh-sungguh dimerdekakan?', 'D. Saulina L. Gaol', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '571', '571/Dinarpusta/19', 'Sudahkah anda sungguh-sungguh dimerdekakan?', 'D. Saulina L. Gaol', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '572', '572/Dinarpusta/19', 'Sumeleh untuk menang', 'Obaja Tanto Setiawan', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '573', '573/Dinarpusta/19', 'Sumeleh untuk menang', 'Obaja Tanto Setiawan', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '574', '574/Dinarpusta/19', 'Smart parenting', 'Edwin Charis', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '575', '575/Dinarpusta/19', 'Smart parenting', 'Edwin Charis', 'Andi Yogyakarta', '249', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '576', '576/Dinarpusta/19', 'Serius terhadap dosa', 'Tim Baker', 'Andi Yogyakarta', '241.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '577', '577/Dinarpusta/19', 'Serius terhadap dosa', 'Tim Baker', 'Andi Yogyakarta', '241.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '578', '578/Dinarpusta/19', 'Christ Oriented Person', 'Agus Vianus', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '579', '579/Dinarpusta/19', 'Christ Oriented Person', 'Agus Vianus', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '580', '580/Dinarpusta/19', 'Christ Oriented Person', 'Agus Vianus', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '581', '581/Dinarpusta/19', 'Jangan salah Pilih', 'Andreas Christanday', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '582', '582/Dinarpusta/19', 'Jangan salah Pilih', 'Andreas Christanday', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '583', '583/Dinarpusta/19', 'spiritual accountability', 'Dr. Alemu Beeftu', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '584', '584/Dinarpusta/19', 'spiritual accountability', 'Dr. Alemu Beeftu', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '585', '585/Dinarpusta/19', 'Jomblo tapi hepi', 'Magdalena A. Lodiay', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '586', '586/Dinarpusta/19', 'Jomblo tapi hepi', 'Magdalena A. Lodiay', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '587', '587/Dinarpusta/19', 'Chinese Inspirative Stories', 'Kornelius Sabat', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '588', '588/Dinarpusta/19', 'Chinese Inspirative Stories', 'Kornelius Sabat', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '589', '589/Dinarpusta/19', 'Successful Servant Through Character', 'Markus Suyadi', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '590', '590/Dinarpusta/19', 'Successful Servant Through Character', 'Markus Suyadi', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '591', '591/Dinarpusta/19', 'Church Growth through cell Group', 'Tony tedjo, M. Th', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '592', '592/Dinarpusta/19', 'Church Growth through cell Group', 'Tony tedjo, M. Th', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '593', '593/Dinarpusta/19', 'Church Growth through cell Group', 'Tony tedjo, M. Th', 'Andi Yogyakarta', '262', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '594', '594/Dinarpusta/19', 'Extraordinary Leadership', 'Jenni Catron', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '595', '595/Dinarpusta/19', 'Extraordinary Leadership', 'Jenni Catron', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '596', '596/Dinarpusta/19', 'Sang penginjil Jalanan', 'Irwan Halim', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '597', '597/Dinarpusta/19', 'Sang penginjil Jalanan', 'Irwan Halim', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '598', '598/Dinarpusta/19', 'Empowering Faith', 'Elia Paul ang', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '599', '599/Dinarpusta/19', 'Empowering Faith', 'Elia Paul ang', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '600', '600/Dinarpusta/19', 'Sukses Plus', 'Jarot Wijanarko', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '601', '601/Dinarpusta/19', 'Sukses Plus', 'Jarot Wijanarko', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '602', '602/Dinarpusta/19', 'Enjoying 4 Seasons of life', 'Pdt. Obaja Tanto Setiawan', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '603', '603/Dinarpusta/19', 'Enjoying 4 Seasons of life', 'Pdt. Obaja Tanto Setiawan', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '604', '604/Dinarpusta/19', 'Fresh Every Morning', 'Arie Saptaji', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '605', '605/Dinarpusta/19', 'Fresh Every Morning', 'Arie Saptaji', 'Andi Yogyakarta', '269', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '606', '606/Dinarpusta/19', 'Doktrin Kristen Perspektif Pentakosta', 'Frech L. Arrington', 'Andi Yogyakarta', '231', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '607', '607/Dinarpusta/19', 'Sukses berbisnis toko online dengan WordPress Woo Commerce', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '608', '608/Dinarpusta/19', 'Sukses berbisnis toko online dengan WordPress Woo Commerce', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '609', '609/Dinarpusta/19', 'Konsep & Implementasi Pemrograman GUI', 'Antonius Rachmat', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '610', '610/Dinarpusta/19', 'Konsep & Implementasi Pemrograman GUI', 'Antonius Rachmat', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '611', '611/Dinarpusta/19', 'Java untuk kriptografi', 'Dr. Eng. RH. Sianipar', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '612', '612/Dinarpusta/19', 'Java untuk kriptografi', 'Dr. Eng. RH. Sianipar', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '613', '613/Dinarpusta/19', 'CorelDraw X7 for Advertising', 'Ignas', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '614', '614/Dinarpusta/19', 'CorelDraw X7 for Advertising', 'Ignas', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '615', '615/Dinarpusta/19', 'The Principles Of Beautiful We Design', 'Jason Beaird', 'Andi Yogyakarta', '005.12', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '616', '616/Dinarpusta/19', 'The Principles Of Beautiful We Design', 'Jason Beaird', 'Andi Yogyakarta', '005.12', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '617', '617/Dinarpusta/19', 'Mobile Phone Forensics: Theory', 'Andri Puspo Heriyanto', 'Andi Yogyakarta', '004.695', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '618', '618/Dinarpusta/19', 'Mobile Phone Forensics: Theory', 'Andri Puspo Heriyanto', 'Andi Yogyakarta', '004.695', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '619', '619/Dinarpusta/19', 'Belajar Sendiri Pasti Bisa: Arduino', 'Abdul Kadir', 'Andi Yogyakarta', '004.071', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '620', '620/Dinarpusta/19', 'Belajar Sendiri Pasti Bisa: Arduino', 'Abdul Kadir', 'Andi Yogyakarta', '004.071', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '621', '621/Dinarpusta/19', 'Membangun Rumus & Fungsi pada Microsoft Excel 2010-2013-2016', 'Leo Agung', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '622', '622/Dinarpusta/19', 'Membangun Rumus & Fungsi pada Microsoft Excel 2010-2013-2016', 'Leo Agung', 'Andi Yogyakarta', '005.3', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '623', '623/Dinarpusta/19', 'Mengoptimalkan Microsoft Excel untuk Analisis data', 'Leo Agung', 'Andi Yogyakarta', '005.265', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '624', '624/Dinarpusta/19', 'Mengoptimalkan Microsoft Excel untuk Analisis data', 'Leo Agung', 'Andi Yogyakarta', '005.265', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '625', '625/Dinarpusta/19', 'Pemrograman Berorientasi Objek Menggunakan C#', 'Adi Nugroho', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '626', '626/Dinarpusta/19', 'Pemrograman Berorientasi Objek Menggunakan C#', 'Adi Nugroho', 'Andi Yogyakarta', '005.74', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '627', '627/Dinarpusta/19', 'Metode Penelitian Terpadu Sistem Informasi', 'Dr. Willy Abdillah, M. Sc', 'Andi Yogyakarta', '009', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '628', '628/Dinarpusta/19', 'Metode Penelitian Terpadu Sistem Informasi', 'Dr. Willy Abdillah, M. Sc', 'Andi Yogyakarta', '009', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '629', '629/Dinarpusta/19', 'Visual Basic.Net untuk Programer', 'R. H. Sianipar', 'Andi Yogyakarta', '005.43', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '630', '630/Dinarpusta/19', 'Visual Basic.Net untuk Programer', 'R. H. Sianipar', 'Andi Yogyakarta', '005.43', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '631', '631/Dinarpusta/19', 'Kreasi digital dengan Photoshop untuk pemula, Creative Imagination Art', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '632', '632/Dinarpusta/19', 'Kreasi digital dengan Photoshop untuk pemula, Creative Imagination Art', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '633', '633/Dinarpusta/19', 'Web Hacking dari Subkultural Programmer', 'Jasman', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '634', '634/Dinarpusta/19', 'Web Hacking dari Subkultural Programmer', 'Jasman', 'Andi Yogyakarta', '005.268', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '635', '635/Dinarpusta/19', 'For a better Tomorrow', 'Bob merritt', 'Andi Yogyakarta', '248', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '636', '636/Dinarpusta/19', 'Surga dan alam baka', 'James L. Garlow dan Keith Wall', 'Andi Yogyakarta', '236.2', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '637', '637/Dinarpusta/19', 'Decision Making God\'s Way', 'Gary T. Meadors', 'Andi Yogyakarta', '241', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '638', '638/Dinarpusta/19', 'melawan Godaan Dosa', 'Michael L. Brown', 'Andi Yogyakarta', '243', 1, 'F', 'APBD 2019', 0),
('2018-11-28', '639', '639/Dinarpusta/19', 'Christ the Healer', 'F. F. Bosworth', 'Andi Yogyakarta', '232', 0, '', 'APBD 2019', 0),
('2018-11-28', '640', '640/Dinarpusta/19', 'Silent Killers of Faith', 'Dr. Stephen Crosby', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '641', '641/Dinarpusta/19', 'Successful Women soeak Differetly', 'Valorie', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '642', '642/Dinarpusta/19', 'Sukses dalam segala hal', 'Maruli Pardamean', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '643', '643/Dinarpusta/19', 'Character Builder', 'Richard T', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '644', '644/Dinarpusta/19', 'Mengenal agama manusia', 'Jonar Situmorang', 'Andi Yogyakarta', '210.1', 0, '', 'APBD 2019', 0),
('2018-11-28', '645', '645/Dinarpusta/19', 'Membangun pribadi Unggul', 'B. S. Sidjabat', 'Andi Yogyakarta', '268', 0, '', 'APBD 2019', 0),
('2018-11-28', '646', '646/Dinarpusta/19', 'You can do it', ' M. Leo Agung', 'Andi Yogyakarta', '006.66', 0, '', 'APBD 2019', 0),
('2018-11-28', '647', '647/Dinarpusta/19', 'You can do it', ' M. Leo Agung', 'Andi Yogyakarta', '006.66', 0, '', 'APBD 2019', 0),
('2018-11-28', '648', '648/Dinarpusta/19', 'Analisis dan perancangan sistem basis data', 'Wahyuni Reksoatmodjo', 'Andi Yogyakarta', '005.265', 0, '', 'APBD 2019', 0),
('2018-11-28', '649', '649/Dinarpusta/19', 'Analisis dan perancangan sistem basis data', 'Wahyuni Reksoatmodjo', 'Andi Yogyakarta', '005.265', 0, '', 'APBD 2019', 0),
('2018-11-28', '650', '650/Dinarpusta/19', 'Membangun IT Savvy untuk menjadi organisasi Digital Master', 'Prof. Dr. Jogiyanto HM, MBA, Akt', 'Andi Yogyakarta', '005.07', 0, '', 'APBD 2019', 0),
('2018-11-28', '651', '651/Dinarpusta/19', 'Membangun IT Savvy untuk menjadi organisasi Digital Master', 'Prof. Dr. Jogiyanto HM, MBA, Akt', 'Andi Yogyakarta', '005.07', 0, '', 'APBD 2019', 0),
('2018-11-28', '652', '652/Dinarpusta/19', 'Membangun Rumus & Fungsi pada Microsoft Excel 207-2010-2013', 'Leo Agung', 'Andi Yogyakarta', '004.21', 0, '', 'APBD 2019', 0),
('2018-11-28', '653', '653/Dinarpusta/19', 'Membangun Rumus & Fungsi pada Microsoft Excel 207-2010-2013', 'Leo Agung', 'Andi Yogyakarta', '004.21', 0, '', 'APBD 2019', 0),
('2018-11-28', '654', '654/Dinarpusta/19', 'mengalami pimpinan Allah lewat Peristiwa Alamiah & Supernatural', 'Derek Tidball', 'Andi Yogyakarta', '269', 0, '', 'APBD 2019', 0),
('2018-11-28', '655', '655/Dinarpusta/19', 'Mengenal hati Allah', 'Pieter Lase, M. Div', 'Andi Yogyakarta', '231', 0, '', 'APBD 2019', 0),
('2018-11-28', '656', '656/Dinarpusta/19', 'Simply Jesus', 'Woodrow Kroll', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '657', '657/Dinarpusta/19', 'Experiencing the Heavenly Realm', 'Judy Franklin', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '658', '658/Dinarpusta/19', 'Filsafat Pendidikan kristen', 'Khoe Yao Tung', 'Andi Yogyakarta', '268', 0, '', 'APBD 2019', 0),
('2018-11-28', '659', '659/Dinarpusta/19', 'face to Face with Jesus', 'Skip Heitzig', 'Andi Yogyakarta', '269', 0, '', 'APBD 2019', 0),
('2018-11-28', '660', '660/Dinarpusta/19', 'Creating Understanding', 'Donald K. Smith', 'Andi Yogyakarta', '201.5', 0, '', 'APBD 2019', 0),
('2018-11-28', '661', '661/Dinarpusta/19', 'Surga atau neraka', 'suzanna Anna Yulia', 'Andi Yogyakarta', '236.2', 0, '', 'APBD 2019', 0),
('2018-11-28', '662', '662/Dinarpusta/19', 'Mengejar Kebahagiaan', 'Frank Minirth, M. D', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '663', '663/Dinarpusta/19', 'Mengenal & bergaul dengan Allah', 'Yakub B. Susabda', 'Andi Yogyakarta', '231', 0, '', 'APBD 2019', 0),
('2018-11-28', '664', '664/Dinarpusta/19', 'Sejarah Gereja Umum', 'Jonar S.', 'Andi Yogyakarta', '270', 0, '', 'APBD 2019', 0),
('2018-11-28', '665', '665/Dinarpusta/19', 'Teori dan Aplikasi  Struktur data menggunakan Java', 'Abdul Kadir', 'Andi Yogyakarta', '005.13', 0, '', 'APBD 2019', 0),
('2018-11-28', '666', '666/Dinarpusta/19', 'Teori dan Aplikasi  Struktur data menggunakan Java', 'Abdul Kadir', 'Andi Yogyakarta', '005.13', 0, '', 'APBD 2019', 0),
('2018-11-28', '667', '667/Dinarpusta/19', 'jquery belajar dari studi kasus', 'Dr. Eng . R. H. Sianipar', 'Andi Yogyakarta', '006.696', 0, '', 'APBD 2019', 0),
('2018-11-28', '668', '668/Dinarpusta/19', 'jquery belajar dari studi kasus', 'Dr. Eng . R. H. Sianipar', 'Andi Yogyakarta', '006.696', 0, '', 'APBD 2019', 0),
('2018-11-28', '669', '669/Dinarpusta/19', 'Java Dekstop dengan metode Pro- 00P', 'Kharisman Kholid Hudaya', 'Andi Yogyakarta', '005.268', 0, '', 'APBD 2019', 0),
('2018-11-28', '670', '670/Dinarpusta/19', 'Java Dekstop dengan metode Pro- 00P', 'Kharisman Kholid Hudaya', 'Andi Yogyakarta', '005.268', 0, '', 'APBD 2019', 0),
('2018-11-28', '671', '671/Dinarpusta/19', 'Belajar Sendiri pasti bisa CSS3', 'Abdul Kadir', 'Andi Yogyakarta', '005.13', 0, '', 'APBD 2019', 0),
('2018-11-28', '672', '672/Dinarpusta/19', 'Belajar Sendiri pasti bisa CSS3', 'Abdul Kadir', 'Andi Yogyakarta', '005.13', 0, '', 'APBD 2019', 0),
('2018-11-28', '673', '673/Dinarpusta/19', 'Belajar sendiri pasti bisa pemrograman PHP', 'Abdul Kadir', 'Andi Yogyakarta', '004.21', 0, '', 'APBD 2019', 0),
('2018-11-28', '674', '674/Dinarpusta/19', 'Belajar sendiri pasti bisa pemrograman PHP', 'Abdul Kadir', 'Andi Yogyakarta', '004.21', 0, '', 'APBD 2019', 0),
('2018-11-28', '675', '675/Dinarpusta/19', 'Bermain Program & robot menggunakan Scratch', 'Abdul Kadir', 'Andi Yogyakarta', '005.268', 0, '', 'APBD 2019', 0),
('2018-11-28', '676', '676/Dinarpusta/19', 'Bermain Program & robot menggunakan Scratch', 'Abdul Kadir', 'Andi Yogyakarta', '005.268', 0, '', 'APBD 2019', 0),
('2018-11-28', '677', '677/Dinarpusta/19', 'Dasar Algoritma dan Struktur data dengan bahasa Java', 'Cipta Ramadhani, S. T., M. Eng.', 'Andi Yogyakarta', '005.13', 0, '', 'APBD 2019', 0),
('2018-11-28', '678', '678/Dinarpusta/19', 'Dasar Algoritma dan Struktur data dengan bahasa Java', 'Cipta Ramadhani, S. T., M. Eng.', 'Andi Yogyakarta', '005.13', 0, '', 'APBD 2019', 0),
('2018-11-28', '679', '679/Dinarpusta/19', 'Dasar Raspberry Pi', 'Abdul Kadir', 'Andi Yogyakarta', '005.74', 0, '', 'APBD 2019', 0),
('2018-11-28', '680', '680/Dinarpusta/19', 'Dasar Raspberry Pi', 'Abdul Kadir', 'Andi Yogyakarta', '005.74', 0, '', 'APBD 2019', 0),
('2018-11-28', '681', '681/Dinarpusta/19', 'Belajar sendiri pasti bisa Pemrograman Java', 'Abdul Kadir', 'Andi Yogyakarta', '004.21', 0, '', 'APBD 2019', 0),
('2018-11-28', '682', '682/Dinarpusta/19', 'Belajar sendiri pasti bisa Pemrograman Java', 'Abdul Kadir', 'Andi Yogyakarta', '004.21', 0, '', 'APBD 2019', 0),
('2018-11-28', '683', '683/Dinarpusta/19', 'Cara Yesus memimpin', 'Gary Goodell', 'Andi Yogyakarta', '232', 0, '', 'APBD 2019', 0),
('2018-11-28', '684', '684/Dinarpusta/19', 'Se7en Decision Codes', 'Timotius Adi Tan', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '685', '685/Dinarpusta/19', 'membesarkan anak dengan kreatif', 'BS. Sidjabat', 'Andi Yogyakarta', '249', 0, '', 'APBD 2019', 0),
('2018-11-28', '686', '686/Dinarpusta/19', 'Finding God Zone', 'Jana Alcorn', 'Andi Yogyakarta', '234.2', 0, '', 'APBD 2019', 0),
('2018-11-28', '687', '687/Dinarpusta/19', 'Menaklukkan rasa takut', 'Carol Kent', 'Andi Yogyakarta', '249', 0, '', 'APBD 2019', 0),
('2018-11-28', '688', '688/Dinarpusta/19', 'Saat anda lelah memimpin', 'Wayne Cordeiro', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '689', '689/Dinarpusta/19', 'Yesus Tuhan yang melayani', 'Frans P. Tamarol', 'Andi Yogyakarta', '226.3', 0, '', 'APBD 2019', 0),
('2018-11-28', '690', '690/Dinarpusta/19', 'Emotion Love', 'Elia Paul Ang', 'Andi Yogyakarta', '241', 0, '', 'APBD 2019', 0),
('2018-11-28', '691', '691/Dinarpusta/19', 'Dreams with God', 'Bill Johnson', 'Andi Yogyakarta', '266', 0, '', 'APBD 2019', 0),
('2018-11-28', '692', '692/Dinarpusta/19', 'Developing a Supernatural Lifestyle', 'Kris Vallotton', 'Andi Yogyakarta', '269', 0, '', 'APBD 2019', 0),
('2018-11-28', '693', '693/Dinarpusta/19', 'Menghancurkan Benteng-benteng Iblis', 'Don Nori Sr', 'Andi Yogyakarta', '235', 0, '', 'APBD 2019', 0),
('2018-11-28', '694', '694/Dinarpusta/19', 'Di bumi seperti di sorga', 'Warren W. Wiersbe', 'Andi Yogyakarta', '242', 0, '', 'APBD 2019', 0),
('2018-11-28', '695', '695/Dinarpusta/19', 'Etika kristen untuk perguruan tinggi', 'Pdt. R. M. Drie S. Brotosudarmo, S. Th., M. Th., M', 'Andi Yogyakarta', '241', 0, '', 'APBD 2019', 0),
('2018-11-28', '696', '696/Dinarpusta/19', 'Secrets to Parenting your Adult Child', 'Nancy Williams', 'Andi Yogyakarta', '249', 0, '', 'APBD 2019', 0),
('2018-11-28', '697', '697/Dinarpusta/19', 'Call me Crazy but I\'m Hearing God', 'Kim Clement', 'Andi Yogyakarta', '269', 0, '', 'APBD 2019', 0),
('2018-11-28', '698', '698/Dinarpusta/19', 'Strategic Church', 'Frank Damazio', 'Andi Yogyakarta', '262', 0, '', 'APBD 2019', 0),
('2018-11-28', '699', '699/Dinarpusta/19', 'Destinee for Greatnes', 'DR. Christina Ang', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '700', '700/Dinarpusta/19', 'Mengungkap rahasia Alkitab', 'Gandi Wibowo', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '701', '701/Dinarpusta/19', 'Discover The Joy', 'D. Michael Toby', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '702', '702/Dinarpusta/19', 'Extraordinary Favor', 'Handoko Pangarso', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '703', '703/Dinarpusta/19', 'You can change te world', 'Claudia Wintoch', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '704', '704/Dinarpusta/19', 'Menyingkap Misteri Dunia Orang Mati', 'Jonar Situmorang, M. A', 'Andi Yogyakarta', '236.1', 0, '', 'APBD 2019', 0),
('2018-11-28', '705', '705/Dinarpusta/19', 'Say goodbye to powerless Christianity', 'Che Ahn', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '706', '706/Dinarpusta/19', 'Eskatologi Biblika', 'Welly Pandensolang', 'Andi Yogyakarta', '236', 0, '', 'APBD 2019', 0),
('2018-11-28', '707', '707/Dinarpusta/19', 'Ekklesiologi', 'Jonar S.', 'Andi Yogyakarta', '234', 0, '', 'APBD 2019', 0),
('2018-11-28', '708', '708/Dinarpusta/19', 'Compelled by Love', 'Heidi Baker', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '709', '709/Dinarpusta/19', 'Menari di tepian Bumi', 'Brother William', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '710', '710/Dinarpusta/19', 'Stop Stress!', 'DR. Kevin leman', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '711', '711/Dinarpusta/19', 'Mom & her son', 'Dr. Kevin leman', 'Andi Yogyakarta', '249', 0, '', 'APBD 2019', 0),
('2018-11-28', '712', '712/Dinarpusta/19', 'success Through Your Leaders', 'Che Ahn', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '713', '713/Dinarpusta/19', 'Soteriologi Doktrin keselamatan', 'Jonar S.', 'Andi Yogyakarta', '234', 0, '', 'APBD 2019', 0),
('2018-11-28', '714', '714/Dinarpusta/19', 'Tak Goyah ditimpa masalah', 'Steven teo', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '715', '715/Dinarpusta/19', 'Tak Goyah ditimpa masalah', 'Steven teo', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '716', '716/Dinarpusta/19', 'Come, Lord Jesus !', 'Steve Loopstra', 'Andi Yogyakarta', '242', 0, '', 'APBD 2019', 0),
('2018-11-28', '717', '717/Dinarpusta/19', 'Conquering the Religious Spirit', 'Tommi Femrite', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '718', '718/Dinarpusta/19', 'Sungguhkah Yesus itu Tuhan ?', 'M. Sudhi Dharma', 'Andi Yogyakarta', '232', 0, '', 'APBD 2019', 0),
('2018-11-28', '719', '719/Dinarpusta/19', 'Sukacita anda asli atau palsu?', 'Pdt. R. H. Pakpahan', 'Andi Yogyakarta', '241.1', 0, '', 'APBD 2019', 0),
('2018-11-28', '720', '720/Dinarpusta/19', 'Jalan Masuk kerajaan Surga', 'Kalis Stevanus', 'Andi Yogyakarta', '236.2', 0, '', 'APBD 2019', 0),
('2018-11-28', '721', '721/Dinarpusta/19', 'Charisma memberdayakan karunia-karunia Roh Kudus dalam Pelayanan', 'Dr. Paul Ang', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '722', '722/Dinarpusta/19', 'Ekonomi akhir Zaman', 'David jeremiah', 'Andi Yogyakarta', '281.7', 0, '', 'APBD 2019', 0),
('2018-11-28', '723', '723/Dinarpusta/19', 'Somebody Cares', 'Doug Stringer', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '724', '724/Dinarpusta/19', 'Energizing Hope', 'Elia Paul Ang', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '725', '725/Dinarpusta/19', 'Crown of life', 'Soeparno Broto R.', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '726', '726/Dinarpusta/19', 'Embun Sorgawi', 'Pdt. Ishak Sugianto', 'Andi Yogyakarta', '252', 0, '', 'APBD 2019', 0),
('2018-11-28', '727', '727/Dinarpusta/19', 'Spiritual Fathering', 'Samuel Devianus Wijaya', 'Andi Yogyakarta', '249', 0, '', 'APBD 2019', 0),
('2018-11-28', '728', '728/Dinarpusta/19', 'Sekolah Kehidupan', 'Jonar Situmorang', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '729', '729/Dinarpusta/19', 'Sekarang waktunya berperang', 'Francis Frangipane', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '730', '730/Dinarpusta/19', 'Seasons\' sonata', 'Xavier Quentin Pranata', 'Andi Yogyakarta', '243', 0, '', 'APBD 2019', 0),
('2018-11-28', '731', '731/Dinarpusta/19', 'Mendekat ke surga', 'Sulistyanto', 'Andi Yogyakarta', '252', 0, '', 'APBD 2019', 0),
('2018-11-28', '732', '732/Dinarpusta/19', 'Sehat ala Surga', 'Yohanes Sunardi', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '733', '733/Dinarpusta/19', 'Excellent Housewife', 'Yanthy Aquista', 'Andi Yogyakarta', '252', 0, '', 'APBD 2019', 0),
('2018-11-28', '734', '734/Dinarpusta/19', 'Exploring The Mysteries Of Worship', 'Lamar Boschman', 'Andi Yogyakarta', '269', 0, '', 'APBD 2019', 0),
('2018-11-28', '735', '735/Dinarpusta/19', 'Coffee time for your soul', 'Jonar S.', 'Andi Yogyakarta', '248', 0, '', 'APBD 2019', 0),
('2018-11-28', '736', '736/Dinarpusta/19', 'Jangan membunuh generasi', 'Kornelius Sabat', 'Andi Yogyakarta', '249', 0, '', 'APBD 2019', 0),
('2018-11-28', '737', '737/Dinarpusta/19', ' Housekeeping Passport', 'Ludfi Orbani', 'Andi Yogyakarta', '658.83', 0, '', 'APBD 2019', 0),
('2018-11-28', '738', '738/Dinarpusta/19', 'Etika profesi Hukum', 'Dr. H. Sutrisno, S. H., M. Hum', 'Andi Yogyakarta', '174.9', 0, '', 'APBD 2019', 0),
('2018-11-28', '739', '739/Dinarpusta/19', 'Pengantar Ilmu Hukum', 'Dr. Rr. Dijan Wdijowati', 'Andi Yogyakarta', '340.1', 0, '', 'APBD 2019', 0),
('2018-11-28', '740', '740/Dinarpusta/19', 'Pengantar Ilmu Hukum', 'Dr. Rr. Dijan Wdijowati', 'Andi Yogyakarta', '340.1', 0, '', 'APBD 2019', 0),
('2018-11-28', '741', '741/Dinarpusta/19', '200 tokoh Inspiratif penemu & Pengubah Dunia', 'Ismadi', 'Andi Yogyakarta', '923.9', 0, '', 'APBD 2019', 0),
('2018-11-28', '742', '742/Dinarpusta/19', '200 tokoh Inspiratif penemu & Pengubah Dunia', 'Ismadi', 'Andi Yogyakarta', '923.9', 0, '', 'APBD 2019', 0),
('2018-11-28', '743', '743/Dinarpusta/19', 'Akuntansi Sektor Publik', 'Prof. Dr. Mardiasmo, MBA., Ak., CA', 'Andi Yogyakarta', '657.66', 0, '', 'APBD 2019', 0),
('2018-11-28', '744', '744/Dinarpusta/19', 'Akuntansi Sektor Publik', 'Prof. Dr. Mardiasmo, MBA., Ak., CA', 'Andi Yogyakarta', '657.66', 0, '', 'APBD 2019', 0),
('2018-11-28', '745', '745/Dinarpusta/19', 'Akuntansi Sektor Publik', 'Prof. Dr. Mardiasmo, MBA., Ak., CA', 'Andi Yogyakarta', '657.66', 0, '', 'APBD 2019', 0),
('2018-11-28', '746', '746/Dinarpusta/19', 'Sukses Budi Daya Ikan Nila secara Intensif', 'H. Rahmat Rukmana', 'Andi Yogyakarta', '639.31', 0, '', 'APBD 2019', 0),
('2018-11-28', '747', '747/Dinarpusta/19', 'Sukses Budi Daya Ikan Nila secara Intensif', 'H. Rahmat Rukmana', 'Andi Yogyakarta', '639.31', 0, '', 'APBD 2019', 0),
('2018-11-28', '748', '748/Dinarpusta/19', 'Komputer Akuntansi MYOB Account Right Premier', 'Leo Agung', 'Andi Yogyakarta', '005.7', 0, '', 'APBD 2019', 0),
('2018-11-28', '749', '749/Dinarpusta/19', 'Komputer Akuntansi MYOB Account Right Premier', 'Leo Agung', 'Andi Yogyakarta', '005.7', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '750', '750/Dinarpusta/19', 'Pengantar Pemodelan keuangan Analisis Pasar Modal', 'prof. Dr. Sukmawati Sukamulja', 'Andi Yogyakarta', '332.041', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '751', '751/Dinarpusta/19', 'Pengantar Pemodelan keuangan Analisis Pasar Modal', 'prof. Dr. Sukmawati Sukamulja', 'Andi Yogyakarta', '332.041', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '752', '752/Dinarpusta/19', 'Hukum pidana Internasional', 'Arie Siswanto', 'Andi Yogyakarta', '345', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '753', '753/Dinarpusta/19', 'Hukum pidana Internasional', 'Arie Siswanto', 'Andi Yogyakarta', '345', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '754', '754/Dinarpusta/19', 'investasi Valuta asing', 'Dr. Agus Wibowo, M. M., M. Si., M. Kom', 'Andi Yogyakarta', '332.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '755', '755/Dinarpusta/19', 'investasi Valuta asing', 'Dr. Agus Wibowo, M. M., M. Si., M. Kom', 'Andi Yogyakarta', '332.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '756', '756/Dinarpusta/19', 'Huku  tata negara indonesia', 'Prof. Dr. Lintje Anna Marpaung, S.H., M. H', 'Andi Yogyakarta', '342.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '757', '757/Dinarpusta/19', 'Huku  tata negara indonesia', 'Prof. Dr. Lintje Anna Marpaung, S.H., M. H', 'Andi Yogyakarta', '342.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '758', '758/Dinarpusta/19', 'Narsis Go', 'Benk Mintosih', 'Andi Yogyakarta', '338.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '759', '759/Dinarpusta/19', 'Partila Least Square (PLS)', 'Dr. Willy Abdillah, M. Sc', 'Andi Yogyakarta', '658.07', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '760', '760/Dinarpusta/19', 'Partila Least Square (PLS)', 'Dr. Willy Abdillah, M. Sc', 'Andi Yogyakarta', '658.07', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '761', '761/Dinarpusta/19', 'Metode Penelitian Kuantitatif', 'Paulus Insap Santosa', 'Andi Yogyakarta', '011.75', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '762', '762/Dinarpusta/19', 'Metode Penelitian Kuantitatif', 'Paulus Insap Santosa', 'Andi Yogyakarta', '011.75', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '763', '763/Dinarpusta/19', 'Mahir Akuntansi Terapan', 'Irsan Lubis, SE., Ak., BKP., CAP', 'Andi Yogyakarta', '657.46', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '764', '764/Dinarpusta/19', 'Mahir Akuntansi Terapan', 'Irsan Lubis, SE., Ak., BKP., CAP', 'Andi Yogyakarta', '657.46', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '765', '765/Dinarpusta/19', 'Buku Pintar Akuntansi Perbankan dan Lembaga Keuangan Syariah', 'Djoko Muljono', 'Andi Yogyakarta', '258.151', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '766', '766/Dinarpusta/19', 'Buku Pintar Akuntansi Perbankan dan Lembaga Keuangan Syariah', 'Djoko Muljono', 'Andi Yogyakarta', '258.151', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '767', '767/Dinarpusta/19', 'Metodologi penelitian Bisnis', 'Nur Indriantoro', 'Andi Yogyakarta', '658.83', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '768', '768/Dinarpusta/19', 'Metodologi penelitian Bisnis', 'Nur Indriantoro', 'Andi Yogyakarta', '658.83', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '769', '769/Dinarpusta/19', 'Gudang simpang Siur', 'Benedicta Rini W', 'Andi Yogyakarta', '155.2', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '770', '770/Dinarpusta/19', 'Gudang simpang Siur', 'Benedicta Rini W', 'Andi Yogyakarta', '155.2', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '771', '771/Dinarpusta/19', '500 + *games Dahsyat*', 'Pardamean Panjaitan', 'Andi Yogyakarta', '790.1', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '772', '772/Dinarpusta/19', '500 + *games Dahsyat*', 'Pardamean Panjaitan', 'Andi Yogyakarta', '790.1', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '773', '773/Dinarpusta/19', 'Bikin Restoran laris manis', 'Giacinta Hanna', 'Andi Yogyakarta', '338.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '774', '774/Dinarpusta/19', 'Bikin Restoran laris manis', 'Giacinta Hanna', 'Andi Yogyakarta', '338.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '775', '775/Dinarpusta/19', 'Kitab properti No. 2', 'Ari Wibowo', 'Andi Yogyakarta', '346.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '776', '776/Dinarpusta/19', 'Kitab properti No. 2', 'Ari Wibowo', 'Andi Yogyakarta', '346.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '777', '777/Dinarpusta/19', 'Manajemen Pertelevisian Modern', 'Andi Fachruddin', 'Andi Yogyakarta', '259.14', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '778', '778/Dinarpusta/19', 'Manajemen Pertelevisian Modern', 'Andi Fachruddin', 'Andi Yogyakarta', '259.14', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '779', '779/Dinarpusta/19', 'Cermat Menguasai Seluk-beluk perpajakan Indonesis', 'Tmbooks', 'Andi Yogyakarta', '336.2', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '780', '780/Dinarpusta/19', 'Cermat Menguasai Seluk-beluk perpajakan Indonesis', 'Tmbooks', 'Andi Yogyakarta', '336.2', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '781', '781/Dinarpusta/19', 'Ensiklopedia Pendidikan & Psikologi', 'Zainal Aqib', 'Andi Yogyakarta', '370.15', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '782', '782/Dinarpusta/19', 'Jawara Olimpiade Matematika', 'Khoe Yao Tung', 'Andi Yogyakarta', '372.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '783', '783/Dinarpusta/19', 'Jawara Olimpiade Matematika', 'Khoe Yao Tung', 'Andi Yogyakarta', '372.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '784', '784/Dinarpusta/19', 'Desain Instruksional', 'Dr. Khoe Yao Tung, M. Sc. Ed., M. Ed', 'Andi Yogyakarta', '741.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '785', '785/Dinarpusta/19', 'Desain Instruksional', 'Dr. Khoe Yao Tung, M. Sc. Ed., M. Ed', 'Andi Yogyakarta', '741.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '786', '786/Dinarpusta/19', 'Metodologi Penelitian Bisnis', 'Prof. Dr. Ir. Sugiarto, M. Sc.', 'Andi Yogyakarta', '658.83', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '787', '787/Dinarpusta/19', 'Metodologi Penelitian Bisnis', 'Prof. Dr. Ir. Sugiarto, M. Sc.', 'Andi Yogyakarta', '658.83', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '788', '788/Dinarpusta/19', 'pengantar Ekonomi Mikro & Makro', 'Paulus Kuriawan', 'Andi Yogyakarta', '339.5', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '789', '789/Dinarpusta/19', 'pengantar Ekonomi Mikro & Makro', 'Paulus Kuriawan', 'Andi Yogyakarta', '339.5', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '790', '790/Dinarpusta/19', 'Panen untung dari AkuabisnisIkan Bobara', 'M. Ghufran H. Kordi K.', 'Andi Yogyakarta', '639.31', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '791', '791/Dinarpusta/19', 'Panen untung dari AkuabisnisIkan Bobara', 'M. Ghufran H. Kordi K.', 'Andi Yogyakarta', '639.31', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '792', '792/Dinarpusta/19', 'Manajemen Modern dengan SCRUM', 'Joshua Partogi', 'Andi Yogyakarta', '650', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '793', '793/Dinarpusta/19', 'Manajemen Modern dengan SCRUM', 'Joshua Partogi', 'Andi Yogyakarta', '650', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '794', '794/Dinarpusta/19', 'cara gila jadi Pengusaha makanan', 'nena Mutmainna', 'Andi Yogyakarta', '338.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '795', '795/Dinarpusta/19', 'cara gila jadi Pengusaha makanan', 'nena Mutmainna', 'Andi Yogyakarta', '338.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '796', '796/Dinarpusta/19', 'Capital Market TOP Secret', 'Cita Yustisia Serfiyani', 'Andi Yogyakarta', '346.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '797', '797/Dinarpusta/19', 'Buku Cerdas Asuransi', 'Dr. H. Budi Untung, S. H., M. M', 'Andi Yogyakarta', '368', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '798', '798/Dinarpusta/19', 'Akuntansi Biaya', 'Drs. Harnanto, M. Soc. Sc., Akuntan', 'Andi Yogyakarta', '657', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '799', '799/Dinarpusta/19', 'Penelitian Tindakan Kelas dengan metode Mutakhir', 'Dr. Agus Yuliantoro, M. Hum.', 'Andi Yogyakarta', '658.83', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '800', '800/Dinarpusta/19', 'Rumus-rumus Populer dengan SPSS 22 untuk Riset Skripsi', 'Jonathan Sarwono', 'Andi Yogyakarta', '021', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '801', '801/Dinarpusta/19', 'Rumus-rumus Populer dengan SPSS 22 untuk Riset Skripsi', 'Jonathan Sarwono', 'Andi Yogyakarta', '021', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '802', '802/Dinarpusta/19', 'Penelitian Tindakan Kelas dengan metode Mutakhir', 'Dr. Agus Yuliantoro, M. Hum.', 'Andi Yogyakarta', '658.83', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '803', '803/Dinarpusta/19', 'Think Twice Be A good Graet Leaders', 'Me- Chan', 'Andi Yogyakarta', '790.1', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '804', '804/Dinarpusta/19', 'Think Twice Be A good Graet Leaders', 'Me- Chan', 'Andi Yogyakarta', '790.1', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '805', '805/Dinarpusta/19', 'Keperawatan Kesehatan Komunitas', 'I Ketut Swarjana, S. K. M., M. P. H', 'Andi Yogyakarta', '610.73', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '806', '806/Dinarpusta/19', 'Keperawatan Kesehatan Komunitas', 'I Ketut Swarjana, S. K. M., M. P. H', 'Andi Yogyakarta', '610.73', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '807', '807/Dinarpusta/19', 'Tembus 100 juta sebulan go... Go... Go...', 'Eka Dharma Pranoto', 'Andi Yogyakarta', '346.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '808', '808/Dinarpusta/19', 'Teori Organisasi Edisi 4', 'Prof. Gudono, Ph. D., CMA., CA', 'Andi Yogyakarta', '060', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '809', '809/Dinarpusta/19', 'Kitab batu mulia', 'Feri Sulianta', 'Andi Yogyakarta', '346.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '810', '810/Dinarpusta/19', 'Kitab batu mulia', 'Feri Sulianta', 'Andi Yogyakarta', '346.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '811', '811/Dinarpusta/19', 'Tembus 100 juta sebulan go... Go... Go...', 'Eka Dharma Pranoto', 'Andi Yogyakarta', '346.04', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '812', '812/Dinarpusta/19', 'Budi Daya Ikan Konsumsi di Air tawar', 'M. Ghufran H. Kordi K.', 'Andi Yogyakarta', '639.31', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '813', '813/Dinarpusta/19', 'Budi Daya Ikan Konsumsi di Air tawar', 'M. Ghufran H. Kordi K.', 'Andi Yogyakarta', '639.31', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '814', '814/Dinarpusta/19', 'Kupas Tuntas Microsoft Excel 2016', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '815', '815/Dinarpusta/19', 'Kupas Tuntas Microsoft Excel 2016', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '816', '816/Dinarpusta/19', 'Kupas Tuntas Microsoft word 2016', 'M. Leo Agung', 'Andi Yogyakarta', '003.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '817', '817/Dinarpusta/19', 'Kupas Tuntas Microsoft word 2016', 'M. Leo Agung', 'Andi Yogyakarta', '003.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '818', '818/Dinarpusta/19', 'Panduan Lengkap Pemrograman Android', 'Zamrony P. Juhara', 'Andi Yogyakarta', '005.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '819', '819/Dinarpusta/19', 'Panduan Lengkap Pemrograman Android', 'Zamrony P. Juhara', 'Andi Yogyakarta', '005.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '820', '820/Dinarpusta/19', 'Metodologi Riset di Bidang TI', 'Dr. Sudaryono', 'Andi Yogyakarta', '005.13', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '821', '821/Dinarpusta/19', 'Metodologi Riset di Bidang TI', 'Dr. Sudaryono', 'Andi Yogyakarta', '005.13', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '822', '822/Dinarpusta/19', 'Soal & Penyelesaian Visual C++', 'R. H. Sianipar', 'Andi Yogyakarta', '004.121', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '823', '823/Dinarpusta/19', 'Soal & Penyelesaian Visual C++', 'R. H. Sianipar', 'Andi Yogyakarta', '004.121', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '824', '824/Dinarpusta/19', 'Soal & Penyelesaian Visual Basic', 'R. H. Sianipar', 'Andi Yogyakarta', '004.21', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '825', '825/Dinarpusta/19', 'Soal & Penyelesaian Visual Basic', 'R. H. Sianipar', 'Andi Yogyakarta', '004.21', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '826', '826/Dinarpusta/19', 'Asyik Berkreasi CorelDRAW', 'Eko Hadi Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '827', '827/Dinarpusta/19', 'Asyik Berkreasi CorelDRAW', 'Eko Hadi Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '828', '828/Dinarpusta/19', 'Struktur data C++ dengan Pemrograman Generik', 'Dr. Eng . R. H. Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '829', '829/Dinarpusta/19', 'Struktur data C++ dengan Pemrograman Generik', 'Dr. Eng . R. H. Sianipar', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0);
INSERT INTO `buku` (`tanggal_terima`, `id_buku`, `no_induk`, `judul_buku`, `pengarang`, `penerbit`, `no_kelas`, `eksamplar`, `jenis`, `keterangan`, `harga`) VALUES
('2018-11-28', '830', '830/Dinarpusta/19', 'Rumus & Fungsi Terapan pada Miccrosoft Excel', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '831', '831/Dinarpusta/19', 'Rumus & Fungsi Terapan pada Miccrosoft Excel', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '832', '832/Dinarpusta/19', 'Visual Effect Video Editing dengan After Effects CS6', 'Th. Arie Prabowo', 'Andi Yogyakarta', '006.636', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '833', '833/Dinarpusta/19', 'Visual Effect Video Editing dengan After Effects CS6', 'Th. Arie Prabowo', 'Andi Yogyakarta', '006.636', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '834', '834/Dinarpusta/19', 'Penerapan Visualisasi 3D dengan Autodesk Maya', 'Dhani Ariatmanto', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '835', '835/Dinarpusta/19', 'Penerapan Visualisasi 3D dengan Autodesk Maya', 'Dhani Ariatmanto', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '836', '836/Dinarpusta/19', 'Desain Grafis CorelDRAW X7', 'Maya', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '837', '837/Dinarpusta/19', 'Desain Grafis CorelDRAW X7', 'Maya', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '838', '838/Dinarpusta/19', 'Microsoft PowerPoint 2016 untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '839', '839/Dinarpusta/19', 'Microsoft PowerPoint 2016 untuk pemula', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '840', '840/Dinarpusta/19', 'You can Do It with Photoshop  imagination of art', 'M. Leo Agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '841', '841/Dinarpusta/19', 'You can Do It with Photoshop  imagination of art', 'M. Leo Agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '842', '842/Dinarpusta/19', 'Konsep Grafika Komputer', 'Pulung Nurtantio Andono, S. T., M. Kom.', 'Andi Yogyakarta', '006.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '843', '843/Dinarpusta/19', 'Konsep Grafika Komputer', 'Pulung Nurtantio Andono, S. T., M. Kom.', 'Andi Yogyakarta', '006.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '844', '844/Dinarpusta/19', 'Membongkar Misteri! Kekuatan Rumus dan Fungs Microsoft Excel', 'M. Leo Agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '845', '845/Dinarpusta/19', 'Membongkar Misteri! Kekuatan Rumus dan Fungs Microsoft Excel', 'M. Leo Agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '846', '846/Dinarpusta/19', 'Kupas Tuntas Adobe Photoshop CC', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '847', '847/Dinarpusta/19', 'Kupas Tuntas Adobe Photoshop CC', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '848', '848/Dinarpusta/19', 'Panduan Lengkap Membangun sendiri Sistem Jaringan Komputer', 'M. Leo Agung', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '849', '849/Dinarpusta/19', 'Panduan Lengkap Membangun sendiri Sistem Jaringan Komputer', 'M. Leo Agung', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '850', '850/Dinarpusta/19', 'Belajar sendiri mengenal mencegah membasmi virus komputer', 'M. Leo Agung', 'Andi Yogyakarta', '006.686', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '851', '851/Dinarpusta/19', 'Belajar sendiri mengenal mencegah membasmi virus komputer', 'M. Leo Agung', 'Andi Yogyakarta', '006.686', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '852', '852/Dinarpusta/19', 'Webmaster Series JavaScript', 'Ignas', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '853', '853/Dinarpusta/19', 'Webmaster Series JavaScript', 'Ignas', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '854', '854/Dinarpusta/19', 'Manajemen Sistem Jaringan Komputer dengan MikriTik Router0S', 'M. Leo Agung', 'Andi Yogyakarta', '004.068', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '855', '855/Dinarpusta/19', 'Manajemen Sistem Jaringan Komputer dengan MikriTik Router0S', 'M. Leo Agung', 'Andi Yogyakarta', '004.068', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '856', '856/Dinarpusta/19', 'Kumpulan Utility Dahsyat untuk OS Windows & jaringan Komputer', 'M. Leo Agung', 'Andi Yogyakarta', '004.65', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '857', '857/Dinarpusta/19', 'Kumpulan Utility Dahsyat untuk OS Windows & jaringan Komputer', 'M. Leo Agung', 'Andi Yogyakarta', '004.65', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '858', '858/Dinarpusta/19', 'PHP & MySqL ', 'Dr. Eng . R. H. Sianipar', 'Andi Yogyakarta', '005.74', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '859', '859/Dinarpusta/19', 'Optimasi SEO', 'Feri Sulianta', 'Andi Yogyakarta', '005.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '860', '860/Dinarpusta/19', 'Optimasi SEO', 'Feri Sulianta', 'Andi Yogyakarta', '005.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '861', '861/Dinarpusta/19', 'Rahasia Berbisnis Ala sosial media', 'Feri Sulianta', 'Andi Yogyakarta', '004.692', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '862', '862/Dinarpusta/19', 'Rahasia Berbisnis Ala sosial media', 'Feri Sulianta', 'Andi Yogyakarta', '004.692', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '863', '863/Dinarpusta/19', 'Pemrograman sensor Smartphone Android dalam Eksperimen Fisika', 'Jazi Eko Istiyanto', 'Andi Yogyakarta', '005.265', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '864', '864/Dinarpusta/19', 'Pemrograman sensor Smartphone Android dalam Eksperimen Fisika', 'Jazi Eko Istiyanto', 'Andi Yogyakarta', '005.265', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '865', '865/Dinarpusta/19', 'Trik membuat Software BOT Visual Basic.net', 'Ir. Hartoto', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '866', '866/Dinarpusta/19', 'Trik membuat Software BOT Visual Basic.net', 'Ir. Hartoto', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '867', '867/Dinarpusta/19', 'Visual C# 2013', 'Th. Arie Prabowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '868', '868/Dinarpusta/19', 'Visual C# 2013', 'Th. Arie Prabowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '869', '869/Dinarpusta/19', 'pengolahan citra digital', 'Pulung Nurtantio Andono, S. T., M. Kom.', 'Andi Yogyakarta', '006.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '870', '870/Dinarpusta/19', 'pengolahan citra digital', 'Pulung Nurtantio Andono, S. T., M. Kom.', 'Andi Yogyakarta', '006.6', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '871', '871/Dinarpusta/19', 'Microsoft Excel 2016', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '872', '872/Dinarpusta/19', 'Microsoft Excel 2016', 'M. Leo Agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '873', '873/Dinarpusta/19', 'Mengolah Database& Pivot dengan MS. Excel', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '874', '874/Dinarpusta/19', 'Mengolah Database& Pivot dengan MS. Excel', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '875', '875/Dinarpusta/19', 'Ragam Desain Poster dan Iklan dengan CorelDRAW dan Photoshop', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '876', '876/Dinarpusta/19', 'Ragam Desain Poster dan Iklan dengan CorelDRAW dan Photoshop', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '877', '877/Dinarpusta/19', 'Sukses membangun Toko Online dengan PHP & MySQL', 'M. Leo Agung', 'Andi Yogyakarta', '005.74', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '878', '878/Dinarpusta/19', 'Sukses membangun Toko Online dengan PHP & MySQL', 'M. Leo Agung', 'Andi Yogyakarta', '005.74', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '879', '879/Dinarpusta/19', 'Responsive Web Design with Bootstrap', 'Ignas', 'Andi Yogyakarta', '006.686', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '880', '880/Dinarpusta/19', 'Responsive Web Design with Bootstrap', 'Ignas', 'Andi Yogyakarta', '006.686', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '881', '881/Dinarpusta/19', 'Tip & Trik Tingkatkan Kinerja dan performa komputer', 'M. Leo Agung', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '882', '882/Dinarpusta/19', 'Tip & Trik Tingkatkan Kinerja dan performa komputer', 'M. Leo Agung', 'Andi Yogyakarta', '004.695', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '883', '883/Dinarpusta/19', 'Pemrograman Database menggunakan MySQL', 'Dr. Eng . R. H. Sianipar', 'Andi Yogyakarta', '005.74', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '884', '884/Dinarpusta/19', 'Pemrograman Database menggunakan MySQL', 'Dr. Eng . R. H. Sianipar', 'Andi Yogyakarta', '005.74', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '885', '885/Dinarpusta/19', 'Membuat Presentasi Interaktif Powerpoint 2013', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '886', '886/Dinarpusta/19', 'Membuat Presentasi Interaktif Powerpoint 2013', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '887', '887/Dinarpusta/19', 'Microsoft Word untuk Administrasi Perkantoran Modern', 'M. Leo Agung', 'Andi Yogyakarta', '005.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '888', '888/Dinarpusta/19', 'Microsoft Word untuk Administrasi Perkantoran Modern', 'M. Leo Agung', 'Andi Yogyakarta', '005.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '889', '889/Dinarpusta/19', 'Memaksimalkan Rumus & Fungsi Microsoft Access 2013', 'M. Leo Agung', 'Andi Yogyakarta', '005.265', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '890', '890/Dinarpusta/19', 'Memaksimalkan Rumus & Fungsi Microsoft Access 2013', 'M. Leo Agung', 'Andi Yogyakarta', '005.265', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '891', '891/Dinarpusta/19', 'Mengolah data Citra Satelit Menggunakan ENVI', 'Giovanny', 'Andi Yogyakarta', '004.68', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '892', '892/Dinarpusta/19', 'Mengolah data Citra Satelit Menggunakan ENVI', 'Giovanny', 'Andi Yogyakarta', '004.68', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '893', '893/Dinarpusta/19', 'Asuransi Syariah', 'Waldi Nopriansyah', 'Andi Yogyakarta', '368', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '894', '894/Dinarpusta/19', 'Asuransi Syariah', 'Waldi Nopriansyah', 'Andi Yogyakarta', '368', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '895', '895/Dinarpusta/19', 'Buku Pintar Transfer Pricing untuk kepentingan pajak', 'Anang Mury Kurniawan', 'Andi Yogyakarta', '657.46', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '896', '896/Dinarpusta/19', 'Buku Pintar Transfer Pricing untuk kepentingan pajak', 'Anang Mury Kurniawan', 'Andi Yogyakarta', '657.46', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '897', '897/Dinarpusta/19', 'Kreasi digital dengan Photoshop untuk pemula, Creative Manipulation Art', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '898', '898/Dinarpusta/19', 'Kreasi digital dengan Photoshop untuk pemula, Creative Manipulation Art', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '899', '899/Dinarpusta/19', 'Microsoft Windows 8.1', 'M. Leo Agung', 'Andi Yogyakarta', '004', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '900', '900/Dinarpusta/19', 'Microsoft Windows 8.1', 'M. Leo Agung', 'Andi Yogyakarta', '004', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '901', '901/Dinarpusta/19', 'Langsung Praktik Komputerisasi Akuntansi dengan MYOB', 'Maya', 'Andi Yogyakarta', '005.7', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '902', '902/Dinarpusta/19', 'Langsung Praktik Komputerisasi Akuntansi dengan MYOB', 'Maya', 'Andi Yogyakarta', '005.7', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '903', '903/Dinarpusta/19', 'CorelDRAW X7', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '904', '904/Dinarpusta/19', 'corelDRAW X7', 'M. Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '905', '905/Dinarpusta/19', 'Pancasila dalam makna dan aktualisasi', 'Prof. Dr. Ngadino Surip, M. S', 'Andi Yogyakarta', '370.114', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '906', '906/Dinarpusta/19', 'Pancasila dalam makna dan aktualisasi', 'Prof. Dr. Ngadino Surip, M. S', 'Andi Yogyakarta', '370.114', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '907', '907/Dinarpusta/19', 'Pancasila dalam makna dan aktualisasi', 'Prof. Dr. Ngadino Surip, M. S', 'Andi Yogyakarta', '370.114', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '908', '908/Dinarpusta/19', 'Merancang desain Rumah ArchiCAD & 3ds Max', 'Anditya, ST', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '909', '909/Dinarpusta/19', 'Merancang desain Rumah ArchiCAD & 3ds Max', 'Anditya, ST', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '910', '910/Dinarpusta/19', 'Rahasia dan Trik IT paling Top menjadi IT Expert dengan sekejap', 'Feri Sulianta', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '911', '911/Dinarpusta/19', 'Rahasia dan Trik IT paling Top menjadi IT Expert dengan sekejap', 'Feri Sulianta', 'Andi Yogyakarta', '005.268', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '912', '912/Dinarpusta/19', 'Microsoft Office 2013', 'Mathius Tomy Suryadi', 'Andi Yogyakarta', '004.21', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '913', '913/Dinarpusta/19', 'Microsoft Office 2013', 'Mathius Tomy Suryadi', 'Andi Yogyakarta', '004.21', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '914', '914/Dinarpusta/19', 'Menata Kota melalui Rencana Detail Tata Ruang', 'M. Arszandi Pratama', 'Andi Yogyakarta', '711.4', 2, 'F', 'APBD 2019', 0),
('2018-11-28', '915', '915/Dinarpusta/19', 'Menata Kota melalui Rencana Detail Tata Ruang', 'M. Arszandi Pratama', 'Andi Yogyakarta', '711.4', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '916', '916/Dinarpusta/19', 'Membuat Toko Online Hanya Dalam 1 Jam Dengan Wordpress', 'Ahya Udin', 'Andi Yogyakarta', '004.695', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '917', '917/Dinarpusta/19', 'Membuat Toko Online Hanya Dalam 1 Jam Dengan Wordpress', 'Ahya Udin', 'Andi Yogyakarta', '004.695', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '918', '918/Dinarpusta/19', 'Melumpuhkan Hacker dengan Web Application Firewall( WAF)', 'Girindro Pringgo Digdo', 'Andi Yogyakarta', '005.84', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '919', '919/Dinarpusta/19', 'Melumpuhkan Hacker dengan Web Application Firewall( WAF)', 'Girindro Pringgo Digdo', 'Andi Yogyakarta', '005.84', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '920', '920/Dinarpusta/19', 'Local Hacking', 'Th. Arie Probawati', 'Andi Yogyakarta', '005.109', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '921', '921/Dinarpusta/19', 'Local Hacking', 'Th. Arie Probawati', 'Andi Yogyakarta', '005.109', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '922', '922/Dinarpusta/19', 'Mahir membuat website dengan Adobe Dreamweaver CS6, CSS dan Jquery', 'Humaira\' Bintu Bekti', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '923', '923/Dinarpusta/19', 'Mahir membuat website dengan Adobe Dreamweaver CS6, CSS dan Jquery', 'Humaira\' Bintu Bekti', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '924', '924/Dinarpusta/19', 'Kamus Lengkap Formula & Fungsi Excel', 'Giovanny', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '925', '925/Dinarpusta/19', 'Kamus Lengkap Formula & Fungsi Excel', 'Giovanny', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '926', '926/Dinarpusta/19', 'Panduan Praktis PHP & My SQL untuk Profesional', 'Dr. En R. H. Sianipar', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '927', '927/Dinarpusta/19', 'Panduan Praktis PHP & My SQL untuk Profesional', 'Dr. En R. H. Sianipar', 'Andi Yogyakarta', '005.74', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '928', '928/Dinarpusta/19', 'Microsoft Word 2013 untuk sekretaris perkantoran modern', 'Maya', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '929', '929/Dinarpusta/19', 'Microsoft Word 2013 untuk sekretaris perkantoran modern', 'Maya', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '930', '930/Dinarpusta/19', 'Jago bikin aplikasi SmartPhone', 'Anditya, S. T', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '931', '931/Dinarpusta/19', 'Jago bikin aplikasi SmartPhone', 'Anditya, S. T', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '932', '932/Dinarpusta/19', 'Cepat mudah belajar sendiri Microsoft powerPoint 2013', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '933', '933/Dinarpusta/19', 'Cepat mudah belajar sendiri Microsoft powerPoint 2013', 'M. Leo Agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '934', '934/Dinarpusta/19', 'Desain Logo dengan Adobe Illustrator & Photoshop CS6', 'Ignas', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '935', '935/Dinarpusta/19', 'Desain Logo dengan Adobe Illustrator & Photoshop CS6', 'Ignas', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '936', '936/Dinarpusta/19', 'Membuat Game 2 dimensi dengan Game maker studio', 'P. Seno Wibowo', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '937', '937/Dinarpusta/19', 'Membuat Game 2 dimensi dengan Game maker studio', 'P. Seno Wibowo', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '938', '938/Dinarpusta/19', 'Coreldraw X8 untuk pemula ', 'M.Leo agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '939', '939/Dinarpusta/19', 'Coreldraw X8 untuk pemula ', 'M.Leo agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '940', '940/Dinarpusta/19', 'Membangun sistem informasi dengan Java Netbeans dan MySQL', 'Maya', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '941', '941/Dinarpusta/19', 'Membangun sistem informasi dengan Java Netbeans dan MySQL', 'Maya', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '942', '942/Dinarpusta/19', 'Panduan Lengkap Belajar CorelDRAWX8', 'M.Leo agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '943', '943/Dinarpusta/19', 'Panduan Lengkap Belajar CorelDRAWX8', 'M.Leo agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '944', '944/Dinarpusta/19', '100 Tip & Trik Microsoft ACCESS 2013', 'M.Leo agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '945', '945/Dinarpusta/19', '100 Tip & Trik Microsoft ACCESS 2013', 'M.Leo agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '946', '946/Dinarpusta/19', 'Panduan Praktis Olah Data Menggunakan SPSS ', 'Ratih Indah Utami ', 'Andi Yogyakarta', '005.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '947', '947/Dinarpusta/19', 'Panduan Praktis Olah Data Menggunakan SPSS ', 'Ratih Indah Utami ', 'Andi Yogyakarta', '005.7', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '948', '948/Dinarpusta/19', 'Google SketchUp ', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '949', '949/Dinarpusta/19', 'Google SketchUp ', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '950', '950/Dinarpusta/19', 'Kreasi karakter Cute Teen dengan CorelDRAW', 'Maya', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '951', '951/Dinarpusta/19', 'Kreasi karakter Cute Teen dengan CorelDRAW', 'Maya', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '952', '952/Dinarpusta/19', 'Pemodelan Objek dengan 3ds Max 2014', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '953', '953/Dinarpusta/19', 'Pemodelan Objek dengan 3ds Max 2014', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '954', '954/Dinarpusta/19', 'PASTI BISA !! Belajar sendiri Microsoft Windows 8.1', 'Leo Agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '955', '955/Dinarpusta/19', 'PASTI BISA !! Belajar sendiri Microsoft Windows 8.1', 'Leo Agung', 'Andi Yogyakarta', '004.21', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '956', '956/Dinarpusta/19', 'Teknik Rahasia Microsoft Excel untuk semua versi', 'Matius Tomy Suryadi', 'Andi Yogyakarta', '004', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '957', '957/Dinarpusta/19', 'Teknik Rahasia Microsoft Excel untuk semua versi', 'Matius Tomy Suryadi', 'Andi Yogyakarta', '004', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '958', '958/Dinarpusta/19', 'Statistika Inferensi untuk penelitian dengan minitab', 'Maya', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '959', '959/Dinarpusta/19', 'Statistika Inferensi untuk penelitian dengan minitab', 'Maya', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '960', '960/Dinarpusta/19', 'ILMU NEGARA', 'Arie Pramesta', 'Andi Yogyakarta', '320.01', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '961', '961/Dinarpusta/19', 'ILMU NEGARA', 'Arie Pramesta', 'Andi Yogyakarta', '320.01', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '962', '962/Dinarpusta/19', 'Belajar cepat analisis statistik parametrik dan Non parametrik dengan SPSS', 'Maya', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '963', '963/Dinarpusta/19', 'Belajar cepat analisis statistik parametrik dan Non parametrik dengan SPSS', 'Maya', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '964', '964/Dinarpusta/19', 'Menjaga Kedaulatan Air', 'Danny ', 'Andi Yogyakarta', '551.48', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '965', '965/Dinarpusta/19', 'Menjaga Kedaulatan Air', 'Danny ', 'Andi Yogyakarta', '551.48', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '966', '966/Dinarpusta/19', 'Membangun Aplikasi online shop dengan GODEIGNITER untuk pemula', 'Cahya Dyazin', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '967', '967/Dinarpusta/19', 'Membangun Aplikasi online shop dengan GODEIGNITER untuk pemula', 'Cahya Dyazin', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '968', '968/Dinarpusta/19', 'Zend Framework 2.x   ', 'Edison Siregar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '969', '969/Dinarpusta/19', 'Zend Framework 2.x   ', 'Edison Siregar', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '970', '970/Dinarpusta/19', 'AutoCAD LT 2013', 'Yon F Huda, M. Eng', 'Andi Yogyakarta', '006.66', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '971', '971/Dinarpusta/19', 'AutoCAD LT 2013', 'Yon F Huda, M. Eng', 'Andi Yogyakarta', '006.66', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '972', '972/Dinarpusta/19', 'Pesona Wallpaper dengan Adobe Photoshop ', 'Ghina Fajar Shidiq', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '973', '973/Dinarpusta/19', 'Pesona Wallpaper dengan Adobe Photoshop ', 'Ghina Fajar Shidiq', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '974', '974/Dinarpusta/19', 'Kupas Tuntas Microsoft Windows 10', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '975', '975/Dinarpusta/19', 'Kupas Tuntas Microsoft Windows 10', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '976', '976/Dinarpusta/19', 'Kupas Tuntas CorelDRAW X7 ', 'Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '977', '977/Dinarpusta/19', 'Kupas Tuntas CorelDRAW X7 ', 'Leo Agung', 'Andi Yogyakarta', '006.66', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '978', '978/Dinarpusta/19', 'Kupas Tuntas Microsoft ACCESS 2016', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '979', '979/Dinarpusta/19', 'Kupas Tuntas Microsoft ACCESS 2016', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '980', '980/Dinarpusta/19', 'Membuat Desain Komponen Mekanis 2D & 3D SOLIDWORKS', 'Aditya, S.T.', 'Andi Yogyakarta', '006.6', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '981', '981/Dinarpusta/19', 'Membuat Desain Komponen Mekanis 2D & 3D SOLIDWORKS', 'Aditya, S.T.', 'Andi Yogyakarta', '006.6', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '982', '982/Dinarpusta/19', 'Panduan Belajar CorelDRAW X7', 'M.Leo Agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '983', '983/Dinarpusta/19', 'Panduan Belajar CorelDRAW X7', 'M.Leo Agung', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '984', '984/Dinarpusta/19', 'Membuat Aplikasi Kratif dengan visual Basic . NET 2013', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '985', '985/Dinarpusta/19', 'Membuat Aplikasi Kratif dengan visual Basic . NET 2013', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '986', '986/Dinarpusta/19', 'FlashBook Tips dan Trik + 21 project flash', 'Eko Hadi Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '987', '987/Dinarpusta/19', 'FlashBook Tips dan Trik + 21 project flash', 'Eko Hadi Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '988', '988/Dinarpusta/19', 'Adobe Audition CS6', 'Maya', 'Andi Yogyakarta', '006.66', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '989', '989/Dinarpusta/19', 'Adobe Audition CS6', 'Maya', 'Andi Yogyakarta', '006.66', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '990', '990/Dinarpusta/19', 'Toko Online Multiuser dengan Wordpress', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '991', '991/Dinarpusta/19', 'Toko Online Multiuser dengan Wordpress', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '992', '992/Dinarpusta/19', 'Rahasia Formula dan Fungsi Excel untuk Bisnis ', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '993', '993/Dinarpusta/19', 'Rahasia Formula dan Fungsi Excel untuk Bisnis ', 'P. Seno Wibowo', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '994', '994/Dinarpusta/19', 'Membangun Sistem Jaringan Komputer untuk pemula ', 'M.Leo agung', 'Andi Yogyakarta', '004.65', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '995', '995/Dinarpusta/19', 'Membangun Sistem Jaringan Komputer untuk pemula ', 'M.Leo agung', 'Andi Yogyakarta', '004.65', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '996', '996/Dinarpusta/19', 'Menggambar peta dengan ArcGIS 10.1 Tutorial ArcGIS 10.1 untuk pemula', 'Wahyu Falah,M.SI', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '997', '997/Dinarpusta/19', 'Menggambar peta dengan ArcGIS 10.1 Tutorial ArcGIS 10.1 untuk pemula', 'Wahyu Falah,M.SI', 'Andi Yogyakarta', '005.268', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '998', '998/Dinarpusta/19', 'Microsoft Excel 2016', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0),
('2018-11-28', '999', '999/Dinarpusta/19', 'Microsoft Excel 2016', 'M.Leo agung', 'Andi Yogyakarta', '004.3', 2, 'F', 'BANTUAN PERPUSNAS 2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id` int(11) NOT NULL,
  `nama_departemen` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id`, `nama_departemen`, `gambar`) VALUES
(1, 'Perpustakaan', '1733501620_675322b480739.jpeg'),
(2, 'Kearsipan', '1733501635_675322c3a0970.jpeg'),
(3, 'Sekertariat', '1733501683_675322f3ee837.png');

-- --------------------------------------------------------

--
-- Table structure for table `informasi_pelayanan`
--

CREATE TABLE `informasi_pelayanan` (
  `id` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `lantai` int(11) NOT NULL,
  `jam_operasional` text NOT NULL,
  `jam_tambahan` text DEFAULT NULL,
  `tutup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `informasi_pelayanan`
--

INSERT INTO `informasi_pelayanan` (`id`, `id_departemen`, `alamat`, `lantai`, `jam_operasional`, `jam_tambahan`, `tutup`) VALUES
(1, 1, 'Jln. Cikini Raya No. 73, Jakarta Pusat', 1, 'Senin-Jumat: 09:00-17:00,\r\nSabtu-Minggu: 09:00-20:00', 'Sabtu-Minggu: 09:00-20:00', 'Hari Libur Nasional'),
(2, 2, 'Jln. Cikini Raya No. 73, Jakarta Pusat', 2, 'Senin-Jumat: 08:00-16:00,\r\nSabtu-Minggu: 09:00-20:00', 'Sabtu-Minggu: 09:00-20:00', 'Hari Libur Nasional');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pegawai`
--

CREATE TABLE `jadwal_pegawai` (
  `id` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu','Minggu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_pegawai`
--

INSERT INTO `jadwal_pegawai` (`id`, `id_pegawai`, `hari`) VALUES
(1, 1, 'Senin'),
(2, 2, 'Selasa'),
(3, 1, 'Rabu'),
(4, 2, 'Kamis'),
(5, 3, 'Senin'),
(6, 4, 'Selasa'),
(7, 3, 'Rabu'),
(8, 4, 'Kamis'),
(9, 3, 'Jumat'),
(10, 4, 'Sabtu'),
(11, 3, 'Minggu'),
(12, 5, 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `id_departemen`, `judul`, `deskripsi`, `gambar`, `penulis`, `tanggal`) VALUES
(1, 1, 'MERICA: Membaca Buku Bermain Kriya bersama Duta Baca Warnai Hari Anak di SLB Negeri 7', '<p>Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.Jakarta, 6 November 2024 – Perpustakaan Jakarta Utara menggelar acara MERICA dengan antusiasme anak-anak SLB.<br></p>', '1733511394_WhatsApp Image 2024-12-06 at 10.42.33.jpeg', 'Thian Wisnu Isnanto', '2024-11-06'),
(2, 1, 'Pelatihan Preservasi dan Konservasi Koleksi Sastra: Mengenali Serangga', '<p>Jakarta—Selama hampir dua pekan, Unit Pengelola Perpustakaan Jakarta mengadakan pelatihan tentang konservasi koleksi sastra.</p>', '1733512018_WhatsApp Image 2024-12-06 at 10.42.33 (1).jpeg', 'Thian Wisnu Isnanto', '2024-10-30'),
(4, 1, 'Peluncuran Buku Baru di Perpustakaan Jakarta', 'Perpustakaan Jakarta meluncurkan buku baru untuk masyarakat sebagai bentuk apresiasi terhadap karya lokal.', 'siswamembaca.jpg', 'Alex Rahardjo', '2024-08-15'),
(8, 1, 'Kegiatan Kreasi Aksi Rekreasi Dongeng Keliling (KAREDOK) di SLB Negeri 9 Jakarta', 'Jakarta, 19 September 2024 – Kegiatan KAREDOK mengajak anak-anak berinteraksi dengan dongeng kreatif.', '1733512147_task.png', 'Thian Wisnu Isnanto', '2024-09-19'),
(10, 1, 'Workshop Literasi Digital untuk Generasi Muda', 'Kegiatan literasi digital diadakan untuk memberikan pengetahuan kepada generasi muda tentang pentingnya etika berinternet.', 'jumbotron-bg.jpg', 'Nadia Putri', '2024-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `id_departemen`, `nama_layanan`, `deskripsi`, `gambar`) VALUES
(1, 1, 'Layanan Peminjaman Buku ', '<p style=\"text-align: justify;\" class=\"\">       Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.</p><p style=\"text-align: justify;\" class=\"\">       Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.Melayani peminjaman dan pengembalian buku.</p>', '1733504896_67532f8094765.jpeg'),
(2, 2, 'Layanan Referensi', '<p>Menyediakan referensi buku untuk keperluan akademik.</p>', '1733504957_67532fbd5146a.jpeg'),
(3, 2, 'Layanan Kearsipan', '<p>Menyediakan akses terhadap arsip fisik dan digital.</p>', '1733505012_67532ff4e220d.jpg'),
(4, 1, 'coba layanan', '<p>ini adalah tulisan saja</p>', '1733505045_6753301556366.jpg'),
(7, 1, 'coba 3', '<p>coba 3</p>', '1733505465_675331b913832.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `log_pinjam`
--

CREATE TABLE `log_pinjam` (
  `id_log` int(11) NOT NULL,
  `id_buku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `tgl_pinjam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_pinjam`
--

INSERT INTO `log_pinjam` (`id_log`, `id_buku`, `id_anggota`, `tgl_pinjam`) VALUES
(10, '001/Dinarpusta/19', 'A001', '2024-11-30'),
(11, '022/Dinarpusta/19', 'A001', '2024-11-30'),
(12, '023/Dinarpusta/19', 'A001', '2024-11-30'),
(13, '001/Dinarpusta/19', 'A002', '2024-11-30'),
(14, '003/Dinarpusta/19', 'A002', '2024-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `id_bidang` int(11) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `kontak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `id_bidang`, `nama_pegawai`, `kontak`) VALUES
(1, 1, 'Andi', '08123456789'),
(2, 1, 'Budi', '08123456780'),
(3, 2, 'Citra', '08123456781'),
(4, 2, 'Dina', '08123456782'),
(5, 1, 'Kurnia Bekayo', '081237788789');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `NIK` char(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `asal_instansi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`NIK`, `nama`, `jenis_kelamin`, `no_hp`, `alamat`, `pekerjaan`, `asal_instansi`) VALUES
('1234567890123456', 'John Doe', 'Laki-laki', '081234567890', 'Jl. Contoh No.1, Jakarta', 'Mahasiswa', 'Universitas Contoh'),
('531303250303001', 'Yoseph Kurubingan Bekayo', 'Laki-laki', '081237788789', 'muruona', 'Pelajar/Mahasiswa', 'Universitas Nusa Cendana');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung_buku`
--

CREATE TABLE `pengunjung_buku` (
  `id` int(11) NOT NULL,
  `pengunjung_NIK` char(16) NOT NULL,
  `id_buku` varchar(50) NOT NULL,
  `tanggal_baca` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aboutus`
--

CREATE TABLE `tbl_aboutus` (
  `id_aboutus` int(5) NOT NULL,
  `title_aboutus` varchar(25) NOT NULL,
  `detail_aboutus` text NOT NULL,
  `pict_aboutus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_aboutus`
--

INSERT INTO `tbl_aboutus` (`id_aboutus`, `title_aboutus`, `detail_aboutus`, `pict_aboutus`) VALUES
(1, 'Profil', '<h2 style=\"text-align: justify;\"><b>Profil Dinas Kearsipan Dan Perpustakaan Kota Kupang</b></h2><p style=\"text-align: justify;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic fugit reiciendis, iste cupiditate quibusdam illo tempora excepturi itaque natus, magnam explicabo cumque suscipit repudiandae ipsa ab? Voluptate cum odit doloremque.Jakarta kota maju, lestari dan berbudaya yang warganya terlibat dalam mewujudkan keberadaban, keadilan dan kesejahteraan bagi semua.</p><p style=\"text-align: justify; \">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic fugit reiciendis, iste cupiditate quibusdam illo tempora excepturi itaque natus, magnam explicabo cumque suscipit repudiandae ipsa ab? Voluptate cum odit doloremque.Jakarta kota maju, lestari dan berbudaya yang warganya terlibat dalam mewujudkan keberadaban, keadilan dan kesejahteraan bagi semua.</p>', '67533ade36906.jpg'),
(23, 'visi dan misi', '<h2 style=\"text-align: justify; \"><b>Visi & Misi</b></h2><p style=\"text-align: justify;\"><b>visi</b></p><ol><li style=\"text-align: justify; \">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo, ipsam suscipit est magnam non fuga, eum totam neque quam dolore obcaecati accusamus esse mollitia, nisi sunt? Officia, assumenda soluta rem doloribus molestias quis at sequi libero, deleniti voluptas qui ullam ipsa! Repellendus eligendi dolores nostrum, explicabo aliquam distinctio. Maxime, voluptatibus?</li><li style=\"text-align: justify;\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo, ipsam suscipit est magnam non fuga, eum totam neque quam dolore obcaecati accusamus esse mollitia, nisi sunt? Officia, assumenda soluta rem doloribus molestias quis at sequi libero, deleniti voluptas qui ullam ipsa! Repellendus eligendi dolores nostrum, explicabo aliquam distinctio. Maxime, voluptatibus?</li><li style=\"text-align: justify;\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo, ipsam suscipit est magnam non fuga, eum totam neque quam dolore obcaecati accusamus esse mollitia, nisi sunt? Officia, assumenda soluta rem doloribus molestias quis at sequi libero, deleniti voluptas qui ullam ipsa! Repellendus eligendi dolores nostrum, explicabo aliquam distinctio. Maxime, voluptatibus?</li></ol><p style=\"text-align: justify;\"><b>Misi</b></p><ol><li style=\"text-align: justify;\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo, ipsam suscipit est magnam non fuga, eum totam neque quam dolore obcaecati accusamus esse mollitia, nisi sunt? Officia, assumenda soluta rem doloribus molestias quis at sequi libero, deleniti voluptas qui ullam ipsa! Repellendus eligendi dolores nostrum, explicabo aliquam distinctio. Maxime, voluptatibus?</li><li style=\"text-align: justify;\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo, ipsam suscipit est magnam non fuga, eum totam neque quam dolore obcaecati accusamus esse mollitia, nisi sunt? Officia, assumenda soluta rem doloribus molestias quis at sequi libero, deleniti voluptas qui ullam ipsa! Repellendus eligendi dolores nostrum, explicabo aliquam distinctio. Maxime, voluptatibus?</li><li style=\"text-align: justify;\">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo, ipsam suscipit est magnam non fuga, eum totam neque quam dolore obcaecati accusamus esse mollitia, nisi sunt? Officia, assumenda soluta rem doloribus molestias quis at sequi libero, deleniti voluptas qui ullam ipsa! Repellendus eligendi dolores nostrum, explicabo aliquam distinctio. Maxime, voluptatibus?</li></ol>', '675527b92763f.jpeg'),
(24, 'Struktur organisasi', '<h2 style=\"text-align: justify; \"><b>Struktur organisasi</b></h2><p style=\"text-align: justify; \">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quo, ipsam suscipit est magnam non fuga, eum totam neque quam dolore obcaecati accusamus esse mollitia, nisi sunt? Officia, assumenda soluta rem doloribus molestias quis at sequi libero, deleniti voluptas qui ullam ipsa! Repellendus eligendi dolores nostrum, explicabo aliquam distinctio. Maxime, voluptatibus?</p><p></p>', '675527d61baee.jpg'),
(25, 'Sejarah', '<h2><b>Sejarah Dinas Kearsipan Dan Perpustakaan Kota Kupang</b></h2><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.</p><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tenetur adipisci facilis cupiditate recusandae aperiam temporibus corporis itaque quis facere, numquam, ad culpa deserunt sint dolorem autem obcaecati, ipsam mollitia hic.<br></p>', '675527f9147b4.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `id_inbox` int(5) NOT NULL,
  `date_receive_inbox` datetime DEFAULT NULL,
  `name_inbox` varchar(40) NOT NULL,
  `email_inbox` varchar(25) NOT NULL,
  `subject_inbox` text NOT NULL,
  `message_inbox` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`id_inbox`, `date_receive_inbox`, `name_inbox`, `email_inbox`, `subject_inbox`, `message_inbox`) VALUES
(3, '2018-07-17 23:21:15', 'Sura saputra', 'saputra@yahoo.com', 'Request Proposal Kerjasama\r\n', 'Dear Indahnya Berbagi,\r\n\r\nsaya tertarik dengan visi dan misi anda, apakah bisa dijadwalkan untuk meeting terkait kerjasama perusahaan kita ?\r\n\r\n\r\n\r\nTerima Kasih\r\nSura saputra\r\n'),
(14, '2018-07-17 06:26:09', 'Hafsah', 'Hafsah@yahoo.com', 'Haloooo...', 'Hai, Ini adalah testing pesan melalui front end website ! Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !Hai, Ini adalah testing pesan melalui front end website !'),
(15, '2018-07-17 23:22:37', 'Hafizah', 'hafizah@yahoo.com', 'Penawaran Kerjasama', 'Dear Indahnya Berbagi,\r\n\r\nBerdasarkan dengan proposal yang sudah kami terima, dengan ini kami menyatakan setuju atas penawaran kerjasama dengan perusahaan anda.\r\n\r\nTerima Kasih\r\nHafizah'),
(16, '2018-07-23 06:16:18', 'lurah', 'lurah@yahoo.com', 'haloo', 'saya tertarik dengan proposal anda !!'),
(17, '2019-01-06 08:07:12', 'Firandina', 'firandina@yahoo.com', 'Congratulation', 'Dear Indahnya Berbagi,\r\n\r\nSelamat atas launching website resminya,\r\nsemoga bermanfaat dan sukses selalu\r\n\r\nterima kasih\r\nFirandina');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE `tbl_profile` (
  `id_profile` int(11) NOT NULL,
  `titlewebsite` varchar(255) NOT NULL,
  `titleparagraf` text NOT NULL,
  `welcomeparagraf` text NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `gmap` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telepon` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `x` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`id_profile`, `titlewebsite`, `titleparagraf`, `welcomeparagraf`, `copyright`, `description`, `keywords`, `gambar`, `logo`, `alamat`, `gmap`, `email`, `telepon`, `facebook`, `instagram`, `x`, `youtube`) VALUES
(1, 'Arspus Kupang', 'Dinas Kearsipan dan Perpustakaan Kota Kupang', 'Selamat datang di website resmi', 'Dinas Kearsipan dan Perpustakaan Kota Kupang', 'Website resmi Dinas Kearsipan dan Perpustakaan Kota Kupang yang menyediakan informasi dan layanan terkait arsip dan perpustakaan.', 'Araspus, Dinas Kearsipan, Perpustakaan, Kota Kupang, layanan arsip, perpustakaan daerah', 'gedungdinas.jpg', 'LOGO_KOTA_KUPANG.svg', 'Jl. Contoh Alamat No.123, Kota Kupang', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d17633.07544808062!2d123.6012467272646!3d-10.15453270581283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c569de836b48afd%3A0x14faa4d8e96d8525!2sDinas%20Kearsipan%20Dan%20Perpustakaan%20Kota%20Kupang!5e0!3m2!1sid!2sid!4v1733043704810!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'info@dinaskearsipdanperpustaakaankotakupang.go.id', '0380-1234567', 'https://www.facebook.com/dinaskearsipdanperpustaakaankotakupang', 'https://www.instagram.com/perpustakaan_kotakupang', 'https://www.x.com/dinaskearsipdanperpustaakaankotakupang', 'https://www.youtube.com/dinaskearsipdanperpustaakaankotakupang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `id_anggota` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jekel` enum('Laki-laki','Perempuan') NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama`, `jekel`, `kelas`, `no_hp`) VALUES
('A001', 'Kurnia Bekayo1', 'Laki-laki', 'mahasiswa', '081237788789'),
('A002', 'asis mbtl', 'Perempuan', '6', '081218594732');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `NIP` varchar(18) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `posisi` varchar(50) DEFAULT NULL,
  `id_bidang` int(11) NOT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `gambar_sk` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`NIP`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `no_telepon`, `email`, `posisi`, `id_bidang`, `tanggal_masuk`, `gambar_sk`) VALUES
('11111111111111', 'Arnoldus Pelira', 'L', '2003-02-04', 'Rt.007 Rw.004, Desa Muruona kecamatan Ile Ape.', '081237788789', 'kurniafacebook25@gmail.com', 'sekertaris', 1, '2020-02-03', 'workingspace.png'),
('1234567', '11222222', 'L', '2003-03-23', 'lembata', '081237788789', 'kbekayo@gmail.com', 'Kepala Bidang', 1, '2003-03-25', 'WIN_20241021_12_59_46_Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(35) NOT NULL,
  `level` enum('Administrator','Petugas','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', '482c811da5d5b4bc6d497ffa98491e38', 'Administrator'),
(6, 'Bidang Pengolahan', 'pengolahan_123', '570c396b3fc856eceb8aa7357f32af1a', 'Petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sirkulasi`
--

CREATE TABLE `tb_sirkulasi` (
  `id_sk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_buku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_dikembalikan` date NOT NULL,
  `status` enum('PIN','KEM') NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_sirkulasi`
--

INSERT INTO `tb_sirkulasi` (`id_sk`, `id_buku`, `id_anggota`, `tgl_pinjam`, `tgl_kembali`, `tgl_dikembalikan`, `status`, `id_petugas`) VALUES
('S001', '001/Dinarpusta/19', 'A001', '2024-11-30', '2024-12-07', '2024-11-30', 'KEM', 1),
('S002', '001/Dinarpusta/19', 'A002', '2024-11-30', '2024-12-07', '2024-11-30', 'KEM', 1),
('S002', '003/Dinarpusta/19', 'A002', '2024-11-30', '2024-12-07', '2024-11-30', 'KEM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang`
--
ALTER TABLE `bidang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`no_induk`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi_pelayanan`
--
ALTER TABLE `informasi_pelayanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`);

--
-- Indexes for table `jadwal_pegawai`
--
ALTER TABLE `jadwal_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bidang` (`id_departemen`);

--
-- Indexes for table `log_pinjam`
--
ALTER TABLE `log_pinjam`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bidang` (`id_bidang`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `pengunjung_buku`
--
ALTER TABLE `pengunjung_buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengunjung_NIK` (`pengunjung_NIK`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  ADD PRIMARY KEY (`id_aboutus`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`id_inbox`);

--
-- Indexes for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`NIP`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `departemen` (`id_bidang`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tb_sirkulasi`
--
ALTER TABLE `tb_sirkulasi`
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang`
--
ALTER TABLE `bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `informasi_pelayanan`
--
ALTER TABLE `informasi_pelayanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jadwal_pegawai`
--
ALTER TABLE `jadwal_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `log_pinjam`
--
ALTER TABLE `log_pinjam`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengunjung_buku`
--
ALTER TABLE `pengunjung_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  MODIFY `id_aboutus` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `id_inbox` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_profile`
--
ALTER TABLE `tbl_profile`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bidang`
--
ALTER TABLE `bidang`
  ADD CONSTRAINT `bidang_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `informasi_pelayanan`
--
ALTER TABLE `informasi_pelayanan`
  ADD CONSTRAINT `informasi_pelayanan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jadwal_pegawai`
--
ALTER TABLE `jadwal_pegawai`
  ADD CONSTRAINT `jadwal_pegawai_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `layanan`
--
ALTER TABLE `layanan`
  ADD CONSTRAINT `layanan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log_pinjam`
--
ALTER TABLE `log_pinjam`
  ADD CONSTRAINT `log_pinjam_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `log_pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`no_induk`);

--
-- Constraints for table `pengunjung_buku`
--
ALTER TABLE `pengunjung_buku`
  ADD CONSTRAINT `pengunjung_buku_ibfk_1` FOREIGN KEY (`pengunjung_NIK`) REFERENCES `pengunjung` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengunjung_buku_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`no_induk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD CONSTRAINT `tb_pegawai_ibfk_1` FOREIGN KEY (`id_bidang`) REFERENCES `bidang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sirkulasi`
--
ALTER TABLE `tb_sirkulasi`
  ADD CONSTRAINT `tb_sirkulasi_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sirkulasi_ibfk_3` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`no_induk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sirkulasi_ibfk_4` FOREIGN KEY (`id_petugas`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
