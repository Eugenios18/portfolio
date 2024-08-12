-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2024 at 11:44 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `ferias`
--

CREATE TABLE `ferias` (
  `id` int(11) NOT NULL,
  `n_dias` varchar(60) NOT NULL,
  `ano_anterior` varchar(60) NOT NULL,
  `ano_corrente` varchar(60) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_apresentacao` date NOT NULL,
  `nim` varchar(45) DEFAULT NULL,
  `dt_enviarP` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ferias`
--

INSERT INTO `ferias` (`id`, `n_dias`, `ano_anterior`, `ano_corrente`, `dt_inicio`, `dt_apresentacao`, `nim`, `dt_enviarP`) VALUES
(8, '6', '0', '6', '2024-06-24', '2024-07-02', '7383623', NULL),
(9, '3', '0', '3', '2024-07-01', '2024-07-04', '7310613', ''),
(10, '4', '0', '4', '2024-07-08', '2024-07-12', '7310613', '2024-06-25'),
(11, '4', '0', '4', '2024-07-01', '2024-07-05', '7300613', '2024-06-26'),
(12, '6', '0', '6', '2024-07-15', '2024-07-23', '7383613', '2024-07-04'),
(13, '6', '0', '6', '2024-07-15', '2024-07-23', '7310613', '2024-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `Nim` int(11) NOT NULL,
  `Posto` varchar(60) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Apelido` varchar(60) NOT NULL,
  `Data_de_Nascimento` date NOT NULL,
  `Telemovel` int(11) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Palavra_passe` varchar(60) NOT NULL,
  `Confirmar_passe_rep` varchar(60) NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `totalDias` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `Nim`, `Posto`, `Nome`, `Apelido`, `Data_de_Nascimento`, `Telemovel`, `Email`, `Palavra_passe`, `Confirmar_passe_rep`, `admin`, `totalDias`) VALUES
(1, 7310613, 'Assistente Operacional', 'Eugeniu', 'Gavriliuc', '1993-09-18', 927778178, 'teste@hotmail.com', 'teste', 'teste', 0, '23'),
(2, 7300613, 'Assistente Operacional', 'Eugeniu', 'Gavriliuc', '1993-09-18', 927778178, 'admin@hotmail.com', 'admin1234', 'admin1234', 1, '23'),
(3, 7383613, '1ºCabo', 'João', 'Santos', '1994-03-12', 987654321, 'teste2@hotmail.com', 'teste2', 'teste2', 0, '24'),
(4, 7383623, '2ºSargento', 'Diogo', 'Lopes', '1986-07-02', 987654321, 'teste3@hotmail.com', 'teste3', 'teste3', 0, '24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ferias`
--
ALTER TABLE `ferias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ferias`
--
ALTER TABLE `ferias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
