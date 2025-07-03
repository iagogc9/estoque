-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Jul-2025 às 11:35
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `estoque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `controladorestoque`
--

CREATE TABLE `controladorestoque` (
  `cracha` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` bigint(11) DEFAULT NULL,
  `dataAdmissao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `controladorestoque`
--

INSERT INTO `controladorestoque` (`cracha`, `nome`, `cpf`, `dataAdmissao`) VALUES
(778322, 'Antônio Joarez dos Santos Junior', 2460702939, '03/01/2022'),
(1248645, 'iago', 15612156, '01/07/2021');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `operador` int(11) DEFAULT NULL,
  `produto` int(11) DEFAULT NULL,
  `tipo` text DEFAULT NULL,
  `dataHora` text DEFAULT NULL,
  `usuarioMovimentacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `operadorempilhadeira`
--

CREATE TABLE `operadorempilhadeira` (
  `id` int(11) NOT NULL,
  `nomeOperador` varchar(45) DEFAULT NULL,
  `dataNascimento` text DEFAULT NULL,
  `tempoServico` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `controlador` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `dataValidade` text DEFAULT NULL,
  `dataProducao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `controlador`, `nome`, `dataValidade`, `dataProducao`) VALUES
(1, NULL, 'alcatra ', ' 10/05/2028', '10/05/2027');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(45) DEFAULT NULL,
  `senha` text DEFAULT NULL,
  `tempoLogado` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nomeUsuario`, `senha`, `tempoLogado`) VALUES
(1, '', 'seila', '5'),
(2, '', 'seila', '5'),
(3, '', 'seila', '5'),
(4, '', 'seila', '5 horas'),
(5, '', 'seila', '5 horas'),
(6, '', '123', '10 MIN'),
(7, '', '123', '100 min'),
(8, '', '123', '100 min'),
(9, '', '123', '100 min'),
(10, '', '654564', '10 min'),
(11, '', '654564', '10 min'),
(12, '', '654564', '10 min'),
(13, 'aaa', 'aaa', 'aa');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `controladorestoque`
--
ALTER TABLE `controladorestoque`
  ADD PRIMARY KEY (`cracha`);

--
-- Índices para tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produto` (`produto`),
  ADD KEY `operador` (`operador`),
  ADD KEY `usuarioMovimentacao` (`usuarioMovimentacao`);

--
-- Índices para tabela `operadorempilhadeira`
--
ALTER TABLE `operadorempilhadeira`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `controlador` (`controlador`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `controladorestoque`
--
ALTER TABLE `controladorestoque`
  MODIFY `cracha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1248646;

--
-- AUTO_INCREMENT de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `operadorempilhadeira`
--
ALTER TABLE `operadorempilhadeira`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD CONSTRAINT `movimentacoes_ibfk_1` FOREIGN KEY (`produto`) REFERENCES `produto` (`id`),
  ADD CONSTRAINT `movimentacoes_ibfk_2` FOREIGN KEY (`operador`) REFERENCES `operadorempilhadeira` (`id`),
  ADD CONSTRAINT `movimentacoes_ibfk_3` FOREIGN KEY (`usuarioMovimentacao`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`controlador`) REFERENCES `controladorestoque` (`cracha`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
