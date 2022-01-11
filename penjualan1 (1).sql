-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2022 pada 04.27
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(10) NOT NULL,
  `name1` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `name1`, `code`, `price`, `stok`, `image`) VALUES
(12, 'epson', 'epson-p900', 9999999.99, 43, 'epson-surecolor-p900.jpeg'),
(13, 'kambing', 'kambing1', 2000.00, 82, 'haikaltampan.jpg'),
(15, 'printer15', 'printer2', 800000.00, 12, 'haikaltampan.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang1`
--

CREATE TABLE `barang1` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jenis_barang` int(100) NOT NULL,
  `harga_satuan` decimal(65,0) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang1`
--

INSERT INTO `barang1` (`id_barang`, `nama_barang`, `jenis_barang`, `harga_satuan`, `stok_barang`, `foto`) VALUES
(7, 'sasa', 3, '10000000', 3, 'cart-icon.png'),
(11, 'sasa', 4, '10000000', 1, 'cart-icon.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai_haikal`
--

CREATE TABLE `pegawai_haikal` (
  `nip` char(8) NOT NULL,
  `ndep` varchar(10) DEFAULT NULL,
  `nblk` varchar(10) DEFAULT NULL,
  `jk` char(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telp` int(11) DEFAULT NULL,
  `jabatan` varchar(10) DEFAULT NULL,
  `gaji` int(11) DEFAULT NULL,
  `nocab` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai_haikal`
--

INSERT INTO `pegawai_haikal` (`nip`, `ndep`, `nblk`, `jk`, `alamat`, `telp`, `jabatan`, `gaji`, `nocab`) VALUES
('10107', 'Emya', 'Salsalina', 'P', 'Jl.Suci No 8 Bandung', 226789010, 'Manager', 55000000, 'C101'),
('10108', 'reyhan', 'wangsap', 'P', 'jl.rufigay', 2147483647, 'Manager', 6000000, 'C101'),
('10109', 'rufi', 'fari', 'P', 'jl.kemati', 2147483647, 'Manager', 80000, 'C101'),
('10246', 'Dian', 'Anggraini', 'P', 'Jl.Mawar 79 Semarang', 226789011, 'Sales', 27500000, 'C103'),
('10324', 'Joni', 'Susanto', 'L', 'Jl.Bima 31 Jakarta', 226789012, 'Staff', 17500000, 'C102'),
('10325', 'Saut', 'Marunung', 'L', 'Jl.Bima 20 Jakarta', 226789013, 'Staff', 47500000, 'C102'),
('1909', 'rufi', 'reyhan', 'P', 'jl.rufigay', 2147483647, 'Manager', 6000000, 'C101');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `tgl_transaksi` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_harga` decimal(10,0) NOT NULL,
  `status` enum('proses','batal','dibatalkan','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `id_user`, `id_barang`, `quantity`, `total_harga`, `status`) VALUES
(52, '16-12-2021', 9, '15', 1, '800000', 'proses'),
(53, '16-12-2021', 9, '13', 1, '802000', 'proses'),
(54, '16-12-2021', 9, '12', 4, '40802000', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `role` enum('penjual','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_user`, `role`) VALUES
(5, 'penjual', 'penjual', 'penjual', 'penjual'),
(9, 'pembeli', 'pembeli', 'pembeli', 'user'),
(12, 'wafi', 'wafi', 'wafi', 'user');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_login`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_login` (
`nip` char(8)
,`username` varchar(13)
,`password` varchar(9)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_login`
--
DROP TABLE IF EXISTS `v_login`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_login`  AS SELECT `pegawai_haikal`.`nip` AS `nip`, concat(`pegawai_haikal`.`ndep`,right(`pegawai_haikal`.`nip`,3)) AS `username`, concat(left(`pegawai_haikal`.`nblk`,1),right(`pegawai_haikal`.`ndep`,2),substr(`pegawai_haikal`.`nblk`,3,3),left(`pegawai_haikal`.`nip`,3)) AS `password` FROM `pegawai_haikal` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `barang1`
--
ALTER TABLE `barang1`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `jenis_barang` (`jenis_barang`);

--
-- Indeks untuk tabel `pegawai_haikal`
--
ALTER TABLE `pegawai_haikal`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `barang1`
--
ALTER TABLE `barang1`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
