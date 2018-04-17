-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Abr-2018 às 14:32
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cadastro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica`
--

CREATE TABLE `pessoafisica` (
  `rg` varchar(12) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` set('AC','AP','BA','DF','GO','MT','MG','PB','PE','RJ','RS','RR','SP','TO','AL','AM','CE','ES','MA','MS','PA','PR','PI','RN','RO','SC','SE') NOT NULL,
  `telefone` varchar(13) NOT NULL,
  `celular` varchar(14) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `sexo` set('F','M') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pessoafisica`
--

INSERT INTO `pessoafisica` (`rg`, `nome`, `endereco`, `bairro`, `cep`, `cidade`, `estado`, `telefone`, `celular`, `cpf`, `sexo`) VALUES
('43.543.543-5', 'gfdrgdrg', 'tfhfdgfdgfd', 'fdggfdgfdg', '54354-354', 'gbvfdgfdg', 'AC', '(54)3353-4543', '(53)45435-4354', '543.543.543-54', 'M'),
('59.874.987-5', 'fuhgdjkbgfdkj', 'gfdgkjfdhg', 'hkjfdghkjfdgkj', '89439-875', 'kjfdhgkjfdkjg', 'AC', '(43)5987-4398', '(98)74598-7549', '598.749.875-49', 'F'),
('87.548.743-5', 'ufshgdsfkjfkjhf', 'kjhfdkjhdsfhkjfkjh', 'skjhfdskjhfdskjhf', '49875-439', 'fdskjhfdkjhfdskjhfd', 'AC', '(83)8754-4387', '(84)59874-3598', '987.549.875-49', 'M');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pessoafisica`
--
ALTER TABLE `pessoafisica`
  ADD PRIMARY KEY (`rg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
