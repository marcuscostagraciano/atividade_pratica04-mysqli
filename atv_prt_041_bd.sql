-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 16-Ago-2019 às 09:19
-- Versão do servidor: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.14-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atv_prt_041_bd`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipes`
--

CREATE TABLE `equipes` (
  `num_equipe` int(11) NOT NULL,
  `nome_equipe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `equipes`
--

INSERT INTO `equipes` (`num_equipe`, `nome_equipe`) VALUES
(0, 'Narvais'),
(2, 'Falcões'),
(4, 'Os Patos Selvagens'),
(8, 'Cópias do Keldeo'),
(43, 'Macacos Detetives');

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolas`
--

CREATE TABLE `escolas` (
  `nome_escola` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `escolas`
--

INSERT INTO `escolas` (`nome_escola`, `cidade`, `estado`) VALUES
('Instituto Federal Catarinense - Campus Araquari', 'Araquari', 'Sanca Catarina'),
('Bom Jesus IELUSC', 'Joinville', 'Santa Catarina'),
('Escola Municipal Professora Lacy Luiza da Cruz Flores', 'Joinville', 'Santa Catarina'),
('Universidade Federal de Santa Catarina - Campus Florianópolis', 'Florianópolis', 'Santa Catarina'),
('MIT - Massachusetts Institute of Technology', 'Cambridge', 'Massachusetts');

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

CREATE TABLE `membros` (
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `escola` varchar(255) DEFAULT NULL,
  `funcao` varchar(255) DEFAULT NULL,
  `num_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `membros`
--

INSERT INTO `membros` (`email`, `nome`, `escola`, `funcao`, `num_equipe`) VALUES
('db.fan.db@gmail.com ', 'João Vitor Coêlho', 'Instituto Federal Catarinense - Câmpus Araquari', 'Aluno', 2),
('gianlucastarke@gmail.com', 'Gianluca Starke', 'Instituto Federal Catarinense - Câmpus Araquari', 'Aluno', 43),
('guivogt1@gmail.com', 'Guilherme Vogt de Oliveira', 'Instituto Federal Catarinense - Câmpus Araquari', 'Aluno', 0),
('lucaszferreira100@gmail.com', 'Lucas Ziemann Ferreira', 'Instituto Federal Catarinense - Câmpus Araquari', 'Aluno', 8),
('marcusviniciusgraciano04@gmail.com', 'Marcus Vinícius da Costa Graciano', 'Instituto Federal Catarinense - Câmpus Araquari', 'Aluno', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipes`
--
ALTER TABLE `equipes`
  ADD PRIMARY KEY (`num_equipe`);

--
-- Indexes for table `membros`
--
ALTER TABLE `membros`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
