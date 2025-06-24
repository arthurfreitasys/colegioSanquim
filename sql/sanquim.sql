-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13/06/2025 às 00:50
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
-- Banco de dados: `sanquim`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `ra` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(10) NOT NULL,
  `endereco` varchar(40) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `fone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `ra`, `data_nascimento`, `cpf`, `rg`, `endereco`, `bairro`, `cidade`, `fone`, `email`, `status`) VALUES
(1, 'Roberto', '12345678900', '2003-03-14', '1111111110', '36963231-0', 'Rua armando da silva, 42', 'santa cruz', 'mogi mirim', '1999999-9998', 'emaillegal@gmail.com', 1),
(2, 'Gabriel Silva', '16304125462', '2007-04-11', '112334556-7', '12333444-5', 'rua 53, numero 02', 'bairro Duzentas e tr', 'Estiva', '19 99299-4444', 'algumemail@hotmal.com', 1),
(3, 'Isabella Costa', '63155849105', '2007-07-04', '111222333-4', '11222333-4', 'Rua amanda, 90', 'ipe amarelo', 'mogi guaçu', '99299-5510', 'isabellaemail@yahoo.com', 1),
(4, 'Léo Leme Oliveira', '66699966699', '2007-02-07', '409095048-1', '69666777-1', 'Rua do Tucura, 148', 'Saude', 'Mogi Mirim', '19 99880-2847', 'leo.leme@gmail.com', 1),
(5, 'Solange Cabral', '1988556478', '2004-08-18', '778556914-2', '52598713-6', 'Rua amada, 903', 'Bairro da luz', 'Mogi mirim', '19 99525-6524', 'solange@yahoo.com', 1),
(6, 'Simone Amaral', '25469872160', '2001-09-11', '194785165-4', '63584915-1', 'avenida brasil, 404', 'Bairro do erro', 'Estiva Gerbi', '19 99587-2402', 'simone@gmail.com', 0),
(7, 'Lucas Azevedo', '36481511590', '2006-03-07', '165798164-1', '648519752-', 'avenida padre almeida, 422', 'Tucura', 'Porto Ferreira', '19 98564-2252', 'luquinhaazedo@gmail.com', 1),
(8, 'Agustin Nardi', '63184857164', '2007-04-16', '315489548-1', '16548741-X', 'Avenida Padre Roque, 212', 'Centro', 'Mogi Mirim', '19 99256-4019', 'agustinnardin@gmail.com', 1),
(9, 'Gustavo José Almeida', '15948762150', '2007-04-20', '445975198-5', '63498751-2', 'rua da lua, 512', 'José de amaral', 'Mogi Guaçu', '19 99254-4040', 'gustavingameplay@zipmail.com.br', 1),
(10, 'Cauan Fontes Pinto', '14548975621', '2003-09-30', '132456789-1', '12456789-3', 'Rua Roberto Carlos, 320', 'Vila Dias', 'Mogi Mirim', '19 98554-2659', 'cauaizin@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome_curso` varchar(25) NOT NULL,
  `periodo` varchar(20) NOT NULL,
  `carga_horaria` varchar(20) NOT NULL,
  `modalidade` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome_curso`, `periodo`, `carga_horaria`, `modalidade`, `status`) VALUES
(1, 'ensino médio', 'integral', '100', 'presencial', 1),
(2, 'pré vestibulinho', 'tarde', '90', 'presencial', 1),
(3, 'pré vestibular', 'noturno', '60', 'presencial', 1),
(4, 'empreendedorismo', 'matutino', '90', 'ensino a distancia', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `nome_disciplina` varchar(20) NOT NULL,
  `carga_horaria` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `nome_disciplina`, `carga_horaria`, `status`) VALUES
(1, 'português', '65', 1),
(2, 'matemática', '65', 1),
(3, 'história', '60', 1),
(4, 'geografia', '60', 1),
(5, 'plano de vida', '50', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `materiais`
--

CREATE TABLE `materiais` (
  `id` int(11) NOT NULL,
  `titulo_material` varchar(25) NOT NULL,
  `curso` varchar(20) NOT NULL,
  `turma` varchar(20) NOT NULL,
  `disciplina` varchar(20) NOT NULL,
  `formato` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `materiais`
--

INSERT INTO `materiais` (`id`, `titulo_material`, `curso`, `turma`, `disciplina`, `formato`, `status`) VALUES
(1, 'Aula1_VERBOS', 'ensino médio', '1º EMED', 'português', '.pdf', 1),
(2, 'Aula3_FUNÇÕES', 'pré vestibular', '2º PVEST', 'matemática', '.pptx', 1),
(3, 'Aula5_SEGUNDA_GUERRA', 'pré vestibular', '2 PVEST', 'história', '.pptx', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `rg` varchar(10) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `fone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `cpf`, `rg`, `endereco`, `bairro`, `cidade`, `fone`, `email`, `status`) VALUES
(1, 'Rodrigo Martins', '445978549-1', '16456824-2', 'rua professor roberto junior, ', 'Alameda Arborizada', 'Mogi Mirim', '19 99855-4568', 'rodrigomartins@outlook.com', 1),
(2, 'Swelen Roberta', '145789256-1', '14578954-5', 'avenida alagada, 556', 'Jubesval Junior', 'Mogi Guaçu', '19 9845-2201', 'swelen@hotmail.com', 1),
(3, 'Paulo Cesar', '123456789-1', '123456789-', 'Rua cinquenta e cinco, 505', 'Vila ilinois', 'Mogi Mirim', '19 99299-9999', 'pcpaulo@gmail.com', 1),
(4, 'Marcos Raremco', '123456789-1', '123456798-', 'rua leal, 102', 'bairro legal', 'mogi mirim', '19 99999-8888', 'marcos@gmail.com', 1),
(5, 'Roberto Carlos', '123456789-1', '123456789-', 'rua imageine, 444', 'Imagination', 'mogi mirim', '19 98825-4420', 'robertin@outlook.com', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id` int(11) NOT NULL,
  `nome_turma` varchar(25) NOT NULL,
  `curso` varchar(20) NOT NULL,
  `local` varchar(20) NOT NULL,
  `periodo` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id`, `nome_turma`, `curso`, `local`, `periodo`, `status`) VALUES
(1, 'PVEST', 'pré vestibular', 'Sala 1', 'tarde', 1),
(2, 'PVESTIL', 'pré vestibulinho', 'Sala 2', 'tarde', 1),
(3, 'EMED', 'ensino médio', 'Sala 3', 'integral', 1),
(4, 'EMPRED', 'empreendedorismo', 'Sala 4', 'matutino', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(35) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `nivel` varchar(15) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `senha`, `nivel`, `status`) VALUES
(1, 'aluno1', '1234', 'aluno', 1),
(2, 'professor1', '1234', 'professor', 1),
(3, 'gestor1', '1234', 'gestor', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turmas`
--
ALTER TABLE `turmas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
