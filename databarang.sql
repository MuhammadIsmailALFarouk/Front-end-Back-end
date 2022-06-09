-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 06:06 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Kitchen'),
(2, 'Sitting Room'),
(3, 'Bad Room');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`) VALUES
(2, 'admin', '$2y$10$.kB.UJiWOV16riUEorPtlu3KOJyxdB9iZHNcG8TcDbjiRXrpsmZfy'),
(3, 'admin2', '$2y$10$uJFRP/VkpPmibEjebAB0IuUytEoeX5iwgEvEDVCt5vnmQl8yHY7ca');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `kategori_id` int(99) NOT NULL,
  `Nama_Pelanggan` varchar(99) NOT NULL,
  `nama` varchar(99) NOT NULL,
  `Harga` int(99) NOT NULL,
  `stok` int(99) NOT NULL,
  `Jumlah` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `kategori_id`, `Nama_Pelanggan`, `nama`, `Harga`, `stok`, `Jumlah`) VALUES
(3, 2, 'Haris', 'Kompor', 250000, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `ketersediaan_stok` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kategori_id`, `nama`, `harga`, `foto`, `detail`, `ketersediaan_stok`) VALUES
(1, 1, 'Sendok dan Garpu', 55000, 'sendokgarpu.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(2, 1, 'Tempat Bumbu', 26000, 'tempatbumbu.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(3, 1, 'Rak Bumbu putar ', 75000, 'rakbumbuputar.png', '                                                                                                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                                                                                                ', 'tersedia'),
(4, 2, 'Sofa Panjang Blue', 167000, 'sofa panjang.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(5, 2, 'Meja Sofa Ruang Tamu', 155000, 'mejasofa.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(6, 2, 'Hiasan Dinding', 65000, 'hiasdinding.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(7, 1, 'Rak Piring Dapur', 40000, 'rakpiring.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(8, 1, 'Rak Dapur', 17500, 'rakdapur.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(9, 1, 'Gelas', 11000, 'teh dingin.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(10, 3, 'Kasur Spring Bed', 1300000, 'kasur.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(11, 3, 'Dekorasi Kamar ', 148000, 'dekorasikamar.jpg', '                            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nemo ipsum rem officiis eveniet totam soluta laborum iusto quaerat esse deleniti quibusdam ducimus quam modi ullam atque dolor, nostrum a expedita magni et fugit recusandae ea repellendus provident. Vel officiis, distinctio, cupiditate quaerat quos doloremque magnam perspiciatis nesciunt repellat libero ad laboriosam quae itaque accusantium voluptatem laborum iste incidunt necessitatibus corrupti nisi odit nobis voluptates. Est nemo, amet laborum consequatur, ea commodi quam voluptas voluptatum veniam assumenda eligendi enim placeat impedit?                        ', 'tersedia'),
(19, 3, 'Lemari Pakaian', 176000, 'lemaribaju.jpg', '                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos optio deleniti incidunt exercitationem ab quaerat, quae qui blanditiis quisquam vitae voluptates, molestias iste voluptatem eveniet dolorem minus itaque odio aut unde consectetur mollitia esse veritatis laborum cum? At esse hic vero quas, deleniti libero? Eveniet laborum tempore eius placeat, eligendi corporis doloribus, ullam deserunt temporibus officia alias aliquam repudiandae cupiditate est nobis non architecto quasi in autem iusto cum veritatis quisquam laboriosam.\r\n            Autem, eum eos nemo exercitationem, eveniet ullam placeat, sunt hic atque esse tempora quod aliquid voluptatibus neque? Accusamus harum aut ab sed sunt molestias minus laudantium possimus velit quod error reiciendis veritatis ipsa reprehenderit tenetur aspernatur molestiae nisi, a vitae dolorum dolores. Repudiandae illum error nam amet optio sint ipsam, aut perspiciatis provident nostrum debitis delectus quae vitae quas sunt officiis ipsum dolores? Eos illum laudantium harum sequi facere esse beatae cumque voluptas veniam officiis dolor eligendi molestiae enim, dignissimos voluptate sed hic odit molestias assumenda omnis illo facilis? Quidem, error? Nihil aperiam culpa nulla, fuga amet cumque odio in eius, veniam officiis ipsum inventore voluptate laboriosam impedit ipsam laborum! Temporibus iusto voluptatibus sint minima sapiente dignissimos dolores id consequatur. Minus corrupti accusamus deserunt aliquid ex debitis adipisci.                        ', 'tersedia'),
(20, 3, 'Meja Rias DInding', 120000, 'mejariasdinding.jpg', '                                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos optio deleniti incidunt exercitationem ab quaerat, quae qui blanditiis quisquam vitae voluptates, molestias iste voluptatem eveniet dolorem minus itaque odio aut unde consectetur mollitia esse veritatis laborum cum? At esse hic vero quas, deleniti libero? Eveniet laborum tempore eius placeat, eligendi corporis doloribus, ullam deserunt temporibus officia alias aliquam repudiandae cupiditate est nobis non architecto quasi in autem iusto cum veritatis quisquam laboriosam.\r\n            Autem, eum eos nemo exercitationem, eveniet ullam placeat, sunt hic atque esse tempora quod aliquid voluptatibus neque? Accusamus harum aut ab sed sunt molestias minus laudantium possimus velit quod error reiciendis veritatis ipsa reprehenderit tenetur aspernatur molestiae nisi, a vitae dolorum dolores. Repudiandae illum error nam amet optio sint ipsam, aut perspiciatis provident nostrum debitis delectus quae vitae quas sunt officiis ipsum dolores? Eos illum laudantium harum sequi facere esse beatae cumque voluptas veniam officiis dolor eligendi molestiae enim, dignissimos voluptate sed hic odit molestias assumenda omnis illo facilis? Quidem, error? Nihil aperiam culpa nulla, fuga amet cumque odio in eius, veniam officiis ipsum inventore voluptate laboriosam impedit ipsam laborum! Temporibus iusto voluptatibus sint minima sapiente dignissimos dolores id consequatur. Minus corrupti accusamus deserunt aliquid ex debitis adipisci.                                                ', 'tersedia'),
(22, 1, 'Meja Belajar', 250000, 'mejabelajar.jpg', '                            fsfartwr                        ', 'tersedia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nama` (`nama`),
  ADD KEY `kategori_produk` (`kategori_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategori_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
