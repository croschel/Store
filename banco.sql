-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 17/07/2018 às 16:16
-- Versão do servidor: 10.1.32-MariaDB
-- Versão do PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `anexos`
--

CREATE TABLE `anexos` (
  `idAnexos` int(11) NOT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('dqckfbrf7psm5ecfoffvs6kvcnqsdakc', '10.12.125.17', 1530915190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303931353032363b6e6f6d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('0htglrpp2f3pr0rbcuv57b4unfhe9esd', '10.12.125.17', 1530915250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303931353235303b),
('q1dnmmhi2ghghd7pe4u1q6dqoi0ljd01', '10.12.125.17', 1530915250, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303931353235303b),
('d1pm0dveu76i4edpvvgib14qehh7rp7s', '10.12.125.17', 1531144707, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313134343730373b6e6f6d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('m0jdt2rarn85a9vmtm3jdtkcavhlh5s7', '10.12.125.17', 1531145440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313134353434303b6e6f6d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('f2trsq34vrbe64m6ucbjtjeieju6453v', '10.12.125.17', 1531145440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313134353434303b6e6f6d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('uuus7eq8pdubj96mercg52b11fj7jo2h', '10.12.124.190', 1531224803, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313232343830333b),
('ung5fsd4daj394jnbbs0biqtamra8jvr', '10.12.124.190', 1531226009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313232363030393b),
('29ni4tmdg0pmk2j9tpkl9eqhhdsmihm6', '10.12.124.190', 1531226009, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313232363030393b),
('1pore6puv5maalruqkm2endrr8qc4ss1', '10.12.124.40', 1531323827, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313332333832373b),
('2gdamig5pbbdpsjutkndmcsl2lkjp4pj', '10.12.124.190', 1531336640, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313333363634303b),
('nb6p085l07ae02jtije8pe83hkgpscut', '10.12.124.190', 1531336984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313333363938343b),
('834u8ufsm3tsejgc9pggkl39emp8je13', '10.12.124.190', 1531337286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313333373238363b),
('r40oahe5ome673lbqrvs0chdop7d1532', '10.12.124.40', 1531337180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313333373138303b),
('d9dkdbvkfipbtdcp32qsrtvd80detrst', '10.12.124.190', 1531337253, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313333373235333b),
('juucl2p5vagtmcqb0p2mjk9b7bvfv8or', '10.12.124.190', 1531337616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313333373631363b6e6f6d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('3tdr1ccqj1kcro1tlo7qj6sg0nriskpu', '10.12.124.190', 1531338216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313333383231363b6e6f6d657c733a353a2261646d696e223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('ch04cld34kat7ceijgp4phqfindhimic', '10.12.124.190', 1531340098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313334303039383b6e6f6d657c733a31343a2243616971756520526f736368656c223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b636c69656e74655f69647c733a313a2232223b636f6e65637461646f7c623a313b),
('k4isncj6m2dr6s2u7fa87obe5cb1if8u', '10.12.124.190', 1531341067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313334313036373b6e6f6d657c733a31343a2243616971756520526f736368656c223b636c69656e74655f69647c733a313a2232223b636f6e65637461646f7c623a313b),
('kpiabj1kn8ie34c0960p39n4u09rfoag', '10.12.124.190', 1531341101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313334313130313b),
('jegs3ot1ec6f970lts9auieijfhvvkkh', '10.12.124.190', 1531749463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313734393436333b6e6f6d657c733a31343a2243616971756520526f736368656c223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b69647c733a313a2231223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b636c69656e74655f69647c733a313a2232223b636f6e65637461646f7c623a313b),
('sj3u7r5kp99v07vci8j4ol59qtld9dt1', '10.12.124.190', 1531749886, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313734393838363b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('fbe86gmuqmun7ghljfuj4ffjs2hvevju', '10.12.124.190', 1531750201, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735303137383b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('cf0dbmsedrv00k6ac4b147jbjnetaf04', '10.12.124.152', 1531750908, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735303838313b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('4jp87ic6574tvsiapcl8l0m6br7bkv9n', '10.12.124.152', 1531751492, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735313439323b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b737563636573737c733a33313a2250726f6475746f2061646963696f6e61646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('2nvotdj858o7c2eq78dbio1ipsd0vv89', '10.12.124.152', 1531751812, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735313831323b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('t5et71t5vlrr2dcdqgfa3q8p4ld1nrj3', '10.12.124.152', 1531752146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735323134363b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b737563636573737c733a33323a225365727669c3a76f2061646963696f6e61646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('1g2r83p3lckiur0tpsaklbndur5dcq6j', '10.12.124.152', 1531752923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735323932333b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('825tnntp4oauajqcag793ihbk1ql7t61', '10.12.124.152', 1531753344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735333334343b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('sdl4gr5k55umphs2m5fm75ksl609opks', '10.12.124.152', 1531753177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735333137373b),
('j8v8rsmt41m1455ibldall7bseeaou34', '10.12.124.152', 1531753177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735333137373b),
('o3beegia35rkbpm7lut2kdsu6ijjhfeh', '10.12.124.152', 1531755515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735353531353b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('rbhi5biagcogm4sr2e3696nbt1uhq74h', '10.12.124.152', 1531753618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735333631383b),
('dh2uiceq13s0qk87mveum4a2lgnmflor', '10.12.124.152', 1531753618, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735333631383b),
('ibluvci65h3ibtc5usss1aqpce8a5u97', '10.12.124.152', 1531758910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313735383931303b),
('vum85ghgvp2e4i1ibsimkoavuf81gpbb', '10.12.124.152', 1531760330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313736303333303b6e6f6d657c733a31303a22536420466f6e73656361223b656d61696c7c733a31383a2262616e636164614032626c6f676c2e636f6d223b69647c733a313a2232223b7065726d697373616f7c733a313a2232223b6c6f6761646f7c623a313b),
('7rgghfv2g6sgjd6mudujraq8adhqu0ag', '10.12.124.152', 1531760330, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313736303333303b),
('hjir56te8t7b8uc3nn856d2tqo3b9h2o', '10.12.124.190', 1531836791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313833363533373b6e6f6d657c733a31343a2243616971756520526f736368656c223b656d61696c7c733a31393a2261646d72656465314032626c6f676c2e636f6d223b69647c733a313a2233223b7065726d697373616f7c733a313a2233223b6c6f6761646f7c623a313b636c69656e74655f69647c733a313a2232223b636f6e65637461646f7c623a313b737563636573737c733a32363a224f532061646963696f6e61646120636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL,
  `nomeCliente` varchar(255) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `pessoa_fisica` tinyint(1) NOT NULL DEFAULT '1',
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `clientes`
--

INSERT INTO `clientes` (`idClientes`, `nomeCliente`, `sexo`, `pessoa_fisica`, `documento`, `telefone`, `celular`, `email`, `dataCadastro`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `cep`) VALUES
(1, 'Chefe 1ª Seção', NULL, 1, '0001', '22222222', '', 's1@2blogl.com', '2018-07-11', 'Avenida Soldado Passarinho', '13070-905', 'Jd Chapadao', 'Campinas', 'SP', '13050-055'),
(2, 'Caique Roschel', NULL, 1, '41815622806', '78585484648', '', 'croschel000@gmail.com', '2018-07-11', 'Avenida Das Amoreiras, 4001', '4001', 'vila mimosa', 'Campinas', 'SP', '13050-055'),
(3, 'fulano', NULL, 1, '123456789', '757585855', '', 'fulano@2blogl.com', '2018-07-17', 'Avenida Soldado Passarinho', 'S/N', 'Jd Chapadao', 'Campinas', 'SP', '13050-055');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contas`
--

CREATE TABLE `contas` (
  `idContas` int(11) NOT NULL,
  `conta` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `documentos`
--

CREATE TABLE `documentos` (
  `idDocumentos` int(11) NOT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `emitente`
--

CREATE TABLE `emitente` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `idEquipamentos` int(11) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `num_serie` varchar(80) DEFAULT NULL,
  `modelo` varchar(80) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `tensao` varchar(45) DEFAULT NULL,
  `potencia` varchar(45) DEFAULT NULL,
  `voltagem` varchar(45) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `marcas_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipamentos_os`
--

CREATE TABLE `equipamentos_os` (
  `idEquipamentos_os` int(11) NOT NULL,
  `defeito_declarado` varchar(200) DEFAULT NULL,
  `defeito_encontrado` varchar(200) DEFAULT NULL,
  `solucao` varchar(45) DEFAULT NULL,
  `equipamentos_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_de_vendas`
--

CREATE TABLE `itens_de_vendas` (
  `idItens` int(11) NOT NULL,
  `subTotal` varchar(45) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `lancamentos`
--

CREATE TABLE `lancamentos` (
  `idLancamentos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT '0',
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  `categorias_id` int(11) DEFAULT NULL,
  `contas_id` int(11) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `idLogs` int(11) NOT NULL,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `marcas`
--

CREATE TABLE `marcas` (
  `idMarcas` int(11) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `os`
--

CREATE TABLE `os` (
  `idOs` int(11) NOT NULL,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` text,
  `defeito` text,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` text,
  `laudoTecnico` text,
  `valorTotal` varchar(15) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `permissoes` text,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:38:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";}', 1, '2014-09-03'),
(2, 'Bancada', 'a:38:{s:8:\"aCliente\";N;s:8:\"eCliente\";N;s:8:\"dCliente\";N;s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";N;s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";N;s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";N;s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";N;s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";N;s:6:\"eVenda\";N;s:6:\"dVenda\";N;s:6:\"vVenda\";N;s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";N;s:8:\"dArquivo\";N;s:8:\"vArquivo\";s:1:\"1\";s:11:\"aLancamento\";N;s:11:\"eLancamento\";N;s:11:\"dLancamento\";N;s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";N;s:9:\"cEmitente\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";N;s:8:\"rCliente\";N;s:8:\"rProduto\";N;s:8:\"rServico\";N;s:3:\"rOs\";N;s:6:\"rVenda\";N;s:11:\"rFinanceiro\";N;}', 1, '2018-07-11'),
(3, 'Supervisor', 'a:38:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:11:\"aLancamento\";N;s:11:\"eLancamento\";N;s:11:\"dLancamento\";N;s:11:\"vLancamento\";N;s:8:\"cUsuario\";N;s:9:\"cEmitente\";N;s:10:\"cPermissao\";N;s:7:\"cBackup\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";N;s:11:\"rFinanceiro\";N;}', 1, '2018-07-11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL,
  `saida` tinyint(1) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`idProdutos`, `descricao`, `unidade`, `precoCompra`, `precoVenda`, `estoque`, `estoqueMinimo`, `saida`, `entrada`) VALUES
(1, 'Placa de Rede', 'UN', '0.00', '0.00', 9, 1, 1, 1),
(2, 'Bateria Nobreak', 'UN', '54.79', '54.79', 6, 0, 1, 1),
(3, 'Fonte Alimentação', 'UN', '42.90', '42.90', 1, 0, 1, 1),
(4, 'Teclado', 'UN', '19.90', '19.90', 8, 0, 1, 1),
(5, 'HD 1 TB', 'UN', '199.49', '199.49', 2, 0, 1, 1),
(6, 'HD 2 TB', 'UN', '228.90', '228.90', 13, 0, 1, 1),
(7, 'Cabo usb Impressora', 'UN', '4.90', '4.90', 13, 0, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_os`
--

CREATE TABLE `produtos_os` (
  `idProdutos_os` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `servicos`
--

INSERT INTO `servicos` (`idServicos`, `nome`, `descricao`, `preco`) VALUES
(1, 'Troca de Fonte de Alimentação', 'Para o caso do computador não estar mais liga', '0.00'),
(2, 'troca de placa de rede', 'rede não funcionar', '0.00'),
(3, 'Troca de Memoria ram', '', '0.00'),
(4, 'Troca de HD', '', '0.00'),
(5, 'Troca de Placa Mãe', '', '0.00'),
(6, 'Troca de Placa de Video', '', '0.00'),
(7, 'Formatação', '', '0.00'),
(8, 'Configuração de Impressora', '', '0.00'),
(9, 'Manutenção de Impressora', '', '0.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos_os`
--

CREATE TABLE `servicos_os` (
  `idServicos_os` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`) VALUES
(1, 'Ten Roschel', '493453027', '41815622806', 'Rua Acima', '12', 'Alvorada', 'Campinas', 'SP', 'admin@admin.com', '$2y$10$lAW0AXb0JLZxR0yDdfcBcu3BN9c2AXKKjKTdug7Or0pr6cSGtgyGO', '(011) 97654-1889', '', 1, '2013-11-22', 1),
(2, 'Sd Fonseca', '37650364-6', '445545008-45', 'Avenida Soldado Passarinho', '22', 'Jd Chapadao', 'Campinas', 'SP', 'bancada@2blogl.com', '$2y$10$EjUQOVGNCz.PuQGfVL59tuB2J20xJo9PyyvmRyTgR7QAjz.Z0s6eG', '982214743', '', 1, '2018-07-11', 2),
(3, 'Julio Henrique Alves de Oliveira', '239930001', '13309592723', 'Avenida Soldado Passarinho', 'S/N', 'Jd Chapadao', 'Campinas', 'SP', 'admrede1@2blogl.com', '$2y$10$RP91YPSCH0a0URDZkQL3DOga81cy6mBGLDi0FnxXiPzGHB3TdtPc6', '78585484648', '', 1, '2018-07-17', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `idVendas` int(11) NOT NULL,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` varchar(45) DEFAULT NULL,
  `desconto` varchar(45) DEFAULT NULL,
  `faturado` tinyint(1) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`idAnexos`),
  ADD KEY `fk_anexos_os1` (`os_id`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategorias`);

--
-- Índices de tabela `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`);

--
-- Índices de tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`idContas`);

--
-- Índices de tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`idDocumentos`);

--
-- Índices de tabela `emitente`
--
ALTER TABLE `emitente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`idEquipamentos`),
  ADD KEY `fk_equipanentos_marcas1_idx` (`marcas_id`),
  ADD KEY `fk_equipanentos_clientes1_idx` (`clientes_id`);

--
-- Índices de tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD PRIMARY KEY (`idEquipamentos_os`),
  ADD KEY `fk_equipamentos_os_equipanentos1_idx` (`equipamentos_id`),
  ADD KEY `fk_equipamentos_os_os1_idx` (`os_id`);

--
-- Índices de tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD PRIMARY KEY (`idItens`),
  ADD KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  ADD KEY `fk_itens_de_vendas_produtos1` (`produtos_id`);

--
-- Índices de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`idLancamentos`),
  ADD KEY `fk_lancamentos_clientes1` (`clientes_id`),
  ADD KEY `fk_lancamentos_categorias1_idx` (`categorias_id`),
  ADD KEY `fk_lancamentos_contas1_idx` (`contas_id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`idLogs`);

--
-- Índices de tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarcas`);

--
-- Índices de tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`idOs`),
  ADD KEY `fk_os_clientes1` (`clientes_id`),
  ADD KEY `fk_os_usuarios1` (`usuarios_id`),
  ADD KEY `fk_os_lancamentos1` (`lancamento`);

--
-- Índices de tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`idPermissao`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProdutos`);

--
-- Índices de tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD PRIMARY KEY (`idProdutos_os`),
  ADD KEY `fk_produtos_os_os1` (`os_id`),
  ADD KEY `fk_produtos_os_produtos1` (`produtos_id`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServicos`);

--
-- Índices de tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD PRIMARY KEY (`idServicos_os`),
  ADD KEY `fk_servicos_os_os1` (`os_id`),
  ADD KEY `fk_servicos_os_servicos1` (`servicos_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idVendas`),
  ADD KEY `fk_vendas_clientes1` (`clientes_id`),
  ADD KEY `fk_vendas_usuarios1` (`usuarios_id`),
  ADD KEY `fk_vendas_lancamentos1` (`lancamentos_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `anexos`
--
ALTER TABLE `anexos`
  MODIFY `idAnexos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `idContas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `idDocumentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `idEquipamentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  MODIFY `idEquipamentos_os` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  MODIFY `idItens` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `idLancamentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `idLogs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarcas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `idOs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `idPermissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProdutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  MODIFY `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  MODIFY `idServicos_os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idVendas` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `fk_equipanentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipanentos_marcas1` FOREIGN KEY (`marcas_id`) REFERENCES `marcas` (`idMarcas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD CONSTRAINT `fk_equipamentos_os_equipanentos1` FOREIGN KEY (`equipamentos_id`) REFERENCES `equipamentos` (`idEquipamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipamentos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD CONSTRAINT `fk_itens_de_vendas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_de_vendas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `fk_lancamentos_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_contas1` FOREIGN KEY (`contas_id`) REFERENCES `contas` (`idContas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_lancamentos1` FOREIGN KEY (`lancamentos_id`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
