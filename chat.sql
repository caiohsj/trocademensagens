-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 11-Abr-2019 às 22:02
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
CREATE TABLE IF NOT EXISTS `mensagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_de` varchar(255) NOT NULL,
  `id_para` varchar(255) NOT NULL,
  `mensagem` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `id_de`, `id_para`, `mensagem`) VALUES
(1, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(2, '', 'wian', 'guoclyibjvchdshvchiiub'),
(3, 'fabia', 'wian', 'guoclyibjvchdshvchiiub'),
(4, 'fabia', 'wian', 'wrhwarg'),
(5, 'wian', 'fabia', 'oi fabia'),
(6, 'wian', 'fabia', 'oi fabia'),
(7, 'wian', 'aline', 'oi Aline'),
(8, 'caio', 'fabia', 'oi fabia'),
(9, 'caio', 'fabia', 'guoclyibjvchdshvchiiub'),
(10, 'caio', 'caio', 'guoclyibjvchdshvchiiub'),
(11, 'caio', 'fabia', 'oi fabia'),
(12, 'caio', 'caio', 'guoclyibjvchdshvchiiub'),
(13, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(14, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(15, 'wian', 'fabia', 'rwwr'),
(16, 'wian', 'fabia', 'rwwr'),
(17, 'wian', '', 'shs'),
(18, 'wian', '', 'shs'),
(19, 'wian', 'caio', 'guoclyibjvchdshvchiiub'),
(20, 'wian', 'caio', 'guoclyibjvchdshvchiiub'),
(21, 'wian', 'caio', 'wege'),
(22, 'wian', 'aline', 'guoclyibjvchdshvchiiub'),
(23, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(24, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(25, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(26, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(27, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(28, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(29, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(30, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(31, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(32, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(33, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(34, 'wian', 'fabia', 'dfsbbs'),
(35, 'wian', 'fabia', 'dfsbbs'),
(36, 'wian', 'fabia', 'dfsbbs'),
(37, 'wian', 'fabia', 'dfsbbs'),
(38, 'wian', 'fabia', 'dfsbbs'),
(39, 'wian', 'fabia', 'dfsbbs'),
(40, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(41, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(42, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(43, 'wian', 'fabia', 'guoclyibjvchdshvchiiub'),
(44, 'wian', 'aline', 'Ã§hh'),
(45, 'wian', 'aline', 'Ã§hh');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `foto`) VALUES
(1, 'wian', 'wian', '12345', 'nophoto_m.gif'),
(2, 'fabia', 'fabia', '12345', 'nophoto_f.jpg'),
(3, 'Caio', 'caio', '123', 'nophoto_m.gif'),
(4, 'Aline', 'aline', '1234', 'nophoto_f.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
