-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for agroshop
CREATE DATABASE IF NOT EXISTS `agroshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agroshop`;

-- Dumping structure for table agroshop.biodata_user
CREATE TABLE IF NOT EXISTS `biodata_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `email` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `nohp` varchar(23) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `kota` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `negara` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `kodepos` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table agroshop.confirmed
CREATE TABLE IF NOT EXISTS `confirmed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `produk` varchar(80) NOT NULL,
  `harga` int NOT NULL,
  `tanggal` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table agroshop.pembelian
CREATE TABLE IF NOT EXISTS `pembelian` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(80) NOT NULL,
  `email` varchar(60) NOT NULL,
  `nohp` varchar(25) NOT NULL,
  `kota` varchar(60) NOT NULL,
  `negara` varchar(60) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` varchar(30) NOT NULL,
  `tanggal` varchar(40) NOT NULL,
  `produk` varchar(80) NOT NULL,
  `jumlah` int NOT NULL,
  `harga` int NOT NULL,
  `status` int NOT NULL,
  `norek` varchar(100) NOT NULL,
  `namarek` varchar(60) NOT NULL,
  `konfirmasi` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table agroshop.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(120) NOT NULL,
  `penjual` text NOT NULL,
  `harga` int NOT NULL,
  `hargaper` varchar(20) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `olahan` varchar(30) NOT NULL,
  `metode` varchar(80) NOT NULL,
  `bahan` text NOT NULL,
  `keterangan` text NOT NULL,
  `foto1` varchar(60) NOT NULL,
  `foto2` varchar(60) NOT NULL,
  `foto3` varchar(60) NOT NULL,
  `foto4` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
