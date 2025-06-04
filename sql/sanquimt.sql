-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/05/2025 às 14:53
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
-- Banco de dados: `sanquimt`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `ra` int(11) NOT NULL,
  `datanas` date NOT NULL,
  `cpf` int(11) NOT NULL,
  `rg` int(11) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `fone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `ra`, `datanas`, `cpf`, `rg`, `endereco`, `bairro`, `cidade`, `fone`, `email`, `status`) VALUES
(1, 'maria', 0, '0000-00-00', 0, 0, '', '', '', 0, '', 0),
(1, 'maria', 1157345346, '0000-00-00', 2147483647, 446564563, 'rua dos bobos numero 0', 'jardim do nada', 'sete alem', 40028922, 'maria@gmail.com', 1),
(1, 'maria', 1157345346, '0000-00-00', 2147483647, 446564563, 'rua dos bobos numero 0', 'jardim do nada', 'sete alem', 40028922, 'maria@gmail.com', 1),
(2, 'Marcos', 1823485634, '0000-00-00', 2135567103, 60326814, 'Rua benetido marcos', 'jardim do eden', 'xique xique- bahia', 1999861732, 'Marquinhosdograu1234@gmail.com', 1),
(3, 'nirivaldo', 1823485634, '2007-05-04', 2135567103, 60326814, 'Rua benetido alves', 'jardim velha crus naciemente', 'UBERLANDIA', 1999861732, 'NIRIVALDO13213#@GMAIL.COM', 1),
(4, 'Waljeirson da noite pereira', 1823485634, '2007-05-04', 2135567103, 60326814, 'rua marcos nava ', 'jardim aveniada bandeirandass', 'paraiba', 1999861732, 'waljeirsondanoite999@gmail.com', 1),
(5, 'Maria madalena', 1823485634, '2007-05-04', 2135567103, 60326814, 'rua cristavo colombom', 'bandeirantes', 'Mirante verde', 1999861732, 'gmail.png.com@gmail.com', 1),
(6, 'cristiano', 1823485634, '2007-05-04', 2135567103, 60326814, 'rua cristavo colombombom', 'pqnaobombom', 'jean novaldo', 1999861732, 'Crisdovral@gmail.com', 1),
(7, '123 de oliveira 4', 1823485634, '2007-05-04', 2135567103, 60326814, 'formula de baskara faria', 'jardim almeida x e y', 'XY', 1999861732, '123@hotmail.com', 0),
(8, 'jena marcos', 1823485634, '2007-05-04', 2135567103, 60326814, ' Rua irivaldo da silda de pinto melo maria', 'Acre do rio', 'acre', 1999861732, 'jena666@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome_curso` varchar(10) NOT NULL,
  `periodo` varchar(10) NOT NULL,
  `carga_horaria` varchar(10) NOT NULL,
  `modalidade` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome_curso`, `periodo`, `carga_horaria`, `modalidade`, `status`) VALUES
(1, 'Ensino med', 'manha', '10', '', 1),
(2, 'pre-vestib', 'manha', '10', '', 1),
(3, 'pre-vestib', 'manha', '10', '', 1),
(4, 'empreended', 'manha', '10', '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `diciplinas`
--

CREATE TABLE `diciplinas` (
  `id` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `cargah` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `diciplinas`
--

INSERT INTO `diciplinas` (`id`, `nome`, `cargah`, `status`) VALUES
(1, 'matematica', 20, 1),
(2, 'geografia', 40, 1),
(3, 'leitura', 15, 0),
(4, 'ciencias', 70, 1),
(5, 'ed fisica', 100, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais`
--

CREATE TABLE `materiais` (
  `id` int(11) NOT NULL,
  `titulo_material` varchar(10) NOT NULL,
  `curso` varchar(10) NOT NULL,
  `turma` varchar(10) NOT NULL,
  `disciplina` varchar(10) NOT NULL,
  `formato` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materiais`
--

INSERT INTO `materiais` (`id`, `titulo_material`, `curso`, `turma`, `disciplina`, `formato`, `status`) VALUES
(1, 'Mat', 'Ensino med', '1', 'Matematica', 'Livro', 1),
(2, 'Port', 'Pre-vestib', '2', 'Lingua Por', 'Livro', 1),
(3, 'Geo', 'Empreended', '3', 'Geografia', 'Livro', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` int(11) NOT NULL,
  `rg` int(11) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `fone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `rg`, `endereco`, `bairro`, `cidade`, `fone`, `email`, `status`) VALUES
(1, 'Geovana pereira', 517667817, 873912342, 'rua batista rangel de barros', 'jardim mirante', 'mogi pereira', 1974698123, 'eeehhummoque?@gmail.com', 1),
(2, 'Brito rafael', 2135567103, 60326814, 'rua herivaldo menenseres teodoros', 'jardim mirante', 'mogi pereira', 1974698123, 'britobiiitro1237@gmail.com', 1),
(3, 'Apita', 1234564543, 60326814, 'Avenida Biiaa lokaa', 'Maria pitufina', 'Maria pitufina', 1974698123, 'pitufosexistemreal100@gmail.com', 1),
(4, 'Joja', 1234564543, 60326814, 'rua pieere melhor prefeito', 'vilka pelicanos', 'Maria pitufina', 1974698123, 'ericbarone@gmail.com', 1),
(5, 'marcso nava', 2135567103, 60326814, 'rua fatec', 'jardim fatecoi', 'amofatecsempre', 1974698123, 'fatecodecoracao1@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `nome_curso` varchar(10) NOT NULL,
  `periodo` varchar(10) NOT NULL,
  `carga_horaria` varchar(10) NOT NULL,
  `modalidade` varchar(10) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id`, `nome_curso`, `periodo`, `carga_horaria`, `modalidade`, `status`) VALUES
(1, 'Ensino med', 'manha', '10', '', 1),
(2, 'pre-vestib', 'manha', '10', '', 1),
(3, 'pre-vestib', 'manha', '10', '', 1),
(4, 'empreended', 'manha', '10', '', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
