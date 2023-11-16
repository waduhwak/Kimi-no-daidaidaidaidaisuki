-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 06:13 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masjid`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_bank` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donasi`
--

CREATE TABLE `donasi` (
  `id_donasi` int(11) NOT NULL,
  `nama_donatur` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `bukti_transfer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donasi`
--

INSERT INTO `donasi` (`id_donasi`, `nama_donatur`, `no_hp`, `bukti_transfer`) VALUES
(1, 'Assad', '1892789123', 'admin/img/donasi/Chrysanthemum.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `judul` text COLLATE latin1_general_ci NOT NULL,
  `kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci NOT NULL,
  `gambar` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `judul`, `kategori`, `deskripsi`, `gambar`) VALUES
(1, 'sambutan', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(2, 'profil', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/Desert.jpg'),
(3, 'visimisi', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(4, 'organisasisiswa', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/Adobe_Illustrator-01.ico'),
(5, 'tenagalab', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(6, 'farmasi', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(7, 'ruangkelas', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(8, 'ruangperpus', 'content', 'Kepala MAN 2 Kota Bengkulu melaksanakan MOU dengan perwakilan Pejabat Kementrian Agama Wilayah Bengkulu...', 'gambar/a.png'),
(9, 'labkomputer', 'content', 'pelatihan drum band di MAN 2 kota bengkulu', 'gambar/a.png'),
(10, 'ruangpimpinan', 'content', 'persiapan untuk upacara 17 agustus di MAN 2 kota bengkulu', 'gambar/a.png'),
(11, 'ruangguru', 'content', 'Lomba Drum Band', 'gambar/a.png'),
(12, 'lapangandangedung', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(13, 'ruangkonseling', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(14, 'ruanguks', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(15, 'ruangtatausaha', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(16, 'mushalla', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(17, 'tempatparkir', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(18, 'strukturorganisasi', 'content', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/a.png'),
(24, 'Drum Band', 'berita', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/Adobe_Illustrator-01.ico'),
(25, 'Paskibraka', 'berita', 'Siwa MAN 2 Kota Bengkulu melaksanakan Bakti Sosial di Lingkungan Sekolah', 'gambar/Desert.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `tanggal_artikel` date NOT NULL,
  `judul_kegiatan` text NOT NULL,
  `keterangan` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `tanggal_artikel`, `judul_kegiatan`, `keterangan`, `foto`) VALUES
(10, '2023-10-19', 'Doa Ibu Bersama', 'pengumuman', '../../img/galeri/doa_ibu.jpg'),
(11, '2023-10-12', 'aaa', 'zavi', '../../img/galeri/Desert.jpg'),
(12, '2023-10-19', 'COBA COBA OM', 'asdasd', '../../img/galeri/default.png'),
(13, '2023-10-19', 'bismillahorromahnirrahim', 'sss', '../../img/galeri/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `id` int(11) NOT NULL,
  `uang_masuk` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `ket_masuk` text NOT NULL,
  `uang_keluar` varchar(20) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `ket_keluar` text NOT NULL,
  `saldo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengurus`
--

CREATE TABLE `pengurus` (
  `id_pengurus` int(11) NOT NULL,
  `nama_pengurus` varchar(50) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengurus`
--

INSERT INTO `pengurus` (`id_pengurus`, `nama_pengurus`, `no_hp`, `jabatan`) VALUES
(1, 'Anang', '08123123', 'Gharim'),
(2, 'skibidi toilet', 'brr skibidi d', 'ga bahaya ta');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(35) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'nanya bos', 'Administrator', '2a98d319594862eb5f933f9c93f97d61'),
(2, 'System Root', 'root', '63a9f0ea7bb98050796b649e85481845'),
(4, 'Web User', 'user', 'ee11cbb19052e40b07aac0ca060c23ee');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donasi`
--
ALTER TABLE `donasi`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id_pengurus`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donasi`
--
ALTER TABLE `donasi`
  MODIFY `id_donasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id_pengurus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
