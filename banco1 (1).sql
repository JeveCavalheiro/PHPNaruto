-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/12/2024 às 23:39
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco1`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `amegakure`
--

CREATE TABLE `amegakure` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `affiliation` varchar(255) DEFAULT NULL,
  `voice` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `amegakure`
--

INSERT INTO `amegakure` (`id`, `name`, `sex`, `affiliation`, `voice`) VALUES
(227, 'Baiu', 'Male', 'Amegakure', 'Takayuki Fujimoto'),
(228, 'Conch King', 'N/A', 'Amegakure', 'N/A'),
(229, 'Fusō', 'Female', 'Amegakure', 'Toa Yukinari'),
(230, 'Fuyō', 'Female', 'Amegakure', 'Yurika Aizawa'),
(231, 'Hanzō', 'Male', 'Amegakure', 'Ikuya Sawaki'),
(232, 'Heiji', 'Male', 'Amegakure', 'Kōsuke Gotō'),
(233, 'Hisame', 'Female', 'Amegakure', 'Ryōko Gi'),
(234, 'Ibuse', 'Male', 'Amegakure', 'N/A'),
(235, 'Ise', 'Male', 'Amegakure', 'Nobuaki Kanemitsu'),
(236, 'Kagari', 'Male', 'Amegakure', 'Masao Harada'),
(237, 'Kandachi', 'Male', 'Amegakure', 'Setsuji Satō'),
(238, 'Kie', 'Male', 'Amegakure', 'Shinobu Matsumoto'),
(239, 'Kirisame', 'Male', 'Amegakure', 'Shunsuke Sakuya'),
(240, 'Konan', 'Female', 'Amegakure', 'Atsuko Tanaka,Kaori Mine   (Child)'),
(241, 'Kyūsuke', 'Male', 'Amegakure', 'Hidenobu Kiuchi'),
(242, 'Midare', 'Male', 'Amegakure', 'Yasuhiro Fujiwara'),
(243, 'Mubi', 'Male', 'Amegakure', 'Yōji Ueda'),
(244, 'Murasame', 'Male', 'Amegakure', 'Toshiyuki Morikawa'),
(245, 'Nagato', 'Male', 'Amegakure', 'Junpei Morita,Ken\'yū Horiuchi   (Pain),Tomoaki Maeno   (Child),Shiho Hisajima   (Female Animal Path)'),
(246, 'Oboro', 'Male', 'Amegakure', 'Tadasuke Oomizu,Ryūichi Kijima   (Part II)'),
(247, 'Aoi Rokushō', 'Male', 'Amegakure', 'Ryōtarō Okiayu'),
(248, 'Ryūsui', 'Male', 'Amegakure', 'Yasumichi Kushida'),
(249, 'Samidare', 'Male', 'Amegakure', 'Daisuke Sakaguchi'),
(250, 'Shigure', 'Male', 'Amegakure', 'Takuo Kawamura'),
(251, 'Suiren', 'Female', 'Amegakure', 'Eri Gōda'),
(252, 'Suiu', 'Male', 'Amegakure', 'Yukitoshi Tokumoto'),
(253, 'Tezuna', 'Female', 'Amegakure', 'Rei Matsuzaki'),
(254, 'Garashi Tōno', 'Male', 'Amegakure', 'Kishō Taniyama'),
(255, 'Ugatsu', 'Male', 'Amegakure', 'N/A'),
(256, 'Yahiko', 'Male', 'Amegakure', 'Ken\'yū Horiuchi,Wataru Hatano  (Child)'),
(257, 'Yūdachi', 'Male', 'Amegakure', 'Toshiharu Nakanishi'),
(258, 'jeve', 'male', 'Amegakure', 'Shiho Hisajima'),
(259, 'Baiu', 'Male', 'Amegakure', 'Takayuki Fujimoto'),
(260, 'Conch King', 'N/A', 'Amegakure', 'N/A'),
(261, 'Fusō', 'Female', 'Amegakure', 'Toa Yukinari'),
(262, 'Fuyō', 'Female', 'Amegakure', 'Yurika Aizawa'),
(263, 'Hanzō', 'Male', 'Amegakure', 'Ikuya Sawaki'),
(264, 'Heiji', 'Male', 'Amegakure', 'Kōsuke Gotō'),
(265, 'Hisame', 'Female', 'Amegakure', 'Ryōko Gi'),
(266, 'Ibuse', 'Male', 'Amegakure', 'N/A'),
(267, 'Ise', 'Male', 'Amegakure', 'Nobuaki Kanemitsu'),
(268, 'Kagari', 'Male', 'Amegakure', 'Masao Harada'),
(269, 'Kandachi', 'Male', 'Amegakure', 'Setsuji Satō'),
(270, 'Kie', 'Male', 'Amegakure', 'Shinobu Matsumoto'),
(271, 'Kirisame', 'Male', 'Amegakure', 'Shunsuke Sakuya'),
(272, 'Konan', 'Female', 'Amegakure', 'Atsuko Tanaka,Kaori Mine   (Child)'),
(273, 'Kyūsuke', 'Male', 'Amegakure', 'Hidenobu Kiuchi'),
(274, 'Midare', 'Male', 'Amegakure', 'Yasuhiro Fujiwara'),
(275, 'Mubi', 'Male', 'Amegakure', 'Yōji Ueda'),
(276, 'Murasame', 'Male', 'Amegakure', 'Toshiyuki Morikawa'),
(277, 'Nagato', 'Male', 'Amegakure', 'Junpei Morita,Ken\'yū Horiuchi   (Pain),Tomoaki Maeno   (Child),Shiho Hisajima   (Female Animal Path)'),
(278, 'Oboro', 'Male', 'Amegakure', 'Tadasuke Oomizu,Ryūichi Kijima   (Part II)'),
(279, 'Aoi Rokushō', 'Male', 'Amegakure', 'Ryōtarō Okiayu'),
(280, 'Ryūsui', 'Male', 'Amegakure', 'Yasumichi Kushida'),
(281, 'Samidare', 'Male', 'Amegakure', 'Daisuke Sakaguchi'),
(282, 'Shigure', 'Male', 'Amegakure', 'Takuo Kawamura'),
(283, 'Suiren', 'Female', 'Amegakure', 'Eri Gōda'),
(284, 'Suiu', 'Male', 'Amegakure', 'Yukitoshi Tokumoto'),
(285, 'Tezuna', 'Female', 'Amegakure', 'Rei Matsuzaki'),
(286, 'Garashi Tōno', 'Male', 'Amegakure', 'Kishō Taniyama'),
(287, 'Ugatsu', 'Male', 'Amegakure', 'N/A'),
(288, 'Yahiko', 'Male', 'Amegakure', 'Ken\'yū Horiuchi,Wataru Hatano  (Child)'),
(289, 'Yūdachi', 'Male', 'Amegakure', 'Toshiharu Nakanishi');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `amegakure`
--
ALTER TABLE `amegakure`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `amegakure`
--
ALTER TABLE `amegakure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
