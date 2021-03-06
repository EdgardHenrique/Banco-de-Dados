-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07-Nov-2016 às 19:05
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basededados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `valor` int(6) DEFAULT NULL,
  `qnt` int(3) NOT NULL,
  `descricao` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `valor`, `qnt`, `descricao`) VALUES
(1, 'abacate', 500, 10, 'Deliciosa fruta do verão!'),
(2, 'mouse sem fio', NULL, 2, NULL),
(3, 'controle remoto', 1900, 5, 'liga a tv'),
(4, 'caneta', 200, 199, 'escreve colorido'),
(5, 'teclado', 19900, 35, 'digita tudo'),
(6, 'ventilador', 160000, 60, 'Xô calor! Faz vento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabelinha`
--

CREATE TABLE `tabelinha` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `nota` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tabelinha`
--

INSERT INTO `tabelinha` (`id`, `id_produto`, `comentario`, `nota`) VALUES
(1, 3, 'JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ', 0),
(3, 1, 'nosa qi legal', 0),
(5, 2, 'é mueto bom', 0),
(7, 4, 'haHAHAHRIAIRHIAHRIAIR', 0),
(9, 5, 'vish, quebrou', 1),
(11, 6, 'Olha, do ponto de vista prático, este produto me rendeu incrível conforto, e, realmente, foi responsável pelo reatamento do meu casamento. É impressionante. Recomendo!', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabelinha`
--
ALTER TABLE `tabelinha`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_produto` (`id_produto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tabelinha`
--
ALTER TABLE `tabelinha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tabelinha`
--
ALTER TABLE `tabelinha`
  ADD CONSTRAINT `tury` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
