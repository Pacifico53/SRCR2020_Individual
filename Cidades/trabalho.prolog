%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SIST. REPR. CONHECIMENTO E RACIOCINIO - MiEI/3

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% Programacão em logica
% Resolução de problemas de pesquisa

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
% SICStus PROLOG: Declaracoes iniciais

:- set_prolog_flag( discontiguous_warnings,off ).
:- set_prolog_flag( single_var_warnings,off ).
:- set_prolog_flag( unknown,fail ).

:-dynamic cidade/6.
:-dynamic ligacao/5.

%--------------------------------- - - - - - - - - - -  -  -  -  -   -
%Cidade

cidade(1.0, 'Lisbon', 38.716667, -9.133333, 'Lisboa', 'primary').
cidade(2.0, 'Picotos', 41.192402, -8.619816, 'Porto', 'minor').
cidade(3.0, 'Braga', 41.550323, -8.420052, 'Braga', 'admin').
cidade(5.0, 'Setúbal', 38.533333, -8.9, 'Setúbal', 'admin').
cidade(6.0, 'Copeira', 40.176915, -8.424018, 'Coimbra', 'minor').
cidade(8.0, 'Portimão', 37.136636, -8.539796, 'Faro', 'minor').
cidade(9.0, 'Évora', 38.566667, -7.9, 'Évora', 'admin').
cidade(10.0, 'Aveiro', 40.644269, -8.645535, 'Aveiro', 'admin').
cidade(11.0, 'Leiria', 39.747724, -8.804995, 'Leiria', 'admin').
cidade(12.0, 'Faro', 37.019367, -7.932229, 'Faro', 'admin').
cidade(13.0, 'Beja', 38.015064, -7.863227, 'Beja', 'admin').
cidade(14.0, 'Bragança', 41.805817, -6.757189, 'Bragança', 'admin').
cidade(15.0, 'Castelo Branco', 39.822191, -7.490869, 'Castelo Branco', 'admin').
cidade(16.0, 'Guarda', 40.537328, -7.265749, 'Guarda', 'admin').
cidade(17.0, 'Santarém', 39.233333, -8.683333, 'Santarém', 'admin').
cidade(18.0, 'Viseu', 40.661014, -7.909714, 'Viseu', 'admin').
cidade(19.0, 'Covilhã', 40.286011, -7.503961, 'Castelo Branco', 'minor').
cidade(20.0, 'Vila Marim', 41.304961, -7.779743, 'Vila Real', 'minor').
cidade(21.0, 'Portalegre', 39.297178, -7.430151, 'Portalegre', 'admin').
cidade(22.0, 'Viana do Castelo', 41.693234, -8.832869, 'Viana do Castelo', 'admin').
cidade(25.0, 'Lagos', 37.101782, -8.674242, 'Faro', 'minor').
cidade(26.0, 'Paredes de Coura', 41.910125, -8.560938, 'Viana do Castelo', 'minor').
cidade(27.0, 'São João da Pesqueira', 41.148051, -7.404888, 'Viseu', 'minor').
cidade(28.0, 'São João da Madeira', 40.900956, -8.499744, 'Aveiro', 'minor').
cidade(29.0, 'Fornos de Algodres', 40.628072, -7.540638, 'Guarda', 'minor').
cidade(30.0, 'Castelo de Paiva', 41.063007, -8.264696, 'Aveiro', 'minor').
cidade(31.0, 'Portel', 38.30697, -7.702435, 'Évora', 'minor').
cidade(32.0, 'Porto', 41.149606, -8.610993, 'Porto', 'admin').
cidade(33.0, 'Sertã', 39.808461, -8.098829, 'Castelo Branco', 'minor').
cidade(34.0, 'Vila do Bispo', 37.083172, -8.911438, 'Faro', 'minor').
cidade(35.0, 'Fronteira', 39.056291, -7.648679, 'Portalegre', 'minor').
cidade(36.0, 'Alfândega da Fé', 41.343149, -6.961124, 'Bragança', 'minor').
cidade(37.0, 'Celorico da Beira', 40.637232, -7.39037, 'Guarda', 'minor').
cidade(38.0, 'Alcoutim', 37.474317, -7.472282, 'Faro', 'minor').
cidade(39.0, 'Arronches', 39.122417, -7.286192, 'Portalegre', 'minor').
cidade(40.0, 'Amarante', 41.272711, -8.082455, 'Porto', 'minor').
cidade(41.0, 'Tabuaço', 41.116147, -7.567934, 'Viseu', 'minor').
cidade(42.0, 'Gouveia', 40.494455, -7.592145, 'Guarda', 'minor').
cidade(43.0, 'Aguiar da Beira', 40.817264, -7.544307, 'Guarda', 'minor').
cidade(44.0, 'Idanha-a-Nova', 39.923157, -7.240819, 'Castelo Branco', 'minor').
cidade(45.0, 'Ribeira de Pena', 41.52147, -7.802372, 'Vila Real', 'minor').
cidade(46.0, 'Seia', 40.415099, -7.708586, 'Guarda', 'minor').
cidade(47.0, 'Rio Maior', 39.337325, -8.939063, 'Santarém', 'minor').
cidade(48.0, 'Condeixa-a-Nova', 40.115733, -8.498336, 'Coimbra', 'minor').
cidade(49.0, 'Mação', 39.555734, -7.994215, 'Santarém', 'minor').
cidade(50.0, 'Lousada', 41.278223, -8.279926, 'Porto', 'minor').
cidade(51.0, 'Trancoso', 40.783291, -7.350157, 'Guarda', 'minor').
cidade(52.0, 'Estarreja', 40.756482, -8.572074, 'Aveiro', 'minor').
cidade(53.0, 'Moita', 38.650779, -8.990383, 'Setúbal', 'minor').
cidade(54.0, 'Ponte de Lima', 41.767188, -8.583926, 'Viana do Castelo', 'minor').
cidade(55.0, 'Guimarães', 41.444435, -8.296189, 'Braga', 'minor').
cidade(56.0, 'Sobral de Monte Agraço', 39.019579, -9.150809, 'Lisboa', 'minor').
cidade(57.0, 'Seixal', 38.64008, -9.101412, 'Setúbal', 'minor').
cidade(58.0, 'Almeirim', 39.209028, -8.616426, 'Santarém', 'minor').
cidade(59.0, 'Cantanhede', 40.346708, -8.594195, 'Coimbra', 'minor').
cidade(60.0, 'Elvas', 38.881502, -7.162817, 'Portalegre', 'minor').
cidade(61.0, 'Ponte da Barca', 41.804509, -8.415541, 'Viana do Castelo', 'minor').
cidade(62.0, 'Golegã', 39.40474, -8.48625, 'Santarém', 'minor').
cidade(63.0, 'Anadia', 40.438409, -8.43352, 'Aveiro', 'minor').
cidade(64.0, 'Moura', 38.140095, -7.44856, 'Beja', 'minor').
cidade(65.0, 'Avis', 39.05391, -7.891556, 'Portalegre', 'minor').
cidade(66.0, 'Águeda', 40.577205, -8.444418, 'Aveiro', 'minor').
cidade(67.0, 'Valongo', 41.195007, -8.51027, 'Porto', 'minor').
cidade(68.0, 'Caminha', 41.874874, -8.837321, 'Viana do Castelo', 'minor').
cidade(69.0, 'Ourique', 37.653897, -8.225687, 'Beja', 'minor').
cidade(70.0, 'Sardoal', 39.535994, -8.161413, 'Santarém', 'minor').
cidade(71.0, 'Vila do Conde', 41.354811, -8.743397, 'Porto', 'minor').
cidade(72.0, 'Alijó', 41.276781, -7.474883, 'Vila Real', 'minor').
cidade(73.0, 'Monchique', 37.317748, -8.555294, 'Faro', 'minor').
cidade(74.0, 'Cabeceiras de Basto', 41.514312, -7.989415, 'Braga', 'minor').
cidade(75.0, 'Aljezur', 37.319152, -8.803305, 'Faro', 'minor').
cidade(76.0, 'Castanheira de Pêra', 40.007169, -8.210484, 'Leiria', 'minor').
cidade(77.0, 'Melgaço', 42.113371, -8.260161, 'Viana do Castelo', 'minor').
cidade(78.0, 'Gavião', 39.464431, -7.934494, 'Portalegre', 'minor').
cidade(79.0, 'Monforte', 39.053297, -7.437582, 'Portalegre', 'minor').
cidade(80.0, 'Vila Viçosa', 38.777696, -7.417927, 'Évora', 'minor').
cidade(81.0, 'Almodôvar', 37.512792, -8.060077, 'Beja', 'minor').
cidade(82.0, 'Redondo', 38.648716, -7.547082, 'Évora', 'minor').
cidade(83.0, 'Vila Nova de Cerveira', 41.941184, -8.742304, 'Viana do Castelo', 'minor').
cidade(84.0, 'Mafra', 38.937933, -9.327565, 'Lisboa', 'minor').
cidade(85.0, 'Lousã', 40.111911, -8.24703, 'Coimbra', 'minor').
cidade(86.0, 'Amadora', 38.759711, -9.239708, 'Lisboa', 'minor').
cidade(87.0, 'Pinhel', 40.774029, -7.06675, 'Guarda', 'minor').
cidade(88.0, 'Estremoz', 38.844316, -7.585854, 'Évora', 'minor').
cidade(89.0, 'Penamacor', 40.168946, -7.169867, 'Castelo Branco', 'minor').
cidade(90.0, 'Penalva do Castelo', 40.676273, -7.698391, 'Viseu', 'minor').
cidade(91.0, 'Crato', 39.287571, -7.645494, 'Portalegre', 'minor').
cidade(92.0, 'Nelas', 40.532157, -7.851525, 'Viseu', 'minor').
cidade(93.0, 'Aljustrel', 37.877594, -8.165159, 'Beja', 'minor').
cidade(94.0, 'Esposende', 41.536098, -8.782011, 'Braga', 'minor').
cidade(95.0, 'Alcochete', 38.755335, -8.960861, 'Setúbal', 'minor').
cidade(96.0, 'Sever do Vouga', 40.734588, -8.367219, 'Aveiro', 'minor').
cidade(97.0, 'Sesimbra', 38.444513, -9.101236, 'Setúbal', 'minor').
cidade(98.0, 'São Pedro do Sul', 40.75537, -8.072646, 'Viseu', 'minor').
cidade(99.0, 'Lourinhã', 39.233333, -9.316667, 'Lisboa', 'minor').
cidade(100.0, 'Santa Comba Dão', 40.398559, -8.131601, 'Viseu', 'minor').
cidade(101.0, 'Entroncamento', 39.466667, -8.466667, 'Santarém', 'minor').
cidade(102.0, 'Armamar', 41.107646, -7.691386, 'Viseu', 'minor').
cidade(103.0, 'Arcos de Valdevez', 41.848912, -8.410905, 'Viana do Castelo', 'minor').
cidade(104.0, 'Paços de Ferreira', 41.276571, -8.376174, 'Porto', 'minor').
cidade(105.0, 'Fafe', 41.454227, -8.167998, 'Braga', 'minor').
cidade(106.0, 'Ponte de Sôr', 39.249642, -8.010086, 'Portalegre', 'minor').
cidade(107.0, 'Moimenta da Beira', 40.983828, -7.617653, 'Viseu', 'minor').
cidade(108.0, 'Santa Marta de Penaguião', 41.211161, -7.800111, 'Vila Real', 'minor').
cidade(109.0, 'Murça', 41.405997, -7.454846, 'Vila Real', 'minor').
cidade(110.0, 'Sernancelhe', 40.898706, -7.493419, 'Viseu', 'minor').
cidade(111.0, 'Vila Real', 41.30062, -7.744129, 'Vila Real', 'admin').
cidade(112.0, 'Vinhais', 41.835094, -7.005007, 'Bragança', 'minor').
cidade(113.0, 'Alcácer do Sal', 38.373258, -8.514436, 'Setúbal', 'minor').
cidade(114.0, 'Ourém', 39.641675, -8.591899, 'Santarém', 'minor').
cidade(115.0, 'Vila Nova de Gaia', 41.133633, -8.617421, 'Porto', 'minor').
cidade(116.0, 'Castelo de Vide', 39.414713, -7.454021, 'Portalegre', 'minor').
cidade(117.0, 'Vila Nova da Barquinha', 39.45, -8.433333, 'Santarém', 'minor').
cidade(118.0, 'Loulé', 37.137722, -8.019684, 'Faro', 'minor').
cidade(119.0, 'Lamego', 41.097407, -7.809907, 'Viseu', 'minor').
cidade(120.0, 'Alvaiázere', 39.822559, -8.379994, 'Leiria', 'minor').
cidade(121.0, 'Sátão', 40.741775, -7.732855, 'Viseu', 'minor').
cidade(122.0, 'Albergaria-a-Velha', 40.693185, -8.479936, 'Aveiro', 'minor').
cidade(123.0, 'Matosinhos', 41.18207, -8.689076, 'Porto', 'minor').
cidade(124.0, 'Alandroal', 38.702005, -7.403094, 'Évora', 'minor').
cidade(125.0, 'Proença-a-Nova', 39.752204, -7.923903, 'Castelo Branco', 'minor').
cidade(126.0, 'Lagoa', 37.135349, -8.453188, 'Faro', 'minor').
cidade(127.0, 'Montijo', 38.706747, -8.973885, 'Setúbal', 'minor').
cidade(128.0, 'Felgueiras', 41.368058, -8.193961, 'Porto', 'minor').
cidade(129.0, 'Nazaré', 39.602891, -9.068355, 'Leiria', 'minor').
cidade(130.0, 'Miranda do Corvo', 40.09318, -8.332608, 'Coimbra', 'minor').
cidade(131.0, 'Penedono', 40.988749, -7.393859, 'Viseu', 'minor').
cidade(132.0, 'Vale de Cambra', 40.849701, -8.393892, 'Aveiro', 'minor').
cidade(133.0, 'Vila Flor', 41.309043, -7.153784, 'Bragança', 'minor').
cidade(134.0, 'Figueiró dos Vinhos', 39.904132, -8.275107, 'Leiria', 'minor').
cidade(135.0, 'Santiago do Cacém', 38.016935, -8.69475, 'Setúbal', 'minor').
cidade(136.0, 'Trofa', 41.322784, -8.572016, 'Porto', 'minor').
cidade(137.0, 'Penafiel', 41.208348, -8.282847, 'Porto', 'minor').
cidade(138.0, 'Penacova', 40.268837, -8.282374, 'Coimbra', 'minor').
cidade(139.0, 'Pedrógão Grande', 39.918345, -8.1459, 'Leiria', 'minor').
cidade(140.0, 'Oleiros', 39.918934, -7.913698, 'Castelo Branco', 'minor').
cidade(141.0, 'Sousel', 38.952894, -7.675286, 'Portalegre', 'minor').
cidade(142.0, 'Arraiolos', 38.723626, -7.984777, 'Évora', 'minor').
cidade(143.0, 'Poiares', 40.210256, -8.257464, 'Coimbra', 'minor').
cidade(144.0, 'Famalicão', 41.407967, -8.51978, 'Braga', 'minor').
cidade(145.0, 'Vila Verde', 41.647294, -8.43715, 'Braga', 'minor').
cidade(146.0, 'Terras de Bouro', 41.717691, -8.30888, 'Braga', 'minor').
cidade(147.0, 'Manteigas', 40.402799, -7.539769, 'Guarda', 'minor').
cidade(148.0, 'Sintra', 38.800971, -9.378257, 'Lisboa', 'minor').
cidade(149.0, 'Vizela', 41.390962, -8.263888, 'Braga', 'minor').
cidade(150.0, 'Vila Velha de Ródão', 39.666667, -7.7, 'Castelo Branco', 'minor').
cidade(151.0, 'Benavente', 38.979192, -8.807591, 'Santarém', 'minor').
cidade(152.0, 'Maia', 41.235739, -8.619897, 'Porto', 'minor').
cidade(153.0, 'Santo Tirso', 41.342567, -8.477456, 'Porto', 'minor').
cidade(154.0, 'Oeiras', 38.691049, -9.310847, 'Lisboa', 'minor').
cidade(155.0, 'Celorico de Basto', 41.387141, -8.00101, 'Braga', 'minor').
cidade(156.0, 'Bombarral', 39.267231, -9.157952, 'Leiria', 'minor').
cidade(157.0, 'Barreiro', 38.663137, -9.072395, 'Setúbal', 'minor').
cidade(158.0, 'Belmonte', 40.359303, -7.34869, 'Castelo Branco', 'minor').
cidade(159.0, 'Montemor-o-Velho', 40.172873, -8.686162, 'Coimbra', 'minor').
cidade(160.0, 'Espinho', 41.007628, -8.641251, 'Aveiro', 'minor').
cidade(161.0, 'Oliveira do Hospital', 40.361796, -7.86014, 'Coimbra', 'minor').
cidade(162.0, 'Oliveira de Frades', 40.733567, -8.174807, 'Viseu', 'minor').
cidade(163.0, 'Oliveira de Azemeis', 40.84101, -8.475554, 'Aveiro', 'minor').
cidade(164.0, 'Oliveira do Bairro', 40.514596, -8.493858, 'Aveiro', 'minor').
cidade(165.0, 'Viana do Alentejo', 38.33458, -8.004399, 'Évora', 'minor').
cidade(166.0, 'Carrazeda de Anciães', 41.242466, -7.307206, 'Bragança', 'minor').
cidade(167.0, 'Ovar', 40.861753, -8.626014, 'Aveiro', 'minor').
cidade(168.0, 'Torres Novas', 39.481143, -8.539493, 'Santarém', 'minor').
cidade(169.0, 'Torres Vedras', 39.091089, -9.258602, 'Lisboa', 'minor').
cidade(170.0, 'Cartaxo', 39.160221, -8.787408, 'Santarém', 'minor').
cidade(171.0, 'Mangualde', 40.604248, -7.76115, 'Viseu', 'minor').
cidade(172.0, 'Vila Nova de Paiva', 40.852907, -7.727911, 'Viseu', 'minor').
cidade(173.0, 'Paredes', 41.204853, -8.33147, 'Porto', 'minor').
cidade(174.0, 'Vidigueira', 38.209949, -7.800504, 'Beja', 'minor').
cidade(175.0, 'Chamusca', 39.35722, -8.48151, 'Santarém', 'minor').
cidade(176.0, 'Trofa', 41.487817, -7.961286, 'Braga', 'minor').
cidade(177.0, 'Macedo de Cavaleiros', 41.538161, -6.9611, 'Bragança', 'minor').
cidade(178.0, 'Resende', 41.105822, -7.966497, 'Viseu', 'minor').
cidade(179.0, 'Póvoa de Lanhoso', 41.577713, -8.268468, 'Braga', 'minor').
cidade(180.0, 'Feira', 40.925348, -8.542769, 'Aveiro', 'minor').
cidade(181.0, 'Azambuja', 39.07029, -8.86822, 'Lisboa', 'minor').
cidade(182.0, 'Vieira do Minho', 41.632923, -8.142521, 'Braga', 'minor').
cidade(183.0, 'Batalha', 39.660252, -8.824751, 'Leiria', 'minor').
cidade(184.0, 'Alcanena', 39.459005, -8.668924, 'Santarém', 'minor').
cidade(185.0, 'Palmela', 38.569021, -8.901255, 'Setúbal', 'minor').
cidade(186.0, 'Ferreira do Zêzere', 39.694064, -8.292131, 'Santarém', 'minor').
cidade(187.0, 'Arouca', 40.930568, -8.24488, 'Aveiro', 'minor').
cidade(188.0, 'Vila de Rei', 39.67604, -8.145768, 'Castelo Branco', 'minor').
cidade(189.0, 'Tomar', 39.601987, -8.409242, 'Santarém', 'minor').
cidade(190.0, 'Tondela', 40.516815, -8.080866, 'Viseu', 'minor').
cidade(191.0, 'Constância', 39.466667, -8.333333, 'Santarém', 'minor').
cidade(192.0, 'Vila Pouca de Aguiar', 41.500176, -7.64383, 'Vila Real', 'minor').
cidade(193.0, 'Almada', 38.679018, -9.156904, 'Setúbal', 'minor').
cidade(194.0, 'Almeida', 40.725672, -6.906137, 'Guarda', 'minor').
cidade(195.0, 'Alvito', 38.256109, -7.991584, 'Beja', 'minor').
cidade(196.0, 'Soure', 40.05989, -8.626053, 'Coimbra', 'minor').
cidade(197.0, 'Alenquer', 39.053151, -9.009282, 'Lisboa', 'minor').
cidade(198.0, 'Mértola', 37.643041, -7.661104, 'Beja', 'minor').
cidade(199.0, 'Mesão Frio', 41.163167, -7.873534, 'Vila Real', 'minor').
cidade(200.0, 'Mourão', 38.383562, -7.341888, 'Évora', 'minor').
cidade(201.0, 'Valpaços', 41.607461, -7.310876, 'Vila Real', 'minor').
cidade(202.0, 'Pombal', 39.916738, -8.628474, 'Leiria', 'minor').
cidade(203.0, 'Mogadouro', 41.340203, -6.711347, 'Bragança', 'minor').
cidade(204.0, 'Póvoa de Varzim', 41.38344, -8.763637, 'Porto', 'minor').
cidade(205.0, 'Baião', 41.162735, -8.034704, 'Porto', 'minor').
cidade(206.0, 'Mortágua', 40.396746, -8.232341, 'Viseu', 'minor').
cidade(207.0, 'Tábua', 40.362074, -8.02936, 'Coimbra', 'minor').
cidade(208.0, 'Cascais', 38.69745, -9.423141, 'Lisboa', 'minor').
cidade(209.0, 'Barcelos', 41.538763, -8.615053, 'Braga', 'minor').
cidade(210.0, 'Boticas', 41.689874, -7.665938, 'Vila Real', 'minor').
cidade(211.0, 'Sabrosa', 41.267017, -7.576007, 'Vila Real', 'minor').
cidade(212.0, 'Montalegre', 41.823569, -7.789714, 'Vila Real', 'minor').
cidade(213.0, 'Gondomar', 41.144536, -8.532229, 'Porto', 'minor').
cidade(214.0, 'Freixo de Espada à Cinta', 41.090327, -6.806478, 'Bragança', 'minor').
cidade(215.0, 'Mora', 38.943515, -8.164337, 'Évora', 'minor').
cidade(216.0, 'Vendas Novas', 38.677056, -8.457924, 'Évora', 'minor').
cidade(217.0, 'Vila Nova de Foz Côa', 41.083333, -7.2, 'Guarda', 'minor').
cidade(218.0, 'Caldas da Rainha', 39.403255, -9.138387, 'Leiria', 'minor').
cidade(219.0, 'Marvão', 39.393912, -7.376861, 'Portalegre', 'minor').
cidade(220.0, 'Vimioso', 41.584726, -6.52767, 'Bragança', 'minor').
cidade(221.0, 'Odivelas', 38.795234, -9.187387, 'Lisboa', 'minor').
cidade(222.0, 'Odemira', 37.598106, -8.638886, 'Beja', 'minor').
cidade(223.0, 'Peniche', 39.357486, -9.380439, 'Leiria', 'minor').
cidade(224.0, 'Vagos', 40.555998, -8.68175, 'Aveiro', 'minor').
cidade(225.0, 'Marco de Canavezes', 41.183887, -8.148641, 'Porto', 'minor').
cidade(226.0, 'Coruche', 38.959546, -8.525235, 'Santarém', 'minor').
cidade(227.0, 'Coimbra', 40.205642, -8.419551, 'Coimbra', 'admin').
cidade(228.0, 'Barrancos', 38.134462, -6.976042, 'Beja', 'minor').
cidade(229.0, 'Montemor-o-Novo', 38.648117, -8.214549, 'Évora', 'minor').
cidade(230.0, 'Mêda', 40.966352, -7.261634, 'Guarda', 'minor').
cidade(231.0, 'Óbidos', 39.360551, -9.156696, 'Leiria', 'minor').
cidade(232.0, 'Góis', 40.157353, -8.110067, 'Coimbra', 'minor').
cidade(233.0, 'Reguengos de Monsaraz', 38.425293, -7.534945, 'Évora', 'minor').
cidade(234.0, 'Torre de Moncorvo', 41.174537, -7.05364, 'Bragança', 'minor').
cidade(235.0, 'Murtosa', 40.736948, -8.637697, 'Aveiro', 'minor').
cidade(236.0, 'Alcobaça', 39.552233, -8.977495, 'Leiria', 'minor').
cidade(237.0, 'Figueira da Foz', 40.150852, -8.861786, 'Coimbra', 'minor').
cidade(238.0, 'Figueira de Castelo Rodrigo', 40.892619, -6.963502, 'Guarda', 'minor').
cidade(239.0, 'Abrantes', 39.466667, -8.2, 'Santarém', 'minor').
cidade(240.0, 'Arruda dos Vinhos', 38.984106, -9.077463, 'Lisboa', 'minor').
cidade(241.0, 'Fundão', 40.140247, -7.501348, 'Castelo Branco', 'minor').
cidade(242.0, 'Tarouca', 41.014444, -7.781432, 'Viseu', 'minor').
cidade(243.0, 'Ílhavo', 40.599896, -8.667325, 'Aveiro', 'minor').
cidade(244.0, 'Alpiarça', 39.257116, -8.581866, 'Santarém', 'minor').
cidade(245.0, 'Albufeira', 37.090205, -8.25079, 'Faro', 'minor').
cidade(246.0, 'Penela', 40.033333, -8.383333, 'Coimbra', 'minor').
cidade(247.0, 'Valença', 42.03104, -8.645953, 'Viana do Castelo', 'minor').
cidade(248.0, 'Amares', 41.630907, -8.351166, 'Braga', 'minor').
cidade(249.0, 'São Brás de Alportel', 37.1531, -7.887515, 'Faro', 'minor').
cidade(250.0, 'Pampilhosa da Serra', 40.046198, -7.951824, 'Coimbra', 'minor').
cidade(251.0, 'Tavira', 37.127338, -7.648609, 'Faro', 'minor').
cidade(252.0, 'Nisa', 39.514989, -7.649077, 'Portalegre', 'minor').
cidade(253.0, 'Alter do Chão', 39.198712, -7.658298, 'Portalegre', 'minor').
cidade(254.0, 'Castro Verde', 37.698282, -8.085812, 'Beja', 'minor').
cidade(255.0, 'Mealhada', 40.378063, -8.449912, 'Aveiro', 'minor').
cidade(256.0, 'Cuba', 38.165436, -7.892402, 'Beja', 'minor').
cidade(257.0, 'Vouzela', 40.723613, -8.112833, 'Viseu', 'minor').
cidade(258.0, 'Vila Franca de Xira', 38.955249, -8.98966, 'Lisboa', 'minor').
cidade(259.0, 'Marinha Grande', 39.747691, -8.932284, 'Leiria', 'minor').
cidade(260.0, 'Cinfães', 41.071969, -8.089991, 'Viseu', 'minor').
cidade(261.0, 'Borba', 38.80553, -7.45465, 'Évora', 'minor').
cidade(262.0, 'Mira', 40.428924, -8.737462, 'Coimbra', 'minor').
cidade(263.0, 'Silves', 37.189213, -8.438217, 'Faro', 'minor').
cidade(264.0, 'Grândola', 38.177181, -8.566746, 'Setúbal', 'minor').
cidade(265.0, 'Campo Maior', 39.017742, -7.064967, 'Portalegre', 'minor').
cidade(266.0, 'Ferreira do Alentejo', 38.05, -8.033333, 'Beja', 'minor').
cidade(267.0, 'Miranda do Douro', 41.496921, -6.273077, 'Bragança', 'minor').
cidade(268.0, 'Mirandela', 41.487385, -7.186949, 'Bragança', 'minor').
cidade(269.0, 'Chaves', 41.740186, -7.468789, 'Vila Real', 'minor').
cidade(270.0, 'Sines', 37.956215, -8.869788, 'Setúbal', 'minor').
cidade(271.0, 'Mondim de Basto', 41.411566, -7.954414, 'Vila Real', 'minor').
cidade(272.0, 'Monção', 42.078471, -8.481452, 'Viana do Castelo', 'minor').
cidade(273.0, 'Castro Marim', 37.220683, -7.4435, 'Faro', 'minor').
cidade(274.0, 'Castro Daire', 40.898399, -7.933805, 'Viseu', 'minor').
cidade(275.0, 'Arganil', 40.218261, -8.054029, 'Coimbra', 'minor').
cidade(276.0, 'Olhão', 37.0286, -7.841101, 'Faro', 'minor').
cidade(277.0, 'Cadaval', 39.242977, -9.103271, 'Lisboa', 'minor').
cidade(278.0, 'Loures', 38.829082, -9.168106, 'Lisboa', 'minor').
cidade(279.0, 'Salvaterra de Magos', 39.027881, -8.793502, 'Santarém', 'minor').
cidade(280.0, 'Peso da Régua', 41.164912, -7.787034, 'Vila Real', 'minor').
cidade(281.0, 'Serpa', 37.945811, -7.597537, 'Beja', 'minor').
cidade(282.0, 'Sabugal', 40.351267, -7.091036, 'Guarda', 'minor').
cidade(283.0, 'Ansião', 39.911774, -8.435683, 'Leiria', 'minor').
cidade(284.0, 'Vila Real de Santo António', 37.194999, -7.417658, 'Faro', 'minor').
cidade(285.0, 'Porto de Mós', 39.601911, -8.818389, 'Leiria', 'minor').

ligacao(1.0, 'Lisbon', 53.0, 'Moita', 15.740371991792431).
ligacao(1.0, 'Lisbon', 57.0, 'Seixal', 8.297300048811405).
ligacao(1.0, 'Lisbon', 86.0, 'Amadora', 11.475376490991541).
ligacao(1.0, 'Lisbon', 95.0, 'Alcochete', 17.675351483916916).
ligacao(1.0, 'Lisbon', 127.0, 'Montijo', 15.97562865867894).
ligacao(1.0, 'Lisbon', 154.0, 'Oeiras', 17.935300978796036).
ligacao(1.0, 'Lisbon', 157.0, 'Barreiro', 8.111042315263953).
ligacao(1.0, 'Lisbon', 193.0, 'Almada', 4.441890635754282).
ligacao(1.0, 'Lisbon', 221.0, 'Odivelas', 9.536565631819363).
ligacao(1.0, 'Lisbon', 278.0, 'Loures', 11.767027557543855).
ligacao(2.0, 'Picotos', 32.0, 'Porto', 4.369602893856861).
ligacao(2.0, 'Picotos', 67.0, 'Valongo', 10.95769690263422).
ligacao(2.0, 'Picotos', 115.0, 'Vila Nova de Gaia', 5.881778120602454).
ligacao(2.0, 'Picotos', 123.0, 'Matosinhos', 7.002640804724991).
ligacao(2.0, 'Picotos', 136.0, 'Trofa', 13.886794419159287).
ligacao(2.0, 'Picotos', 152.0, 'Maia', 4.333707569737594).
ligacao(2.0, 'Picotos', 160.0, 'Espinho', 18.60131455059068).
ligacao(2.0, 'Picotos', 213.0, 'Gondomar', 9.981300779457596).
ligacao(3.0, 'Braga', 55.0, 'Guimarães', 16.295493644870064).
ligacao(3.0, 'Braga', 144.0, 'Famalicão', 17.38128439442839).
ligacao(3.0, 'Braga', 145.0, 'Vila Verde', 9.846682916089406).
ligacao(3.0, 'Braga', 179.0, 'Póvoa de Lanhoso', 15.403870018927106).
ligacao(3.0, 'Braga', 209.0, 'Barcelos', 19.534334798246835).
ligacao(3.0, 'Braga', 248.0, 'Amares', 10.601444265759458).
ligacao(5.0, 'Setúbal', 53.0, 'Moita', 14.819800810064926).
ligacao(5.0, 'Setúbal', 127.0, 'Montijo', 18.849776821225287).
ligacao(5.0, 'Setúbal', 185.0, 'Palmela', 3.571005977312316).
ligacao(6.0, 'Copeira', 48.0, 'Condeixa-a-Nova', 9.626215376772048).
ligacao(6.0, 'Copeira', 85.0, 'Lousã', 18.854779807783526).
ligacao(6.0, 'Copeira', 130.0, 'Miranda do Corvo', 12.396506897106411).
ligacao(6.0, 'Copeira', 138.0, 'Penacova', 16.885697148770387).
ligacao(6.0, 'Copeira', 143.0, 'Poiares', 16.985834450211705).
ligacao(6.0, 'Copeira', 227.0, 'Coimbra', 2.907223104613392).
ligacao(6.0, 'Copeira', 246.0, 'Penela', 14.923491531474994).
ligacao(8.0, 'Portimão', 25.0, 'Lagos', 13.889034607199974).
ligacao(8.0, 'Portimão', 73.0, 'Monchique', 18.17738830195349).
ligacao(8.0, 'Portimão', 126.0, 'Lagoa', 8.661756192020194).
ligacao(8.0, 'Portimão', 263.0, 'Silves', 11.437934328365476).
ligacao(9.0, 'Évora', 142.0, 'Arraiolos', 17.839077165032986).
ligacao(10.0, 'Aveiro', 52.0, 'Estarreja', 13.412037835466812).
ligacao(10.0, 'Aveiro', 122.0, 'Albergaria-a-Velha', 17.26725335917671).
ligacao(10.0, 'Aveiro', 164.0, 'Oliveira do Bairro', 19.955199637688764).
ligacao(10.0, 'Aveiro', 224.0, 'Vagos', 9.54111925614584).
ligacao(10.0, 'Aveiro', 235.0, 'Murtosa', 9.300984509716935).
ligacao(10.0, 'Aveiro', 243.0, 'Ílhavo', 4.9434474094502).
ligacao(11.0, 'Leiria', 183.0, 'Batalha', 8.9675249205116).
ligacao(11.0, 'Leiria', 259.0, 'Marinha Grande', 12.728900427766662).
ligacao(11.0, 'Leiria', 285.0, 'Porto de Mós', 14.642687664837723).
ligacao(12.0, 'Faro', 118.0, 'Loulé', 14.716073881983085).
ligacao(12.0, 'Faro', 249.0, 'São Brás de Alportel', 14.101013114312009).
ligacao(12.0, 'Faro', 276.0, 'Olhão', 9.159454499586731).
ligacao(13.0, 'Beja', 256.0, 'Cuba', 15.31761045626868).
ligacao(13.0, 'Beja', 266.0, 'Ferreira do Alentejo', 17.365648658198694).
ligacao(16.0, 'Guarda', 37.0, 'Celorico da Beira', 15.97222678808409).
ligacao(16.0, 'Guarda', 158.0, 'Belmonte', 19.639783630682388).
ligacao(17.0, 'Santarém', 58.0, 'Almeirim', 7.118482755475175).
ligacao(17.0, 'Santarém', 170.0, 'Cartaxo', 12.718871871750363).
ligacao(17.0, 'Santarém', 244.0, 'Alpiarça', 10.42170004269936).
ligacao(18.0, 'Viseu', 92.0, 'Nelas', 14.138630121055213).
ligacao(18.0, 'Viseu', 98.0, 'São Pedro do Sul', 18.828141533353666).
ligacao(18.0, 'Viseu', 121.0, 'Sátão', 19.442593706087514).
ligacao(18.0, 'Viseu', 171.0, 'Mangualde', 15.90397461391349).
ligacao(19.0, 'Covilhã', 147.0, 'Manteigas', 12.215420503609312).
ligacao(19.0, 'Covilhã', 158.0, 'Belmonte', 17.16997399677683).
ligacao(19.0, 'Covilhã', 241.0, 'Fundão', 14.578741874729772).
ligacao(20.0, 'Vila Marim', 108.0, 'Santa Marta de Penaguião', 9.598591263305426).
ligacao(20.0, 'Vila Marim', 111.0, 'Vila Real', 3.587758739101554).
ligacao(20.0, 'Vila Marim', 199.0, 'Mesão Frio', 17.000673550480084).
ligacao(20.0, 'Vila Marim', 280.0, 'Peso da Régua', 14.023865758769707).
ligacao(21.0, 'Portalegre', 116.0, 'Castelo de Vide', 11.993437007379988).
ligacao(21.0, 'Portalegre', 219.0, 'Marvão', 11.04413457723132).
ligacao(22.0, 'Viana do Castelo', 68.0, 'Caminha', 18.16945511125762).
ligacao(22.0, 'Viana do Castelo', 94.0, 'Esposende', 16.516131102651784).
ligacao(25.0, 'Lagos', 8.0, 'Portimão', 13.889034607199974).
ligacao(26.0, 'Paredes de Coura', 54.0, 'Ponte de Lima', 14.477373419581664).
ligacao(26.0, 'Paredes de Coura', 61.0, 'Ponte da Barca', 17.970817194830005).
ligacao(26.0, 'Paredes de Coura', 83.0, 'Vila Nova de Cerveira', 18.400621575642536).
ligacao(26.0, 'Paredes de Coura', 103.0, 'Arcos de Valdevez', 16.203991007773492).
ligacao(26.0, 'Paredes de Coura', 247.0, 'Valença', 14.781064728225507).
ligacao(26.0, 'Paredes de Coura', 272.0, 'Monção', 18.616766612921744).
ligacao(27.0, 'São João da Pesqueira', 41.0, 'Tabuaço', 16.613808513402468).
ligacao(27.0, 'São João da Pesqueira', 72.0, 'Alijó', 14.65288808562987).
ligacao(27.0, 'São João da Pesqueira', 131.0, 'Penedono', 15.968333051699924).
ligacao(27.0, 'São João da Pesqueira', 166.0, 'Carrazeda de Anciães', 13.58527340505136).
ligacao(28.0, 'São João da Madeira', 52.0, 'Estarreja', 16.156845476763348).
ligacao(28.0, 'São João da Madeira', 132.0, 'Vale de Cambra', 11.760833698764667).
ligacao(28.0, 'São João da Madeira', 160.0, 'Espinho', 17.72093299829311).
ligacao(28.0, 'São João da Madeira', 163.0, 'Oliveira de Azemeis', 6.464270272815321).
ligacao(28.0, 'São João da Madeira', 167.0, 'Ovar', 13.221568783242029).
ligacao(28.0, 'São João da Madeira', 180.0, 'Feira', 4.945826815609249).
ligacao(29.0, 'Fornos de Algodres', 37.0, 'Celorico da Beira', 15.054692764716274).
ligacao(29.0, 'Fornos de Algodres', 42.0, 'Gouveia', 14.320081612197697).
ligacao(29.0, 'Fornos de Algodres', 43.0, 'Aguiar da Beira', 18.922757310973317).
ligacao(29.0, 'Fornos de Algodres', 90.0, 'Penalva do Castelo', 16.495255502719488).
ligacao(30.0, 'Castelo de Paiva', 137.0, 'Penafiel', 14.647001427596212).
ligacao(30.0, 'Castelo de Paiva', 173.0, 'Paredes', 15.677708631046864).
ligacao(30.0, 'Castelo de Paiva', 187.0, 'Arouca', 13.391326512709442).
ligacao(30.0, 'Castelo de Paiva', 225.0, 'Marco de Canavezes', 16.757308084832772).
ligacao(30.0, 'Castelo de Paiva', 260.0, 'Cinfães', 17.493471487672334).
ligacao(31.0, 'Portel', 174.0, 'Vidigueira', 13.795145233740588).
ligacao(32.0, 'Porto', 2.0, 'Picotos', 4.369602893856861).
ligacao(32.0, 'Porto', 67.0, 'Valongo', 11.048245801936119).
ligacao(32.0, 'Porto', 115.0, 'Vila Nova de Gaia', 1.7217895138484467).
ligacao(32.0, 'Porto', 123.0, 'Matosinhos', 8.456279433060503).
ligacao(32.0, 'Porto', 136.0, 'Trofa', 17.751007355358762).
ligacao(32.0, 'Porto', 152.0, 'Maia', 8.659200254642828).
ligacao(32.0, 'Porto', 160.0, 'Espinho', 14.516645290148988).
ligacao(32.0, 'Porto', 213.0, 'Gondomar', 7.892700802640489).
ligacao(33.0, 'Sertã', 125.0, 'Proença-a-Nova', 18.374970891133486).
ligacao(33.0, 'Sertã', 139.0, 'Pedrógão Grande', 11.954150951447835).
ligacao(33.0, 'Sertã', 188.0, 'Vila de Rei', 14.049409582612437).
ligacao(35.0, 'Fronteira', 141.0, 'Sousel', 10.676550031728524).
ligacao(35.0, 'Fronteira', 253.0, 'Alter do Chão', 14.274546017999898).
ligacao(36.0, 'Alfândega da Fé', 133.0, 'Vila Flor', 19.56555515082555).
ligacao(36.0, 'Alfândega da Fé', 177.0, 'Macedo de Cavaleiros', 19.501200147683768).
ligacao(36.0, 'Alfândega da Fé', 234.0, 'Torre de Moncorvo', 19.23258089804866).
ligacao(37.0, 'Celorico da Beira', 16.0, 'Guarda', 15.97222678808409).
ligacao(37.0, 'Celorico da Beira', 29.0, 'Fornos de Algodres', 15.054692764716274).
ligacao(37.0, 'Celorico da Beira', 51.0, 'Trancoso', 15.14936198326526).
ligacao(39.0, 'Arronches', 79.0, 'Monforte', 16.64226742364146).
ligacao(40.0, 'Amarante', 50.0, 'Lousada', 19.75479131375475).
ligacao(40.0, 'Amarante', 128.0, 'Felgueiras', 14.67127753298923).
ligacao(40.0, 'Amarante', 155.0, 'Celorico de Basto', 14.045466501686402).
ligacao(40.0, 'Amarante', 205.0, 'Baião', 11.989528171283759).
ligacao(40.0, 'Amarante', 225.0, 'Marco de Canavezes', 11.07713391270524).
ligacao(40.0, 'Amarante', 271.0, 'Mondim de Basto', 18.88788201625576).
ligacao(41.0, 'Tabuaço', 27.0, 'São João da Pesqueira', 16.613808513402468).
ligacao(41.0, 'Tabuaço', 72.0, 'Alijó', 18.563881748438433).
ligacao(41.0, 'Tabuaço', 102.0, 'Armamar', 12.374434655773081).
ligacao(41.0, 'Tabuaço', 107.0, 'Moimenta da Beira', 14.13516774643964).
ligacao(41.0, 'Tabuaço', 211.0, 'Sabrosa', 15.10858372879517).
ligacao(42.0, 'Gouveia', 29.0, 'Fornos de Algodres', 14.320081612197697).
ligacao(42.0, 'Gouveia', 46.0, 'Seia', 14.091089814844226).
ligacao(42.0, 'Gouveia', 147.0, 'Manteigas', 10.556546647460117).
ligacao(43.0, 'Aguiar da Beira', 29.0, 'Fornos de Algodres', 18.922757310973317).
ligacao(43.0, 'Aguiar da Beira', 51.0, 'Trancoso', 19.709994223489783).
ligacao(43.0, 'Aguiar da Beira', 107.0, 'Moimenta da Beira', 18.199780716261483).
ligacao(43.0, 'Aguiar da Beira', 110.0, 'Sernancelhe', 9.603326459096992).
ligacao(43.0, 'Aguiar da Beira', 172.0, 'Vila Nova de Paiva', 18.703168786331364).
ligacao(45.0, 'Ribeira de Pena', 74.0, 'Cabeceiras de Basto', 18.71799156239795).
ligacao(45.0, 'Ribeira de Pena', 176.0, 'Trofa', 16.243824612756733).
ligacao(45.0, 'Ribeira de Pena', 192.0, 'Vila Pouca de Aguiar', 15.996562193171322).
ligacao(45.0, 'Ribeira de Pena', 271.0, 'Mondim de Basto', 18.760506117906303).
ligacao(46.0, 'Seia', 42.0, 'Gouveia', 14.091089814844226).
ligacao(46.0, 'Seia', 92.0, 'Nelas', 18.47542505194395).
ligacao(46.0, 'Seia', 147.0, 'Manteigas', 16.926449565399157).
ligacao(46.0, 'Seia', 161.0, 'Oliveira do Hospital', 16.06543641641893).
ligacao(46.0, 'Seia', 171.0, 'Mangualde', 19.63168823535055).
ligacao(47.0, 'Rio Maior', 277.0, 'Cadaval', 18.93827140158227).
ligacao(48.0, 'Condeixa-a-Nova', 6.0, 'Copeira', 9.626215376772048).
ligacao(48.0, 'Condeixa-a-Nova', 130.0, 'Miranda do Corvo', 16.72555164800252).
ligacao(48.0, 'Condeixa-a-Nova', 159.0, 'Montemor-o-Velho', 19.632520438293252).
ligacao(48.0, 'Condeixa-a-Nova', 196.0, 'Soure', 13.939179580592134).
ligacao(48.0, 'Condeixa-a-Nova', 227.0, 'Coimbra', 11.954373469989862).
ligacao(48.0, 'Condeixa-a-Nova', 246.0, 'Penela', 14.147596972277626).
ligacao(49.0, 'Mação', 70.0, 'Sardoal', 16.835925517772978).
ligacao(49.0, 'Mação', 78.0, 'Gavião', 10.910011755264334).
ligacao(49.0, 'Mação', 188.0, 'Vila de Rei', 19.34989546354193).
ligacao(50.0, 'Lousada', 40.0, 'Amarante', 19.75479131375475).
ligacao(50.0, 'Lousada', 55.0, 'Guimarães', 16.70057307789183).
ligacao(50.0, 'Lousada', 104.0, 'Paços de Ferreira', 9.626217641420846).
ligacao(50.0, 'Lousada', 128.0, 'Felgueiras', 12.433948869928697).
ligacao(50.0, 'Lousada', 137.0, 'Penafiel', 6.993602695320533).
ligacao(50.0, 'Lousada', 149.0, 'Vizela', 11.38740513242639).
ligacao(50.0, 'Lousada', 173.0, 'Paredes', 8.966571717216981).
ligacao(50.0, 'Lousada', 225.0, 'Marco de Canavezes', 16.16633295494056).
ligacao(51.0, 'Trancoso', 37.0, 'Celorico da Beira', 15.14936198326526).
ligacao(51.0, 'Trancoso', 43.0, 'Aguiar da Beira', 19.709994223489783).
ligacao(51.0, 'Trancoso', 110.0, 'Sernancelhe', 18.39690812854152).
ligacao(52.0, 'Estarreja', 10.0, 'Aveiro', 13.412037835466812).
ligacao(52.0, 'Estarreja', 28.0, 'São João da Madeira', 16.156845476763348).
ligacao(52.0, 'Estarreja', 122.0, 'Albergaria-a-Velha', 11.178515667565115).
ligacao(52.0, 'Estarreja', 163.0, 'Oliveira de Azemeis', 12.830079182920029).
ligacao(52.0, 'Estarreja', 167.0, 'Ovar', 11.82857009152006).
ligacao(52.0, 'Estarreja', 180.0, 'Feira', 17.138993255439622).
ligacao(52.0, 'Estarreja', 235.0, 'Murtosa', 6.8468644538940815).
ligacao(52.0, 'Estarreja', 243.0, 'Ílhavo', 18.328100937358187).
ligacao(53.0, 'Moita', 1.0, 'Lisbon', 15.740371991792431).
ligacao(53.0, 'Moita', 5.0, 'Setúbal', 14.819800810064926).
ligacao(53.0, 'Moita', 57.0, 'Seixal', 11.15432985077997).
ligacao(53.0, 'Moita', 95.0, 'Alcochete', 10.864393963770132).
ligacao(53.0, 'Moita', 127.0, 'Montijo', 5.83489590995419).
ligacao(53.0, 'Moita', 157.0, 'Barreiro', 8.293785811075711).
ligacao(53.0, 'Moita', 185.0, 'Palmela', 12.094697577037586).
ligacao(53.0, 'Moita', 193.0, 'Almada', 16.889844452214582).
ligacao(54.0, 'Ponte de Lima', 26.0, 'Paredes de Coura', 14.477373419581664).
ligacao(54.0, 'Ponte de Lima', 61.0, 'Ponte da Barca', 17.247134621727938).
ligacao(54.0, 'Ponte de Lima', 103.0, 'Arcos de Valdevez', 19.135066923583075).
ligacao(54.0, 'Ponte de Lima', 145.0, 'Vila Verde', 18.951982854571856).
ligacao(55.0, 'Guimarães', 3.0, 'Braga', 16.295493644870064).
ligacao(55.0, 'Guimarães', 50.0, 'Lousada', 16.70057307789183).
ligacao(55.0, 'Guimarães', 104.0, 'Paços de Ferreira', 18.594602098727638).
ligacao(55.0, 'Guimarães', 105.0, 'Fafe', 12.85644419931106).
ligacao(55.0, 'Guimarães', 128.0, 'Felgueiras', 12.760881675260597).
ligacao(55.0, 'Guimarães', 149.0, 'Vizela', 6.247172424385034).
ligacao(55.0, 'Guimarães', 179.0, 'Póvoa de Lanhoso', 13.61303754677886).
ligacao(55.0, 'Guimarães', 248.0, 'Amares', 19.44075032322586).
ligacao(56.0, 'Sobral de Monte Agraço', 84.0, 'Mafra', 19.47017022319004).
ligacao(56.0, 'Sobral de Monte Agraço', 169.0, 'Torres Vedras', 12.935613997410137).
ligacao(56.0, 'Sobral de Monte Agraço', 197.0, 'Alenquer', 14.545436024059216).
ligacao(56.0, 'Sobral de Monte Agraço', 240.0, 'Arruda dos Vinhos', 8.147373469407391).
ligacao(56.0, 'Sobral de Monte Agraço', 258.0, 'Vila Franca de Xira', 17.35146941933154).
ligacao(56.0, 'Sobral de Monte Agraço', 278.0, 'Loures', 19.12806660852063).
ligacao(57.0, 'Seixal', 1.0, 'Lisbon', 8.297300048811405).
ligacao(57.0, 'Seixal', 53.0, 'Moita', 11.15432985077997).
ligacao(57.0, 'Seixal', 86.0, 'Amadora', 18.28588520608215).
ligacao(57.0, 'Seixal', 95.0, 'Alcochete', 18.17644041774989).
ligacao(57.0, 'Seixal', 97.0, 'Sesimbra', 19.556707919534617).
ligacao(57.0, 'Seixal', 127.0, 'Montijo', 14.390144063907243).
ligacao(57.0, 'Seixal', 157.0, 'Barreiro', 3.7062265688973257).
ligacao(57.0, 'Seixal', 193.0, 'Almada', 6.779033786610183).
ligacao(57.0, 'Seixal', 221.0, 'Odivelas', 17.738225486502554).
ligacao(58.0, 'Almeirim', 17.0, 'Santarém', 7.118482755475175).
ligacao(58.0, 'Almeirim', 170.0, 'Cartaxo', 17.781160696928612).
ligacao(58.0, 'Almeirim', 244.0, 'Alpiarça', 5.921865706008578).
ligacao(59.0, 'Cantanhede', 63.0, 'Anadia', 18.50014297944746).
ligacao(59.0, 'Cantanhede', 159.0, 'Montemor-o-Velho', 19.66635103774947).
ligacao(59.0, 'Cantanhede', 164.0, 'Oliveira do Bairro', 19.558602739715127).
ligacao(59.0, 'Cantanhede', 255.0, 'Mealhada', 14.765066919590911).
ligacao(59.0, 'Cantanhede', 262.0, 'Mira', 16.518142736095022).
ligacao(60.0, 'Elvas', 265.0, 'Campo Maior', 16.773777183449248).
ligacao(61.0, 'Ponte da Barca', 26.0, 'Paredes de Coura', 17.970817194830005).
ligacao(61.0, 'Ponte da Barca', 54.0, 'Ponte de Lima', 17.247134621727938).
ligacao(61.0, 'Ponte da Barca', 103.0, 'Arcos de Valdevez', 4.464436028211851).
ligacao(61.0, 'Ponte da Barca', 145.0, 'Vila Verde', 15.869311612669376).
ligacao(61.0, 'Ponte da Barca', 146.0, 'Terras de Bouro', 13.752793914328809).
ligacao(61.0, 'Ponte da Barca', 248.0, 'Amares', 18.515343644934294).
ligacao(62.0, 'Golegã', 101.0, 'Entroncamento', 6.4949574425091985).
ligacao(62.0, 'Golegã', 117.0, 'Vila Nova da Barquinha', 6.963243848236705).
ligacao(62.0, 'Golegã', 168.0, 'Torres Novas', 9.312483802939454).
ligacao(62.0, 'Golegã', 175.0, 'Chamusca', 4.775581639967925).
ligacao(62.0, 'Golegã', 184.0, 'Alcanena', 19.056358650329884).
ligacao(62.0, 'Golegã', 191.0, 'Constância', 16.498049041629333).
ligacao(62.0, 'Golegã', 244.0, 'Alpiarça', 17.588423701968853).
ligacao(63.0, 'Anadia', 59.0, 'Cantanhede', 18.50014297944746).
ligacao(63.0, 'Anadia', 66.0, 'Águeda', 13.9223187795711).
ligacao(63.0, 'Anadia', 164.0, 'Oliveira do Bairro', 9.718607520112934).
ligacao(63.0, 'Anadia', 255.0, 'Mealhada', 6.2532690490657075).
ligacao(66.0, 'Águeda', 63.0, 'Anadia', 13.9223187795711).
ligacao(66.0, 'Águeda', 96.0, 'Sever do Vouga', 17.529715995988344).
ligacao(66.0, 'Águeda', 122.0, 'Albergaria-a-Velha', 12.129669708611226).
ligacao(66.0, 'Águeda', 164.0, 'Oliveira do Bairro', 7.9775939236088735).
ligacao(66.0, 'Águeda', 255.0, 'Mealhada', 19.92177707936738).
ligacao(67.0, 'Valongo', 2.0, 'Picotos', 10.95769690263422).
ligacao(67.0, 'Valongo', 32.0, 'Porto', 11.048245801936119).
ligacao(67.0, 'Valongo', 104.0, 'Paços de Ferreira', 15.695357056148772).
ligacao(67.0, 'Valongo', 115.0, 'Vila Nova de Gaia', 12.348321617531353).
ligacao(67.0, 'Valongo', 123.0, 'Matosinhos', 17.927339904458712).
ligacao(67.0, 'Valongo', 136.0, 'Trofa', 14.191381273505547).
ligacao(67.0, 'Valongo', 152.0, 'Maia', 11.694945469304415).
ligacao(67.0, 'Valongo', 153.0, 'Santo Tirso', 15.11645202949478).
ligacao(67.0, 'Valongo', 173.0, 'Paredes', 17.907089019715162).
ligacao(67.0, 'Valongo', 213.0, 'Gondomar', 5.504107122866896).
ligacao(68.0, 'Caminha', 22.0, 'Viana do Castelo', 18.16945511125762).
ligacao(68.0, 'Caminha', 83.0, 'Vila Nova de Cerveira', 11.586736550470075).
ligacao(69.0, 'Ourique', 254.0, 'Castro Verde', 14.674823286840578).
ligacao(70.0, 'Sardoal', 49.0, 'Mação', 16.835925517772978).
ligacao(70.0, 'Sardoal', 188.0, 'Vila de Rei', 14.091716765887485).
ligacao(70.0, 'Sardoal', 191.0, 'Constância', 18.537184071212167).
ligacao(70.0, 'Sardoal', 239.0, 'Abrantes', 7.934223023081813).
ligacao(71.0, 'Vila do Conde', 94.0, 'Esposende', 18.535376274843127).
ligacao(71.0, 'Vila do Conde', 123.0, 'Matosinhos', 18.10807116232931).
ligacao(71.0, 'Vila do Conde', 136.0, 'Trofa', 17.43478588626773).
ligacao(71.0, 'Vila do Conde', 152.0, 'Maia', 17.155288159631404).
ligacao(71.0, 'Vila do Conde', 204.0, 'Póvoa de Varzim', 3.5061050198191475).
ligacao(72.0, 'Alijó', 27.0, 'São João da Pesqueira', 14.65288808562987).
ligacao(72.0, 'Alijó', 41.0, 'Tabuaço', 18.563881748438433).
ligacao(72.0, 'Alijó', 109.0, 'Murça', 13.076029988111795).
ligacao(72.0, 'Alijó', 166.0, 'Carrazeda de Anciães', 17.115225839585076).
ligacao(72.0, 'Alijó', 211.0, 'Sabrosa', 10.159428661100904).
ligacao(73.0, 'Monchique', 8.0, 'Portimão', 18.17738830195349).
ligacao(73.0, 'Monchique', 263.0, 'Silves', 17.38627911716589).
ligacao(74.0, 'Cabeceiras de Basto', 45.0, 'Ribeira de Pena', 18.71799156239795).
ligacao(74.0, 'Cabeceiras de Basto', 105.0, 'Fafe', 18.841999658740963).
ligacao(74.0, 'Cabeceiras de Basto', 155.0, 'Celorico de Basto', 12.769850142425032).
ligacao(74.0, 'Cabeceiras de Basto', 176.0, 'Trofa', 3.8642278219585284).
ligacao(74.0, 'Cabeceiras de Basto', 182.0, 'Vieira do Minho', 19.36750282225367).
ligacao(74.0, 'Cabeceiras de Basto', 271.0, 'Mondim de Basto', 10.854404874058847).
ligacao(76.0, 'Castanheira de Pêra', 85.0, 'Lousã', 11.093465049298368).
ligacao(76.0, 'Castanheira de Pêra', 130.0, 'Miranda do Corvo', 14.93725660789161).
ligacao(76.0, 'Castanheira de Pêra', 134.0, 'Figueiró dos Vinhos', 12.162547224163296).
ligacao(76.0, 'Castanheira de Pêra', 139.0, 'Pedrógão Grande', 10.982165556937835).
ligacao(76.0, 'Castanheira de Pêra', 232.0, 'Góis', 18.066213699887584).
ligacao(76.0, 'Castanheira de Pêra', 246.0, 'Penela', 17.48179959186138).
ligacao(78.0, 'Gavião', 49.0, 'Mação', 10.910011755264334).
ligacao(79.0, 'Monforte', 39.0, 'Arronches', 16.64226742364146).
ligacao(80.0, 'Vila Viçosa', 82.0, 'Redondo', 18.252905090697098).
ligacao(80.0, 'Vila Viçosa', 88.0, 'Estremoz', 18.0659075966308).
ligacao(80.0, 'Vila Viçosa', 124.0, 'Alandroal', 7.713070316028399).
ligacao(80.0, 'Vila Viçosa', 261.0, 'Borba', 4.607939110925774).
ligacao(81.0, 'Almodôvar', 254.0, 'Castro Verde', 18.726673576746244).
ligacao(82.0, 'Redondo', 80.0, 'Vila Viçosa', 18.252905090697098).
ligacao(82.0, 'Redondo', 88.0, 'Estremoz', 19.94056869399657).
ligacao(82.0, 'Redondo', 124.0, 'Alandroal', 15.35326078232235).
ligacao(82.0, 'Redondo', 261.0, 'Borba', 18.202830884233098).
ligacao(83.0, 'Vila Nova de Cerveira', 26.0, 'Paredes de Coura', 18.400621575642536).
ligacao(83.0, 'Vila Nova de Cerveira', 68.0, 'Caminha', 11.586736550470075).
ligacao(83.0, 'Vila Nova de Cerveira', 247.0, 'Valença', 13.174830525285557).
ligacao(84.0, 'Mafra', 56.0, 'Sobral de Monte Agraço', 19.47017022319004).
ligacao(84.0, 'Mafra', 86.0, 'Amadora', 19.870061331812554).
ligacao(84.0, 'Mafra', 148.0, 'Sintra', 14.60420087098266).
ligacao(84.0, 'Mafra', 169.0, 'Torres Vedras', 16.796623382394056).
ligacao(84.0, 'Mafra', 278.0, 'Loures', 19.306919195459514).
ligacao(85.0, 'Lousã', 6.0, 'Copeira', 18.854779807783526).
ligacao(85.0, 'Lousã', 76.0, 'Castanheira de Pêra', 11.093465049298368).
ligacao(85.0, 'Lousã', 130.0, 'Miranda do Corvo', 8.760390656243636).
ligacao(85.0, 'Lousã', 138.0, 'Penacova', 16.085697936987245).
ligacao(85.0, 'Lousã', 143.0, 'Poiares', 9.889695334539066).
ligacao(85.0, 'Lousã', 227.0, 'Coimbra', 19.633898187064016).
ligacao(85.0, 'Lousã', 232.0, 'Góis', 14.430467328884413).
ligacao(85.0, 'Lousã', 246.0, 'Penela', 15.733089300261408).
ligacao(86.0, 'Amadora', 1.0, 'Lisbon', 11.475376490991541).
ligacao(86.0, 'Amadora', 57.0, 'Seixal', 18.28588520608215).
ligacao(86.0, 'Amadora', 84.0, 'Mafra', 19.870061331812554).
ligacao(86.0, 'Amadora', 148.0, 'Sintra', 14.456214235061452).
ligacao(86.0, 'Amadora', 154.0, 'Oeiras', 9.886975050540245).
ligacao(86.0, 'Amadora', 157.0, 'Barreiro', 19.318430952072887).
ligacao(86.0, 'Amadora', 193.0, 'Almada', 11.561947355441687).
ligacao(86.0, 'Amadora', 208.0, 'Cascais', 19.37113770794054).
ligacao(86.0, 'Amadora', 221.0, 'Odivelas', 6.324057692652669).
ligacao(86.0, 'Amadora', 278.0, 'Loures', 9.969544646070654).
ligacao(87.0, 'Pinhel', 194.0, 'Almeida', 16.773471679410758).
ligacao(87.0, 'Pinhel', 238.0, 'Figueira de Castelo Rodrigo', 15.723783769818592).
ligacao(88.0, 'Estremoz', 80.0, 'Vila Viçosa', 18.0659075966308).
ligacao(88.0, 'Estremoz', 82.0, 'Redondo', 19.94056869399657).
ligacao(88.0, 'Estremoz', 141.0, 'Sousel', 14.066721262611349).
ligacao(88.0, 'Estremoz', 261.0, 'Borba', 13.681682430169259).
ligacao(89.0, 'Penamacor', 282.0, 'Sabugal', 19.86335158073799).
ligacao(90.0, 'Penalva do Castelo', 29.0, 'Fornos de Algodres', 16.495255502719488).
ligacao(90.0, 'Penalva do Castelo', 121.0, 'Sátão', 7.401539907343162).
ligacao(90.0, 'Penalva do Castelo', 171.0, 'Mangualde', 9.553163196554577).
ligacao(90.0, 'Penalva do Castelo', 172.0, 'Vila Nova de Paiva', 17.908378027057605).
ligacao(91.0, 'Crato', 253.0, 'Alter do Chão', 8.977674697269826).
ligacao(92.0, 'Nelas', 18.0, 'Viseu', 14.138630121055213).
ligacao(92.0, 'Nelas', 46.0, 'Seia', 18.47542505194395).
ligacao(92.0, 'Nelas', 161.0, 'Oliveira do Hospital', 17.05786872560577).
ligacao(92.0, 'Nelas', 171.0, 'Mangualde', 11.560602452294615).
ligacao(93.0, 'Aljustrel', 254.0, 'Castro Verde', 19.60835019908632).
ligacao(94.0, 'Esposende', 22.0, 'Viana do Castelo', 16.516131102651784).
ligacao(94.0, 'Esposende', 71.0, 'Vila do Conde', 18.535376274843127).
ligacao(94.0, 'Esposende', 204.0, 'Póvoa de Varzim', 15.375977640462665).
ligacao(94.0, 'Esposende', 209.0, 'Barcelos', 16.69792681412886).
ligacao(95.0, 'Alcochete', 1.0, 'Lisbon', 17.675351483916916).
ligacao(95.0, 'Alcochete', 53.0, 'Moita', 10.864393963770132).
ligacao(95.0, 'Alcochete', 57.0, 'Seixal', 18.17644041774989).
ligacao(95.0, 'Alcochete', 127.0, 'Montijo', 5.030326351242249).
ligacao(95.0, 'Alcochete', 157.0, 'Barreiro', 14.470765135265227).
ligacao(95.0, 'Alcochete', 185.0, 'Palmela', 19.56164150371869).
ligacao(96.0, 'Sever do Vouga', 66.0, 'Águeda', 17.529715995988344).
ligacao(96.0, 'Sever do Vouga', 122.0, 'Albergaria-a-Velha', 12.008051672940203).
ligacao(96.0, 'Sever do Vouga', 132.0, 'Vale de Cambra', 11.816281859366823).
ligacao(96.0, 'Sever do Vouga', 162.0, 'Oliveira de Frades', 19.241470885823762).
ligacao(96.0, 'Sever do Vouga', 163.0, 'Oliveira de Azemeis', 15.186215561817558).
ligacao(97.0, 'Sesimbra', 57.0, 'Seixal', 19.556707919534617).
ligacao(98.0, 'São Pedro do Sul', 18.0, 'Viseu', 18.828141533353666).
ligacao(98.0, 'São Pedro do Sul', 162.0, 'Oliveira de Frades', 10.446167110476308).
ligacao(98.0, 'São Pedro do Sul', 257.0, 'Vouzela', 5.122013293617944).
ligacao(98.0, 'São Pedro do Sul', 274.0, 'Castro Daire', 19.933418703774734).
ligacao(99.0, 'Lourinhã', 156.0, 'Bombarral', 16.229456438525695).
ligacao(99.0, 'Lourinhã', 169.0, 'Torres Vedras', 15.363886149344367).
ligacao(99.0, 'Lourinhã', 223.0, 'Peniche', 13.957376326874602).
ligacao(100.0, 'Santa Comba Dão', 138.0, 'Penacova', 19.889769936578084).
ligacao(100.0, 'Santa Comba Dão', 190.0, 'Tondela', 12.867991980491949).
ligacao(100.0, 'Santa Comba Dão', 206.0, 'Mortágua', 10.075631279974475).
ligacao(100.0, 'Santa Comba Dão', 207.0, 'Tábua', 10.855587181723427).
ligacao(100.0, 'Santa Comba Dão', 275.0, 'Arganil', 19.627731399221915).
ligacao(101.0, 'Entroncamento', 62.0, 'Golegã', 6.4949574425091985).
ligacao(101.0, 'Entroncamento', 117.0, 'Vila Nova da Barquinha', 3.726854498098817).
ligacao(101.0, 'Entroncamento', 168.0, 'Torres Novas', 7.425079697888901).
ligacao(101.0, 'Entroncamento', 175.0, 'Chamusca', 11.044890428610268).
ligacao(101.0, 'Entroncamento', 189.0, 'Tomar', 14.700045246528957).
ligacao(101.0, 'Entroncamento', 191.0, 'Constância', 13.333399999999962).
ligacao(102.0, 'Armamar', 41.0, 'Tabuaço', 12.374434655773081).
ligacao(102.0, 'Armamar', 107.0, 'Moimenta da Beira', 14.410916838633122).
ligacao(102.0, 'Armamar', 108.0, 'Santa Marta de Penaguião', 15.012155358241863).
ligacao(102.0, 'Armamar', 119.0, 'Lamego', 11.896245021854666).
ligacao(102.0, 'Armamar', 199.0, 'Mesão Frio', 19.04218352631864).
ligacao(102.0, 'Armamar', 211.0, 'Sabrosa', 19.675220273735192).
ligacao(102.0, 'Armamar', 242.0, 'Tarouca', 12.959511919822045).
ligacao(102.0, 'Armamar', 280.0, 'Peso da Régua', 11.148064702000946).
ligacao(103.0, 'Arcos de Valdevez', 26.0, 'Paredes de Coura', 16.203991007773492).
ligacao(103.0, 'Arcos de Valdevez', 54.0, 'Ponte de Lima', 19.135066923583075).
ligacao(103.0, 'Arcos de Valdevez', 61.0, 'Ponte da Barca', 4.464436028211851).
ligacao(103.0, 'Arcos de Valdevez', 146.0, 'Terras de Bouro', 16.621688080937794).
ligacao(104.0, 'Paços de Ferreira', 50.0, 'Lousada', 9.626217641420846).
ligacao(104.0, 'Paços de Ferreira', 55.0, 'Guimarães', 18.594602098727638).
ligacao(104.0, 'Paços de Ferreira', 67.0, 'Valongo', 15.695357056148772).
ligacao(104.0, 'Paços de Ferreira', 137.0, 'Penafiel', 11.560409446900895).
ligacao(104.0, 'Paços de Ferreira', 144.0, 'Famalicão', 19.464735305675397).
ligacao(104.0, 'Paços de Ferreira', 149.0, 'Vizela', 16.02917548628167).
ligacao(104.0, 'Paços de Ferreira', 153.0, 'Santo Tirso', 12.088637450101897).
ligacao(104.0, 'Paços de Ferreira', 173.0, 'Paredes', 8.450987599091413).
ligacao(105.0, 'Fafe', 55.0, 'Guimarães', 12.85644419931106).
ligacao(105.0, 'Fafe', 74.0, 'Cabeceiras de Basto', 18.841999658740963).
ligacao(105.0, 'Fafe', 128.0, 'Felgueiras', 8.999541060521286).
ligacao(105.0, 'Fafe', 149.0, 'Vizela', 11.487972982645784).
ligacao(105.0, 'Fafe', 155.0, 'Celorico de Basto', 17.995978311834122).
ligacao(105.0, 'Fafe', 179.0, 'Póvoa de Lanhoso', 15.91948902948831).
ligacao(105.0, 'Fafe', 182.0, 'Vieira do Minho', 18.050301367289762).
ligacao(107.0, 'Moimenta da Beira', 41.0, 'Tabuaço', 14.13516774643964).
ligacao(107.0, 'Moimenta da Beira', 43.0, 'Aguiar da Beira', 18.199780716261483).
ligacao(107.0, 'Moimenta da Beira', 102.0, 'Armamar', 14.410916838633122).
ligacao(107.0, 'Moimenta da Beira', 110.0, 'Sernancelhe', 15.059827900743358).
ligacao(107.0, 'Moimenta da Beira', 172.0, 'Vila Nova de Paiva', 17.1164058157664).
ligacao(107.0, 'Moimenta da Beira', 242.0, 'Tarouca', 16.66160265310623).
ligacao(108.0, 'Santa Marta de Penaguião', 20.0, 'Vila Marim', 9.598591263305426).
ligacao(108.0, 'Santa Marta de Penaguião', 102.0, 'Armamar', 15.012155358241863).
ligacao(108.0, 'Santa Marta de Penaguião', 111.0, 'Vila Real', 10.553149769145195).
ligacao(108.0, 'Santa Marta de Penaguião', 119.0, 'Lamego', 11.417501535800215).
ligacao(108.0, 'Santa Marta de Penaguião', 178.0, 'Resende', 19.69279206130982).
ligacao(108.0, 'Santa Marta de Penaguião', 199.0, 'Mesão Frio', 8.77175066050078).
ligacao(108.0, 'Santa Marta de Penaguião', 242.0, 'Tarouca', 19.760182977391647).
ligacao(108.0, 'Santa Marta de Penaguião', 280.0, 'Peso da Régua', 4.806222976516621).
ligacao(109.0, 'Murça', 72.0, 'Alijó', 13.076029988111795).
ligacao(109.0, 'Murça', 211.0, 'Sabrosa', 18.437849202387735).
ligacao(110.0, 'Sernancelhe', 43.0, 'Aguiar da Beira', 9.603326459096992).
ligacao(110.0, 'Sernancelhe', 51.0, 'Trancoso', 18.39690812854152).
ligacao(110.0, 'Sernancelhe', 107.0, 'Moimenta da Beira', 15.059827900743358).
ligacao(110.0, 'Sernancelhe', 131.0, 'Penedono', 13.423835312234846).
ligacao(111.0, 'Vila Real', 20.0, 'Vila Marim', 3.587758739101554).
ligacao(111.0, 'Vila Real', 108.0, 'Santa Marta de Penaguião', 10.553149769145195).
ligacao(111.0, 'Vila Real', 199.0, 'Mesão Frio', 18.878289444226734).
ligacao(111.0, 'Vila Real', 211.0, 'Sabrosa', 17.14472761317603).
ligacao(111.0, 'Vila Real', 280.0, 'Peso da Régua', 14.232884559709005).
ligacao(114.0, 'Ourém', 168.0, 'Torres Novas', 16.886951133937345).
ligacao(114.0, 'Ourém', 184.0, 'Alcanena', 19.824525095194772).
ligacao(114.0, 'Ourém', 189.0, 'Tomar', 18.691901185540083).
ligacao(115.0, 'Vila Nova de Gaia', 2.0, 'Picotos', 5.881778120602454).
ligacao(115.0, 'Vila Nova de Gaia', 32.0, 'Porto', 1.7217895138484467).
ligacao(115.0, 'Vila Nova de Gaia', 67.0, 'Valongo', 12.348321617531353).
ligacao(115.0, 'Vila Nova de Gaia', 123.0, 'Matosinhos', 8.649035780941109).
ligacao(115.0, 'Vila Nova de Gaia', 136.0, 'Trofa', 19.452432965055635).
ligacao(115.0, 'Vila Nova de Gaia', 152.0, 'Maia', 10.213601623325545).
ligacao(115.0, 'Vila Nova de Gaia', 160.0, 'Espinho', 12.823856255043415).
ligacao(115.0, 'Vila Nova de Gaia', 213.0, 'Gondomar', 8.588685739390025).
ligacao(116.0, 'Castelo de Vide', 21.0, 'Portalegre', 11.993437007379988).
ligacao(116.0, 'Castelo de Vide', 219.0, 'Marvão', 7.991462445009652).
ligacao(117.0, 'Vila Nova da Barquinha', 62.0, 'Golegã', 6.963243848236705).
ligacao(117.0, 'Vila Nova da Barquinha', 101.0, 'Entroncamento', 3.726854498098817).
ligacao(117.0, 'Vila Nova da Barquinha', 168.0, 'Torres Novas', 11.063377444975925).
ligacao(117.0, 'Vila Nova da Barquinha', 175.0, 'Chamusca', 10.454258332852197).
ligacao(117.0, 'Vila Nova da Barquinha', 189.0, 'Tomar', 15.388445161873705).
ligacao(117.0, 'Vila Nova da Barquinha', 191.0, 'Constância', 10.13794303051653).
ligacao(118.0, 'Loulé', 12.0, 'Faro', 14.716073881983085).
ligacao(118.0, 'Loulé', 249.0, 'São Brás de Alportel', 13.306061567947228).
ligacao(119.0, 'Lamego', 102.0, 'Armamar', 11.896245021854666).
ligacao(119.0, 'Lamego', 108.0, 'Santa Marta de Penaguião', 11.417501535800215).
ligacao(119.0, 'Lamego', 178.0, 'Resende', 15.68159441032711).
ligacao(119.0, 'Lamego', 199.0, 'Mesão Frio', 9.150285639804165).
ligacao(119.0, 'Lamego', 242.0, 'Tarouca', 8.771365340698061).
ligacao(119.0, 'Lamego', 280.0, 'Peso da Régua', 7.1274814303515).
ligacao(120.0, 'Alvaiázere', 134.0, 'Figueiró dos Vinhos', 13.287376376847215).
ligacao(120.0, 'Alvaiázere', 186.0, 'Ferreira do Zêzere', 15.566268593982413).
ligacao(120.0, 'Alvaiázere', 283.0, 'Ansião', 10.516929659363724).
ligacao(121.0, 'Sátão', 18.0, 'Viseu', 19.442593706087514).
ligacao(121.0, 'Sátão', 90.0, 'Penalva do Castelo', 7.401539907343162).
ligacao(121.0, 'Sátão', 171.0, 'Mangualde', 14.040755946173133).
ligacao(121.0, 'Sátão', 172.0, 'Vila Nova de Paiva', 11.124191907730237).
ligacao(122.0, 'Albergaria-a-Velha', 10.0, 'Aveiro', 17.26725335917671).
ligacao(122.0, 'Albergaria-a-Velha', 52.0, 'Estarreja', 11.178515667565115).
ligacao(122.0, 'Albergaria-a-Velha', 66.0, 'Águeda', 12.129669708611226).
ligacao(122.0, 'Albergaria-a-Velha', 96.0, 'Sever do Vouga', 12.008051672940203).
ligacao(122.0, 'Albergaria-a-Velha', 132.0, 'Vale de Cambra', 17.860802947236518).
ligacao(122.0, 'Albergaria-a-Velha', 163.0, 'Oliveira de Azemeis', 14.788993390017874).
ligacao(122.0, 'Albergaria-a-Velha', 164.0, 'Oliveira do Bairro', 17.913082650677637).
ligacao(122.0, 'Albergaria-a-Velha', 235.0, 'Murtosa', 16.37184573895061).
ligacao(123.0, 'Matosinhos', 2.0, 'Picotos', 7.002640804724991).
ligacao(123.0, 'Matosinhos', 32.0, 'Porto', 8.456279433060503).
ligacao(123.0, 'Matosinhos', 67.0, 'Valongo', 17.927339904458712).
ligacao(123.0, 'Matosinhos', 71.0, 'Vila do Conde', 18.10807116232931).
ligacao(123.0, 'Matosinhos', 115.0, 'Vila Nova de Gaia', 8.649035780941109).
ligacao(123.0, 'Matosinhos', 136.0, 'Trofa', 18.3039540526081).
ligacao(123.0, 'Matosinhos', 152.0, 'Maia', 8.755624250731605).
ligacao(123.0, 'Matosinhos', 160.0, 'Espinho', 18.087908112604435).
ligacao(123.0, 'Matosinhos', 213.0, 'Gondomar', 16.127548655949028).
ligacao(124.0, 'Alandroal', 80.0, 'Vila Viçosa', 7.713070316028399).
ligacao(124.0, 'Alandroal', 82.0, 'Redondo', 15.35326078232235).
ligacao(124.0, 'Alandroal', 261.0, 'Borba', 11.565226656230946).
ligacao(125.0, 'Proença-a-Nova', 33.0, 'Sertã', 18.374970891133486).
ligacao(125.0, 'Proença-a-Nova', 140.0, 'Oleiros', 16.704201544821107).
ligacao(126.0, 'Lagoa', 8.0, 'Portimão', 8.661756192020194).
ligacao(126.0, 'Lagoa', 263.0, 'Silves', 5.590582560879052).
ligacao(127.0, 'Montijo', 1.0, 'Lisbon', 15.97562865867894).
ligacao(127.0, 'Montijo', 5.0, 'Setúbal', 18.849776821225287).
ligacao(127.0, 'Montijo', 53.0, 'Moita', 5.83489590995419).
ligacao(127.0, 'Montijo', 57.0, 'Seixal', 14.390144063907243).
ligacao(127.0, 'Montijo', 95.0, 'Alcochete', 5.030326351242249).
ligacao(127.0, 'Montijo', 157.0, 'Barreiro', 10.773138911199597).
ligacao(127.0, 'Montijo', 185.0, 'Palmela', 15.57034616699319).
ligacao(127.0, 'Montijo', 193.0, 'Almada', 18.510767623737443).
ligacao(128.0, 'Felgueiras', 40.0, 'Amarante', 14.67127753298923).
ligacao(128.0, 'Felgueiras', 50.0, 'Lousada', 12.433948869928697).
ligacao(128.0, 'Felgueiras', 55.0, 'Guimarães', 12.760881675260597).
ligacao(128.0, 'Felgueiras', 105.0, 'Fafe', 8.999541060521286).
ligacao(128.0, 'Felgueiras', 137.0, 'Penafiel', 18.277856848109707).
ligacao(128.0, 'Felgueiras', 149.0, 'Vizela', 7.358246085175573).
ligacao(128.0, 'Felgueiras', 155.0, 'Celorico de Basto', 19.38923652184368).
ligacao(128.0, 'Felgueiras', 225.0, 'Marco de Canavezes', 18.9665124999299).
ligacao(129.0, 'Nazaré', 236.0, 'Alcobaça', 10.402774900957938).
ligacao(129.0, 'Nazaré', 259.0, 'Marinha Grande', 19.87016785057473).
ligacao(130.0, 'Miranda do Corvo', 6.0, 'Copeira', 12.396506897106411).
ligacao(130.0, 'Miranda do Corvo', 48.0, 'Condeixa-a-Nova', 16.72555164800252).
ligacao(130.0, 'Miranda do Corvo', 76.0, 'Castanheira de Pêra', 14.93725660789161).
ligacao(130.0, 'Miranda do Corvo', 85.0, 'Lousã', 8.760390656243636).
ligacao(130.0, 'Miranda do Corvo', 134.0, 'Figueiró dos Vinhos', 19.759937071003012).
ligacao(130.0, 'Miranda do Corvo', 138.0, 'Penacova', 18.26987586301569).
ligacao(130.0, 'Miranda do Corvo', 143.0, 'Poiares', 13.911653572455366).
ligacao(130.0, 'Miranda do Corvo', 227.0, 'Coimbra', 14.215057753312198).
ligacao(130.0, 'Miranda do Corvo', 246.0, 'Penela', 7.8451826199265255).
ligacao(131.0, 'Penedono', 27.0, 'São João da Pesqueira', 15.968333051699924).
ligacao(131.0, 'Penedono', 110.0, 'Sernancelhe', 13.423835312234846).
ligacao(131.0, 'Penedono', 230.0, 'Mêda', 13.410844952500167).
ligacao(132.0, 'Vale de Cambra', 28.0, 'São João da Madeira', 11.760833698764667).
ligacao(132.0, 'Vale de Cambra', 96.0, 'Sever do Vouga', 11.816281859366823).
ligacao(132.0, 'Vale de Cambra', 122.0, 'Albergaria-a-Velha', 17.860802947236518).
ligacao(132.0, 'Vale de Cambra', 163.0, 'Oliveira de Azemeis', 8.212317410451414).
ligacao(132.0, 'Vale de Cambra', 180.0, 'Feira', 16.699350208316382).
ligacao(132.0, 'Vale de Cambra', 187.0, 'Arouca', 16.954069668666385).
ligacao(133.0, 'Vila Flor', 36.0, 'Alfândega da Fé', 19.56555515082555).
ligacao(133.0, 'Vila Flor', 166.0, 'Carrazeda de Anciães', 16.72447518249834).
ligacao(133.0, 'Vila Flor', 234.0, 'Torre de Moncorvo', 16.769223229476232).
ligacao(133.0, 'Vila Flor', 268.0, 'Mirandela', 18.139952091722915).
ligacao(134.0, 'Figueiró dos Vinhos', 76.0, 'Castanheira de Pêra', 12.162547224163296).
ligacao(134.0, 'Figueiró dos Vinhos', 120.0, 'Alvaiázere', 13.287376376847215).
ligacao(134.0, 'Figueiró dos Vinhos', 130.0, 'Miranda do Corvo', 19.759937071003012).
ligacao(134.0, 'Figueiró dos Vinhos', 139.0, 'Pedrógão Grande', 12.998637704775218).
ligacao(134.0, 'Figueiró dos Vinhos', 246.0, 'Penela', 16.854010050133624).
ligacao(134.0, 'Figueiró dos Vinhos', 283.0, 'Ansião', 16.075774301724856).
ligacao(135.0, 'Santiago do Cacém', 270.0, 'Sines', 18.527066644236797).
ligacao(136.0, 'Trofa', 2.0, 'Picotos', 13.886794419159287).
ligacao(136.0, 'Trofa', 32.0, 'Porto', 17.751007355358762).
ligacao(136.0, 'Trofa', 67.0, 'Valongo', 14.191381273505547).
ligacao(136.0, 'Trofa', 71.0, 'Vila do Conde', 17.43478588626773).
ligacao(136.0, 'Trofa', 115.0, 'Vila Nova de Gaia', 19.452432965055635).
ligacao(136.0, 'Trofa', 123.0, 'Matosinhos', 18.3039540526081).
ligacao(136.0, 'Trofa', 144.0, 'Famalicão', 9.992368680648244).
ligacao(136.0, 'Trofa', 152.0, 'Maia', 9.934496557953693).
ligacao(136.0, 'Trofa', 153.0, 'Santo Tirso', 9.660724967102658).
ligacao(136.0, 'Trofa', 213.0, 'Gondomar', 18.263448434783275).
ligacao(137.0, 'Penafiel', 30.0, 'Castelo de Paiva', 14.647001427596212).
ligacao(137.0, 'Penafiel', 50.0, 'Lousada', 6.993602695320533).
ligacao(137.0, 'Penafiel', 104.0, 'Paços de Ferreira', 11.560409446900895).
ligacao(137.0, 'Penafiel', 128.0, 'Felgueiras', 18.277856848109707).
ligacao(137.0, 'Penafiel', 149.0, 'Vizela', 18.359552466495575).
ligacao(137.0, 'Penafiel', 173.0, 'Paredes', 4.874844770861866).
ligacao(137.0, 'Penafiel', 225.0, 'Marco de Canavezes', 13.641697459260815).
ligacao(138.0, 'Penacova', 6.0, 'Copeira', 16.885697148770387).
ligacao(138.0, 'Penacova', 85.0, 'Lousã', 16.085697936987245).
ligacao(138.0, 'Penacova', 100.0, 'Santa Comba Dão', 19.889769936578084).
ligacao(138.0, 'Penacova', 130.0, 'Miranda do Corvo', 18.26987586301569).
ligacao(138.0, 'Penacova', 143.0, 'Poiares', 6.36572200225522).
ligacao(138.0, 'Penacova', 206.0, 'Mortágua', 13.7346326379706).
ligacao(138.0, 'Penacova', 227.0, 'Coimbra', 15.103356366715277).
ligacao(138.0, 'Penacova', 255.0, 'Mealhada', 19.99982512923537).
ligacao(139.0, 'Pedrógão Grande', 33.0, 'Sertã', 11.954150951447835).
ligacao(139.0, 'Pedrógão Grande', 76.0, 'Castanheira de Pêra', 10.982165556937835).
ligacao(139.0, 'Pedrógão Grande', 134.0, 'Figueiró dos Vinhos', 12.998637704775218).
ligacao(140.0, 'Oleiros', 125.0, 'Proença-a-Nova', 16.704201544821107).
ligacao(140.0, 'Oleiros', 250.0, 'Pampilhosa da Serra', 13.285223961980911).
ligacao(141.0, 'Sousel', 35.0, 'Fronteira', 10.676550031728524).
ligacao(141.0, 'Sousel', 88.0, 'Estremoz', 14.066721262611349).
ligacao(142.0, 'Arraiolos', 9.0, 'Évora', 17.839077165032986).
ligacao(143.0, 'Poiares', 6.0, 'Copeira', 16.985834450211705).
ligacao(143.0, 'Poiares', 85.0, 'Lousã', 9.889695334539066).
ligacao(143.0, 'Poiares', 130.0, 'Miranda do Corvo', 13.911653572455366).
ligacao(143.0, 'Poiares', 138.0, 'Penacova', 6.36572200225522).
ligacao(143.0, 'Poiares', 206.0, 'Mortágua', 18.817461366773074).
ligacao(143.0, 'Poiares', 227.0, 'Coimbra', 16.215265821132853).
ligacao(143.0, 'Poiares', 232.0, 'Góis', 15.660333016254793).
ligacao(144.0, 'Famalicão', 3.0, 'Braga', 17.38128439442839).
ligacao(144.0, 'Famalicão', 104.0, 'Paços de Ferreira', 19.464735305675397).
ligacao(144.0, 'Famalicão', 136.0, 'Trofa', 9.992368680648244).
ligacao(144.0, 'Famalicão', 152.0, 'Maia', 19.921319653325874).
ligacao(144.0, 'Famalicão', 153.0, 'Santo Tirso', 7.790045555707387).
ligacao(144.0, 'Famalicão', 209.0, 'Barcelos', 16.181637168408127).
ligacao(145.0, 'Vila Verde', 3.0, 'Braga', 9.846682916089406).
ligacao(145.0, 'Vila Verde', 54.0, 'Ponte de Lima', 18.951982854571856).
ligacao(145.0, 'Vila Verde', 61.0, 'Ponte da Barca', 15.869311612669376).
ligacao(145.0, 'Vila Verde', 146.0, 'Terras de Bouro', 14.63179090508066).
ligacao(145.0, 'Vila Verde', 179.0, 'Póvoa de Lanhoso', 18.246953906063357).
ligacao(145.0, 'Vila Verde', 248.0, 'Amares', 8.753160586325567).
ligacao(146.0, 'Terras de Bouro', 61.0, 'Ponte da Barca', 13.752793914328809).
ligacao(146.0, 'Terras de Bouro', 103.0, 'Arcos de Valdevez', 16.621688080937794).
ligacao(146.0, 'Terras de Bouro', 145.0, 'Vila Verde', 14.63179090508066).
ligacao(146.0, 'Terras de Bouro', 179.0, 'Póvoa de Lanhoso', 14.569478449141474).
ligacao(146.0, 'Terras de Bouro', 182.0, 'Vieira do Minho', 18.671082107098304).
ligacao(146.0, 'Terras de Bouro', 248.0, 'Amares', 9.653791199316554).
ligacao(147.0, 'Manteigas', 19.0, 'Covilhã', 12.215420503609312).
ligacao(147.0, 'Manteigas', 42.0, 'Gouveia', 10.556546647460117).
ligacao(147.0, 'Manteigas', 46.0, 'Seia', 16.926449565399157).
ligacao(147.0, 'Manteigas', 158.0, 'Belmonte', 19.59670540090863).
ligacao(148.0, 'Sintra', 84.0, 'Mafra', 14.60420087098266).
ligacao(148.0, 'Sintra', 86.0, 'Amadora', 14.456214235061452).
ligacao(148.0, 'Sintra', 154.0, 'Oeiras', 12.89455473601135).
ligacao(148.0, 'Sintra', 208.0, 'Cascais', 11.283249043160676).
ligacao(148.0, 'Sintra', 221.0, 'Odivelas', 19.095619934686614).
ligacao(149.0, 'Vizela', 50.0, 'Lousada', 11.38740513242639).
ligacao(149.0, 'Vizela', 55.0, 'Guimarães', 6.247172424385034).
ligacao(149.0, 'Vizela', 104.0, 'Paços de Ferreira', 16.02917548628167).
ligacao(149.0, 'Vizela', 105.0, 'Fafe', 11.487972982645784).
ligacao(149.0, 'Vizela', 128.0, 'Felgueiras', 7.358246085175573).
ligacao(149.0, 'Vizela', 137.0, 'Penafiel', 18.359552466495575).
ligacao(149.0, 'Vizela', 173.0, 'Paredes', 19.799971364878452).
ligacao(149.0, 'Vizela', 179.0, 'Póvoa de Lanhoso', 18.68071529706515).
ligacao(150.0, 'Vila Velha de Ródão', 252.0, 'Nisa', 15.999802377841752).
ligacao(151.0, 'Benavente', 170.0, 'Cartaxo', 18.21506308800518).
ligacao(151.0, 'Benavente', 181.0, 'Azambuja', 10.942906946968199).
ligacao(151.0, 'Benavente', 258.0, 'Vila Franca de Xira', 18.363656501361564).
ligacao(151.0, 'Benavente', 279.0, 'Salvaterra de Magos', 5.068647395509287).
ligacao(152.0, 'Maia', 2.0, 'Picotos', 4.333707569737594).
ligacao(152.0, 'Maia', 32.0, 'Porto', 8.659200254642828).
ligacao(152.0, 'Maia', 67.0, 'Valongo', 11.694945469304415).
ligacao(152.0, 'Maia', 71.0, 'Vila do Conde', 17.155288159631404).
ligacao(152.0, 'Maia', 115.0, 'Vila Nova de Gaia', 10.213601623325545).
ligacao(152.0, 'Maia', 123.0, 'Matosinhos', 8.755624250731605).
ligacao(152.0, 'Maia', 136.0, 'Trofa', 9.934496557953693).
ligacao(152.0, 'Maia', 144.0, 'Famalicão', 19.921319653325874).
ligacao(152.0, 'Maia', 153.0, 'Santo Tirso', 17.804960001359166).
ligacao(152.0, 'Maia', 213.0, 'Gondomar', 12.650559447313054).
ligacao(153.0, 'Santo Tirso', 67.0, 'Valongo', 15.11645202949478).
ligacao(153.0, 'Santo Tirso', 104.0, 'Paços de Ferreira', 12.088637450101897).
ligacao(153.0, 'Santo Tirso', 136.0, 'Trofa', 9.660724967102658).
ligacao(153.0, 'Santo Tirso', 144.0, 'Famalicão', 7.790045555707387).
ligacao(153.0, 'Santo Tirso', 152.0, 'Maia', 17.804960001359166).
ligacao(154.0, 'Oeiras', 1.0, 'Lisbon', 17.935300978796036).
ligacao(154.0, 'Oeiras', 86.0, 'Amadora', 9.886975050540245).
ligacao(154.0, 'Oeiras', 148.0, 'Sintra', 12.89455473601135).
ligacao(154.0, 'Oeiras', 193.0, 'Almada', 15.441240950778532).
ligacao(154.0, 'Oeiras', 208.0, 'Cascais', 11.2476287443175).
ligacao(154.0, 'Oeiras', 221.0, 'Odivelas', 16.15453057968587).
ligacao(154.0, 'Oeiras', 278.0, 'Loures', 19.856510813836422).
ligacao(155.0, 'Celorico de Basto', 40.0, 'Amarante', 14.045466501686402).
ligacao(155.0, 'Celorico de Basto', 74.0, 'Cabeceiras de Basto', 12.769850142425032).
ligacao(155.0, 'Celorico de Basto', 105.0, 'Fafe', 17.995978311834122).
ligacao(155.0, 'Celorico de Basto', 128.0, 'Felgueiras', 19.38923652184368).
ligacao(155.0, 'Celorico de Basto', 176.0, 'Trofa', 10.822963158026567).
ligacao(155.0, 'Celorico de Basto', 271.0, 'Mondim de Basto', 5.260957936536016).
ligacao(156.0, 'Bombarral', 99.0, 'Lourinhã', 16.229456438525695).
ligacao(156.0, 'Bombarral', 218.0, 'Caldas da Rainha', 13.742386183265168).
ligacao(156.0, 'Bombarral', 231.0, 'Óbidos', 9.33284519104422).
ligacao(156.0, 'Bombarral', 277.0, 'Cadaval', 5.981862817718243).
ligacao(157.0, 'Barreiro', 1.0, 'Lisbon', 8.111042315263953).
ligacao(157.0, 'Barreiro', 53.0, 'Moita', 8.293785811075711).
ligacao(157.0, 'Barreiro', 57.0, 'Seixal', 3.7062265688973257).
ligacao(157.0, 'Barreiro', 86.0, 'Amadora', 19.318430952072887).
ligacao(157.0, 'Barreiro', 95.0, 'Alcochete', 14.470765135265227).
ligacao(157.0, 'Barreiro', 127.0, 'Montijo', 10.773138911199597).
ligacao(157.0, 'Barreiro', 185.0, 'Palmela', 19.531185590229725).
ligacao(157.0, 'Barreiro', 193.0, 'Almada', 8.598823897487442).
ligacao(157.0, 'Barreiro', 221.0, 'Odivelas', 17.513645386669285).
ligacao(157.0, 'Barreiro', 278.0, 'Loures', 19.15681041979592).
ligacao(158.0, 'Belmonte', 16.0, 'Guarda', 19.639783630682388).
ligacao(158.0, 'Belmonte', 19.0, 'Covilhã', 17.16997399677683).
ligacao(158.0, 'Belmonte', 147.0, 'Manteigas', 19.59670540090863).
ligacao(159.0, 'Montemor-o-Velho', 48.0, 'Condeixa-a-Nova', 19.632520438293252).
ligacao(159.0, 'Montemor-o-Velho', 59.0, 'Cantanhede', 19.66635103774947).
ligacao(159.0, 'Montemor-o-Velho', 196.0, 'Soure', 12.797753775565393).
ligacao(159.0, 'Montemor-o-Velho', 237.0, 'Figueira da Foz', 17.699919157160128).
ligacao(160.0, 'Espinho', 2.0, 'Picotos', 18.60131455059068).
ligacao(160.0, 'Espinho', 28.0, 'São João da Madeira', 17.72093299829311).
ligacao(160.0, 'Espinho', 32.0, 'Porto', 14.516645290148988).
ligacao(160.0, 'Espinho', 115.0, 'Vila Nova de Gaia', 12.823856255043415).
ligacao(160.0, 'Espinho', 123.0, 'Matosinhos', 18.087908112604435).
ligacao(160.0, 'Espinho', 167.0, 'Ovar', 14.666861216360862).
ligacao(160.0, 'Espinho', 180.0, 'Feira', 12.83304434808813).
ligacao(160.0, 'Espinho', 213.0, 'Gondomar', 17.50131336443118).
ligacao(161.0, 'Oliveira do Hospital', 46.0, 'Seia', 16.06543641641893).
ligacao(161.0, 'Oliveira do Hospital', 92.0, 'Nelas', 17.05786872560577).
ligacao(161.0, 'Oliveira do Hospital', 207.0, 'Tábua', 16.92202283534686).
ligacao(162.0, 'Oliveira de Frades', 96.0, 'Sever do Vouga', 19.241470885823762).
ligacao(162.0, 'Oliveira de Frades', 98.0, 'São Pedro do Sul', 10.446167110476308).
ligacao(162.0, 'Oliveira de Frades', 257.0, 'Vouzela', 6.276829448057295).
ligacao(163.0, 'Oliveira de Azemeis', 28.0, 'São João da Madeira', 6.464270272815321).
ligacao(163.0, 'Oliveira de Azemeis', 52.0, 'Estarreja', 12.830079182920029).
ligacao(163.0, 'Oliveira de Azemeis', 96.0, 'Sever do Vouga', 15.186215561817558).
ligacao(163.0, 'Oliveira de Azemeis', 122.0, 'Albergaria-a-Velha', 14.788993390017874).
ligacao(163.0, 'Oliveira de Azemeis', 132.0, 'Vale de Cambra', 8.212317410451414).
ligacao(163.0, 'Oliveira de Azemeis', 167.0, 'Ovar', 15.188312496455886).
ligacao(163.0, 'Oliveira de Azemeis', 180.0, 'Feira', 10.78459756736444).
ligacao(163.0, 'Oliveira de Azemeis', 235.0, 'Murtosa', 19.266357282319703).
ligacao(164.0, 'Oliveira do Bairro', 10.0, 'Aveiro', 19.955199637688764).
ligacao(164.0, 'Oliveira do Bairro', 59.0, 'Cantanhede', 19.558602739715127).
ligacao(164.0, 'Oliveira do Bairro', 63.0, 'Anadia', 9.718607520112934).
ligacao(164.0, 'Oliveira do Bairro', 66.0, 'Águeda', 7.9775939236088735).
ligacao(164.0, 'Oliveira do Bairro', 122.0, 'Albergaria-a-Velha', 17.913082650677637).
ligacao(164.0, 'Oliveira do Bairro', 224.0, 'Vagos', 19.239940038368182).
ligacao(164.0, 'Oliveira do Bairro', 243.0, 'Ílhavo', 19.33051734667254).
ligacao(164.0, 'Oliveira do Bairro', 255.0, 'Mealhada', 14.343120652424288).
ligacao(165.0, 'Viana do Alentejo', 195.0, 'Alvito', 7.9510515442927785).
ligacao(166.0, 'Carrazeda de Anciães', 27.0, 'São João da Pesqueira', 13.58527340505136).
ligacao(166.0, 'Carrazeda de Anciães', 72.0, 'Alijó', 17.115225839585076).
ligacao(166.0, 'Carrazeda de Anciães', 133.0, 'Vila Flor', 16.72447518249834).
ligacao(166.0, 'Carrazeda de Anciães', 217.0, 'Vila Nova de Foz Côa', 19.18761009740374).
ligacao(167.0, 'Ovar', 28.0, 'São João da Madeira', 13.221568783242029).
ligacao(167.0, 'Ovar', 52.0, 'Estarreja', 11.82857009152006).
ligacao(167.0, 'Ovar', 160.0, 'Espinho', 14.666861216360862).
ligacao(167.0, 'Ovar', 163.0, 'Oliveira de Azemeis', 15.188312496455886).
ligacao(167.0, 'Ovar', 180.0, 'Feira', 10.47571193284728).
ligacao(167.0, 'Ovar', 235.0, 'Murtosa', 12.535063028960208).
ligacao(168.0, 'Torres Novas', 62.0, 'Golegã', 9.312483802939454).
ligacao(168.0, 'Torres Novas', 101.0, 'Entroncamento', 7.425079697888901).
ligacao(168.0, 'Torres Novas', 114.0, 'Ourém', 16.886951133937345).
ligacao(168.0, 'Torres Novas', 117.0, 'Vila Nova da Barquinha', 11.063377444975925).
ligacao(168.0, 'Torres Novas', 175.0, 'Chamusca', 13.681717077180492).
ligacao(168.0, 'Torres Novas', 184.0, 'Alcanena', 13.131060431282886).
ligacao(168.0, 'Torres Novas', 189.0, 'Tomar', 17.7675533872842).
ligacao(169.0, 'Torres Vedras', 56.0, 'Sobral de Monte Agraço', 12.935613997410137).
ligacao(169.0, 'Torres Vedras', 84.0, 'Mafra', 16.796623382394056).
ligacao(169.0, 'Torres Vedras', 99.0, 'Lourinhã', 15.363886149344367).
ligacao(170.0, 'Cartaxo', 17.0, 'Santarém', 12.718871871750363).
ligacao(170.0, 'Cartaxo', 58.0, 'Almeirim', 17.781160696928612).
ligacao(170.0, 'Cartaxo', 151.0, 'Benavente', 18.21506308800518).
ligacao(170.0, 'Cartaxo', 181.0, 'Azambuja', 12.090559997369958).
ligacao(170.0, 'Cartaxo', 279.0, 'Salvaterra de Magos', 13.248023413324649).
ligacao(171.0, 'Mangualde', 18.0, 'Viseu', 15.90397461391349).
ligacao(171.0, 'Mangualde', 46.0, 'Seia', 19.63168823535055).
ligacao(171.0, 'Mangualde', 90.0, 'Penalva do Castelo', 9.553163196554577).
ligacao(171.0, 'Mangualde', 92.0, 'Nelas', 11.560602452294615).
ligacao(171.0, 'Mangualde', 121.0, 'Sátão', 14.040755946173133).
ligacao(172.0, 'Vila Nova de Paiva', 43.0, 'Aguiar da Beira', 18.703168786331364).
ligacao(172.0, 'Vila Nova de Paiva', 90.0, 'Penalva do Castelo', 17.908378027057605).
ligacao(172.0, 'Vila Nova de Paiva', 107.0, 'Moimenta da Beira', 17.1164058157664).
ligacao(172.0, 'Vila Nova de Paiva', 121.0, 'Sátão', 11.124191907730237).
ligacao(172.0, 'Vila Nova de Paiva', 242.0, 'Tarouca', 17.017255892181492).
ligacao(173.0, 'Paredes', 30.0, 'Castelo de Paiva', 15.677708631046864).
ligacao(173.0, 'Paredes', 50.0, 'Lousada', 8.966571717216981).
ligacao(173.0, 'Paredes', 67.0, 'Valongo', 17.907089019715162).
ligacao(173.0, 'Paredes', 104.0, 'Paços de Ferreira', 8.450987599091413).
ligacao(173.0, 'Paredes', 137.0, 'Penafiel', 4.874844770861866).
ligacao(173.0, 'Paredes', 149.0, 'Vizela', 19.799971364878452).
ligacao(173.0, 'Paredes', 225.0, 'Marco de Canavezes', 18.402721645724043).
ligacao(174.0, 'Vidigueira', 31.0, 'Portel', 13.795145233740588).
ligacao(174.0, 'Vidigueira', 195.0, 'Alvito', 19.657647875572458).
ligacao(174.0, 'Vidigueira', 256.0, 'Cuba', 10.211096695752179).
ligacao(175.0, 'Chamusca', 62.0, 'Golegã', 4.775581639967925).
ligacao(175.0, 'Chamusca', 101.0, 'Entroncamento', 11.044890428610268).
ligacao(175.0, 'Chamusca', 117.0, 'Vila Nova da Barquinha', 10.454258332852197).
ligacao(175.0, 'Chamusca', 168.0, 'Torres Novas', 13.681717077180492).
ligacao(175.0, 'Chamusca', 191.0, 'Constância', 18.421473648435615).
ligacao(175.0, 'Chamusca', 244.0, 'Alpiarça', 14.174673735927348).
ligacao(176.0, 'Trofa', 45.0, 'Ribeira de Pena', 16.243824612756733).
ligacao(176.0, 'Trofa', 74.0, 'Cabeceiras de Basto', 3.8642278219585284).
ligacao(176.0, 'Trofa', 155.0, 'Celorico de Basto', 10.822963158026567).
ligacao(176.0, 'Trofa', 271.0, 'Mondim de Basto', 7.65600377808154).
ligacao(177.0, 'Macedo de Cavaleiros', 36.0, 'Alfândega da Fé', 19.501200147683768).
ligacao(178.0, 'Resende', 108.0, 'Santa Marta de Penaguião', 19.69279206130982).
ligacao(178.0, 'Resende', 119.0, 'Lamego', 15.68159441032711).
ligacao(178.0, 'Resende', 199.0, 'Mesão Frio', 10.922714128823381).
ligacao(178.0, 'Resende', 205.0, 'Baião', 8.883290166373754).
ligacao(178.0, 'Resende', 225.0, 'Marco de Canavezes', 19.816806241420174).
ligacao(178.0, 'Resende', 260.0, 'Cinfães', 12.804996542365727).
ligacao(178.0, 'Resende', 280.0, 'Peso da Régua', 18.894072210352054).
ligacao(179.0, 'Póvoa de Lanhoso', 3.0, 'Braga', 15.403870018927106).
ligacao(179.0, 'Póvoa de Lanhoso', 55.0, 'Guimarães', 13.61303754677886).
ligacao(179.0, 'Póvoa de Lanhoso', 105.0, 'Fafe', 15.91948902948831).
ligacao(179.0, 'Póvoa de Lanhoso', 145.0, 'Vila Verde', 18.246953906063357).
ligacao(179.0, 'Póvoa de Lanhoso', 146.0, 'Terras de Bouro', 14.569478449141474).
ligacao(179.0, 'Póvoa de Lanhoso', 149.0, 'Vizela', 18.68071529706515).
ligacao(179.0, 'Póvoa de Lanhoso', 182.0, 'Vieira do Minho', 13.751651140499272).
ligacao(179.0, 'Póvoa de Lanhoso', 248.0, 'Amares', 9.832884032673).
ligacao(180.0, 'Feira', 28.0, 'São João da Madeira', 4.945826815609249).
ligacao(180.0, 'Feira', 52.0, 'Estarreja', 17.138993255439622).
ligacao(180.0, 'Feira', 132.0, 'Vale de Cambra', 16.699350208316382).
ligacao(180.0, 'Feira', 160.0, 'Espinho', 12.83304434808813).
ligacao(180.0, 'Feira', 163.0, 'Oliveira de Azemeis', 10.78459756736444).
ligacao(180.0, 'Feira', 167.0, 'Ovar', 10.47571193284728).
ligacao(181.0, 'Azambuja', 151.0, 'Benavente', 10.942906946968199).
ligacao(181.0, 'Azambuja', 170.0, 'Cartaxo', 12.090559997369958).
ligacao(181.0, 'Azambuja', 197.0, 'Alenquer', 14.209937777837014).
ligacao(181.0, 'Azambuja', 258.0, 'Vila Franca de Xira', 16.727852606057798).
ligacao(181.0, 'Azambuja', 279.0, 'Salvaterra de Magos', 8.591450869905527).
ligacao(182.0, 'Vieira do Minho', 74.0, 'Cabeceiras de Basto', 19.36750282225367).
ligacao(182.0, 'Vieira do Minho', 105.0, 'Fafe', 18.050301367289762).
ligacao(182.0, 'Vieira do Minho', 146.0, 'Terras de Bouro', 18.671082107098304).
ligacao(182.0, 'Vieira do Minho', 179.0, 'Póvoa de Lanhoso', 13.751651140499272).
ligacao(183.0, 'Batalha', 11.0, 'Leiria', 8.9675249205116).
ligacao(183.0, 'Batalha', 236.0, 'Alcobaça', 18.707975277137766).
ligacao(183.0, 'Batalha', 259.0, 'Marinha Grande', 13.85962654980307).
ligacao(183.0, 'Batalha', 285.0, 'Porto de Mós', 5.868685819670221).
ligacao(184.0, 'Alcanena', 62.0, 'Golegã', 19.056358650329884).
ligacao(184.0, 'Alcanena', 114.0, 'Ourém', 19.824525095194772).
ligacao(184.0, 'Alcanena', 168.0, 'Torres Novas', 13.131060431282886).
ligacao(185.0, 'Palmela', 5.0, 'Setúbal', 3.571005977312316).
ligacao(185.0, 'Palmela', 53.0, 'Moita', 12.094697577037586).
ligacao(185.0, 'Palmela', 95.0, 'Alcochete', 19.56164150371869).
ligacao(185.0, 'Palmela', 127.0, 'Montijo', 15.57034616699319).
ligacao(185.0, 'Palmela', 157.0, 'Barreiro', 19.531185590229725).
ligacao(186.0, 'Ferreira do Zêzere', 120.0, 'Alvaiázere', 15.566268593982413).
ligacao(186.0, 'Ferreira do Zêzere', 188.0, 'Vila de Rei', 14.74686147795511).
ligacao(186.0, 'Ferreira do Zêzere', 189.0, 'Tomar', 14.897368979118292).
ligacao(187.0, 'Arouca', 30.0, 'Castelo de Paiva', 13.391326512709442).
ligacao(187.0, 'Arouca', 132.0, 'Vale de Cambra', 16.954069668666385).
ligacao(188.0, 'Vila de Rei', 33.0, 'Sertã', 14.049409582612437).
ligacao(188.0, 'Vila de Rei', 49.0, 'Mação', 19.34989546354193).
ligacao(188.0, 'Vila de Rei', 70.0, 'Sardoal', 14.091716765887485).
ligacao(188.0, 'Vila de Rei', 186.0, 'Ferreira do Zêzere', 14.74686147795511).
ligacao(189.0, 'Tomar', 101.0, 'Entroncamento', 14.700045246528957).
ligacao(189.0, 'Tomar', 114.0, 'Ourém', 18.691901185540083).
ligacao(189.0, 'Tomar', 117.0, 'Vila Nova da Barquinha', 15.388445161873705).
ligacao(189.0, 'Tomar', 168.0, 'Torres Novas', 17.7675533872842).
ligacao(189.0, 'Tomar', 186.0, 'Ferreira do Zêzere', 14.897368979118292).
ligacao(189.0, 'Tomar', 191.0, 'Constância', 15.515694854243623).
ligacao(190.0, 'Tondela', 100.0, 'Santa Comba Dão', 12.867991980491949).
ligacao(190.0, 'Tondela', 206.0, 'Mortágua', 19.32905594849373).
ligacao(190.0, 'Tondela', 207.0, 'Tábua', 16.308784478617774).
ligacao(191.0, 'Constância', 62.0, 'Golegã', 16.498049041629333).
ligacao(191.0, 'Constância', 70.0, 'Sardoal', 18.537184071212167).
ligacao(191.0, 'Constância', 101.0, 'Entroncamento', 13.333399999999962).
ligacao(191.0, 'Constância', 117.0, 'Vila Nova da Barquinha', 10.13794303051653).
ligacao(191.0, 'Constância', 175.0, 'Chamusca', 18.421473648435615).
ligacao(191.0, 'Constância', 189.0, 'Tomar', 15.515694854243623).
ligacao(191.0, 'Constância', 239.0, 'Abrantes', 13.333300000000037).
ligacao(192.0, 'Vila Pouca de Aguiar', 45.0, 'Ribeira de Pena', 15.996562193171322).
ligacao(192.0, 'Vila Pouca de Aguiar', 210.0, 'Boticas', 19.098192288276906).
ligacao(193.0, 'Almada', 1.0, 'Lisbon', 4.441890635754282).
ligacao(193.0, 'Almada', 53.0, 'Moita', 16.889844452214582).
ligacao(193.0, 'Almada', 57.0, 'Seixal', 6.779033786610183).
ligacao(193.0, 'Almada', 86.0, 'Amadora', 11.561947355441687).
ligacao(193.0, 'Almada', 127.0, 'Montijo', 18.510767623737443).
ligacao(193.0, 'Almada', 154.0, 'Oeiras', 15.441240950778532).
ligacao(193.0, 'Almada', 157.0, 'Barreiro', 8.598823897487442).
ligacao(193.0, 'Almada', 221.0, 'Odivelas', 12.01472927077437).
ligacao(193.0, 'Almada', 278.0, 'Loures', 15.048152345055557).
ligacao(194.0, 'Almeida', 87.0, 'Pinhel', 16.773471679410758).
ligacao(194.0, 'Almeida', 238.0, 'Figueira de Castelo Rodrigo', 17.65277429584373).
ligacao(195.0, 'Alvito', 165.0, 'Viana do Alentejo', 7.9510515442927785).
ligacao(195.0, 'Alvito', 174.0, 'Vidigueira', 19.657647875572458).
ligacao(195.0, 'Alvito', 256.0, 'Cuba', 13.438252138206225).
ligacao(196.0, 'Soure', 48.0, 'Condeixa-a-Nova', 13.939179580592134).
ligacao(196.0, 'Soure', 159.0, 'Montemor-o-Velho', 12.797753775565393).
ligacao(196.0, 'Soure', 202.0, 'Pombal', 14.317247062546686).
ligacao(197.0, 'Alenquer', 56.0, 'Sobral de Monte Agraço', 14.545436024059216).
ligacao(197.0, 'Alenquer', 181.0, 'Azambuja', 14.209937777837014).
ligacao(197.0, 'Alenquer', 240.0, 'Arruda dos Vinhos', 9.703535843186367).
ligacao(197.0, 'Alenquer', 258.0, 'Vila Franca de Xira', 9.984900844775352).
ligacao(199.0, 'Mesão Frio', 20.0, 'Vila Marim', 17.000673550480084).
ligacao(199.0, 'Mesão Frio', 102.0, 'Armamar', 19.04218352631864).
ligacao(199.0, 'Mesão Frio', 108.0, 'Santa Marta de Penaguião', 8.77175066050078).
ligacao(199.0, 'Mesão Frio', 111.0, 'Vila Real', 18.878289444226734).
ligacao(199.0, 'Mesão Frio', 119.0, 'Lamego', 9.150285639804165).
ligacao(199.0, 'Mesão Frio', 178.0, 'Resende', 10.922714128823381).
ligacao(199.0, 'Mesão Frio', 205.0, 'Baião', 16.117057896526834).
ligacao(199.0, 'Mesão Frio', 242.0, 'Tarouca', 17.49322987129629).
ligacao(199.0, 'Mesão Frio', 280.0, 'Peso da Régua', 8.651759951015748).
ligacao(200.0, 'Mourão', 233.0, 'Reguengos de Monsaraz', 19.75157755977996).
ligacao(201.0, 'Valpaços', 268.0, 'Mirandela', 17.255766313032698).
ligacao(202.0, 'Pombal', 196.0, 'Soure', 14.317247062546686).
ligacao(202.0, 'Pombal', 283.0, 'Ansião', 19.285489617067174).
ligacao(204.0, 'Póvoa de Varzim', 71.0, 'Vila do Conde', 3.5061050198191475).
ligacao(204.0, 'Póvoa de Varzim', 94.0, 'Esposende', 15.375977640462665).
ligacao(205.0, 'Baião', 40.0, 'Amarante', 11.989528171283759).
ligacao(205.0, 'Baião', 178.0, 'Resende', 8.883290166373754).
ligacao(205.0, 'Baião', 199.0, 'Mesão Frio', 16.117057896526834).
ligacao(205.0, 'Baião', 225.0, 'Marco de Canavezes', 11.588376535563565).
ligacao(205.0, 'Baião', 260.0, 'Cinfães', 10.627849794290038).
ligacao(206.0, 'Mortágua', 100.0, 'Santa Comba Dão', 10.075631279974475).
ligacao(206.0, 'Mortágua', 138.0, 'Penacova', 13.7346326379706).
ligacao(206.0, 'Mortágua', 143.0, 'Poiares', 18.817461366773074).
ligacao(206.0, 'Mortágua', 190.0, 'Tondela', 19.32905594849373).
ligacao(207.0, 'Tábua', 100.0, 'Santa Comba Dão', 10.855587181723427).
ligacao(207.0, 'Tábua', 161.0, 'Oliveira do Hospital', 16.92202283534686).
ligacao(207.0, 'Tábua', 190.0, 'Tondela', 16.308784478617774).
ligacao(207.0, 'Tábua', 275.0, 'Arganil', 14.591346247005587).
ligacao(208.0, 'Cascais', 86.0, 'Amadora', 19.37113770794054).
ligacao(208.0, 'Cascais', 148.0, 'Sintra', 11.283249043160676).
ligacao(208.0, 'Cascais', 154.0, 'Oeiras', 11.2476287443175).
ligacao(209.0, 'Barcelos', 3.0, 'Braga', 19.534334798246835).
ligacao(209.0, 'Barcelos', 94.0, 'Esposende', 16.69792681412886).
ligacao(209.0, 'Barcelos', 144.0, 'Famalicão', 16.181637168408127).
ligacao(210.0, 'Boticas', 192.0, 'Vila Pouca de Aguiar', 19.098192288276906).
ligacao(210.0, 'Boticas', 212.0, 'Montalegre', 18.21945421822481).
ligacao(211.0, 'Sabrosa', 41.0, 'Tabuaço', 15.10858372879517).
ligacao(211.0, 'Sabrosa', 72.0, 'Alijó', 10.159428661100904).
ligacao(211.0, 'Sabrosa', 102.0, 'Armamar', 19.675220273735192).
ligacao(211.0, 'Sabrosa', 109.0, 'Murça', 18.437849202387735).
ligacao(211.0, 'Sabrosa', 111.0, 'Vila Real', 17.14472761317603).
ligacao(212.0, 'Montalegre', 210.0, 'Boticas', 18.21945421822481).
ligacao(213.0, 'Gondomar', 2.0, 'Picotos', 9.981300779457596).
ligacao(213.0, 'Gondomar', 32.0, 'Porto', 7.892700802640489).
ligacao(213.0, 'Gondomar', 67.0, 'Valongo', 5.504107122866896).
ligacao(213.0, 'Gondomar', 115.0, 'Vila Nova de Gaia', 8.588685739390025).
ligacao(213.0, 'Gondomar', 123.0, 'Matosinhos', 16.127548655949028).
ligacao(213.0, 'Gondomar', 136.0, 'Trofa', 18.263448434783275).
ligacao(213.0, 'Gondomar', 152.0, 'Maia', 12.650559447313054).
ligacao(213.0, 'Gondomar', 160.0, 'Espinho', 17.50131336443118).
ligacao(217.0, 'Vila Nova de Foz Côa', 166.0, 'Carrazeda de Anciães', 19.18761009740374).
ligacao(217.0, 'Vila Nova de Foz Côa', 230.0, 'Mêda', 13.222444674492154).
ligacao(217.0, 'Vila Nova de Foz Côa', 234.0, 'Torre de Moncorvo', 17.245120821843987).
ligacao(218.0, 'Caldas da Rainha', 156.0, 'Bombarral', 13.742386183265168).
ligacao(218.0, 'Caldas da Rainha', 231.0, 'Óbidos', 4.646343828215963).
ligacao(218.0, 'Caldas da Rainha', 277.0, 'Cadaval', 16.407976944157202).
ligacao(219.0, 'Marvão', 21.0, 'Portalegre', 11.04413457723132).
ligacao(219.0, 'Marvão', 116.0, 'Castelo de Vide', 7.991462445009652).
ligacao(221.0, 'Odivelas', 1.0, 'Lisbon', 9.536565631819363).
ligacao(221.0, 'Odivelas', 57.0, 'Seixal', 17.738225486502554).
ligacao(221.0, 'Odivelas', 86.0, 'Amadora', 6.324057692652669).
ligacao(221.0, 'Odivelas', 148.0, 'Sintra', 19.095619934686614).
ligacao(221.0, 'Odivelas', 154.0, 'Oeiras', 16.15453057968587).
ligacao(221.0, 'Odivelas', 157.0, 'Barreiro', 17.513645386669285).
ligacao(221.0, 'Odivelas', 193.0, 'Almada', 12.01472927077437).
ligacao(221.0, 'Odivelas', 278.0, 'Loures', 3.8954384413053047).
ligacao(223.0, 'Peniche', 99.0, 'Lourinhã', 13.957376326874602).
ligacao(224.0, 'Vagos', 10.0, 'Aveiro', 9.54111925614584).
ligacao(224.0, 'Vagos', 164.0, 'Oliveira do Bairro', 19.239940038368182).
ligacao(224.0, 'Vagos', 235.0, 'Murtosa', 18.623525259466437).
ligacao(224.0, 'Vagos', 243.0, 'Ílhavo', 4.620730493114547).
ligacao(224.0, 'Vagos', 262.0, 'Mira', 13.875023754934714).
ligacao(225.0, 'Marco de Canavezes', 30.0, 'Castelo de Paiva', 16.757308084832772).
ligacao(225.0, 'Marco de Canavezes', 40.0, 'Amarante', 11.07713391270524).
ligacao(225.0, 'Marco de Canavezes', 50.0, 'Lousada', 16.16633295494056).
ligacao(225.0, 'Marco de Canavezes', 128.0, 'Felgueiras', 18.9665124999299).
ligacao(225.0, 'Marco de Canavezes', 137.0, 'Penafiel', 13.641697459260815).
ligacao(225.0, 'Marco de Canavezes', 173.0, 'Paredes', 18.402721645724043).
ligacao(225.0, 'Marco de Canavezes', 178.0, 'Resende', 19.816806241420174).
ligacao(225.0, 'Marco de Canavezes', 205.0, 'Baião', 11.588376535563565).
ligacao(225.0, 'Marco de Canavezes', 260.0, 'Cinfães', 12.635450614837232).
ligacao(227.0, 'Coimbra', 6.0, 'Copeira', 2.907223104613392).
ligacao(227.0, 'Coimbra', 48.0, 'Condeixa-a-Nova', 11.954373469989862).
ligacao(227.0, 'Coimbra', 85.0, 'Lousã', 19.633898187064016).
ligacao(227.0, 'Coimbra', 130.0, 'Miranda do Corvo', 14.215057753312198).
ligacao(227.0, 'Coimbra', 138.0, 'Penacova', 15.103356366715277).
ligacao(227.0, 'Coimbra', 143.0, 'Poiares', 16.215265821132853).
ligacao(227.0, 'Coimbra', 246.0, 'Penela', 17.607423151898026).
ligacao(227.0, 'Coimbra', 255.0, 'Mealhada', 17.507367466869464).
ligacao(230.0, 'Mêda', 131.0, 'Penedono', 13.410844952500167).
ligacao(230.0, 'Mêda', 217.0, 'Vila Nova de Foz Côa', 13.222444674492154).
ligacao(231.0, 'Óbidos', 156.0, 'Bombarral', 9.33284519104422).
ligacao(231.0, 'Óbidos', 218.0, 'Caldas da Rainha', 4.646343828215963).
ligacao(231.0, 'Óbidos', 277.0, 'Cadaval', 12.914285152883808).
ligacao(232.0, 'Góis', 76.0, 'Castanheira de Pêra', 18.066213699887584).
ligacao(232.0, 'Góis', 85.0, 'Lousã', 14.430467328884413).
ligacao(232.0, 'Góis', 143.0, 'Poiares', 15.660333016254793).
ligacao(232.0, 'Góis', 250.0, 'Pampilhosa da Serra', 19.338118076483298).
ligacao(232.0, 'Góis', 275.0, 'Arganil', 8.276497996133285).
ligacao(233.0, 'Reguengos de Monsaraz', 200.0, 'Mourão', 19.75157755977996).
ligacao(234.0, 'Torre de Moncorvo', 36.0, 'Alfândega da Fé', 19.23258089804866).
ligacao(234.0, 'Torre de Moncorvo', 133.0, 'Vila Flor', 16.769223229476232).
ligacao(234.0, 'Torre de Moncorvo', 217.0, 'Vila Nova de Foz Côa', 17.245120821843987).
ligacao(235.0, 'Murtosa', 10.0, 'Aveiro', 9.300984509716935).
ligacao(235.0, 'Murtosa', 52.0, 'Estarreja', 6.8468644538940815).
ligacao(235.0, 'Murtosa', 122.0, 'Albergaria-a-Velha', 16.37184573895061).
ligacao(235.0, 'Murtosa', 163.0, 'Oliveira de Azemeis', 19.266357282319703).
ligacao(235.0, 'Murtosa', 167.0, 'Ovar', 12.535063028960208).
ligacao(235.0, 'Murtosa', 224.0, 'Vagos', 18.623525259466437).
ligacao(235.0, 'Murtosa', 243.0, 'Ílhavo', 14.021793425949205).
ligacao(236.0, 'Alcobaça', 129.0, 'Nazaré', 10.402774900957938).
ligacao(236.0, 'Alcobaça', 183.0, 'Batalha', 18.707975277137766).
ligacao(236.0, 'Alcobaça', 285.0, 'Porto de Mós', 16.66812014595523).
ligacao(237.0, 'Figueira da Foz', 159.0, 'Montemor-o-Velho', 17.699919157160128).
ligacao(238.0, 'Figueira de Castelo Rodrigo', 87.0, 'Pinhel', 15.723783769818592).
ligacao(238.0, 'Figueira de Castelo Rodrigo', 194.0, 'Almeida', 17.65277429584373).
ligacao(239.0, 'Abrantes', 70.0, 'Sardoal', 7.934223023081813).
ligacao(239.0, 'Abrantes', 191.0, 'Constância', 13.333300000000037).
ligacao(240.0, 'Arruda dos Vinhos', 56.0, 'Sobral de Monte Agraço', 8.147373469407391).
ligacao(240.0, 'Arruda dos Vinhos', 197.0, 'Alenquer', 9.703535843186367).
ligacao(240.0, 'Arruda dos Vinhos', 258.0, 'Vila Franca de Xira', 9.242344539130517).
ligacao(240.0, 'Arruda dos Vinhos', 278.0, 'Loures', 17.95789353599113).
ligacao(241.0, 'Fundão', 19.0, 'Covilhã', 14.578741874729772).
ligacao(242.0, 'Tarouca', 102.0, 'Armamar', 12.959511919822045).
ligacao(242.0, 'Tarouca', 107.0, 'Moimenta da Beira', 16.66160265310623).
ligacao(242.0, 'Tarouca', 108.0, 'Santa Marta de Penaguião', 19.760182977391647).
ligacao(242.0, 'Tarouca', 119.0, 'Lamego', 8.771365340698061).
ligacao(242.0, 'Tarouca', 172.0, 'Vila Nova de Paiva', 17.017255892181492).
ligacao(242.0, 'Tarouca', 199.0, 'Mesão Frio', 17.49322987129629).
ligacao(242.0, 'Tarouca', 274.0, 'Castro Daire', 19.153060631136782).
ligacao(242.0, 'Tarouca', 280.0, 'Peso da Régua', 15.057224653966312).
ligacao(243.0, 'Ílhavo', 10.0, 'Aveiro', 4.9434474094502).
ligacao(243.0, 'Ílhavo', 52.0, 'Estarreja', 18.328100937358187).
ligacao(243.0, 'Ílhavo', 164.0, 'Oliveira do Bairro', 19.33051734667254).
ligacao(243.0, 'Ílhavo', 224.0, 'Vagos', 4.620730493114547).
ligacao(243.0, 'Ílhavo', 235.0, 'Murtosa', 14.021793425949205).
ligacao(243.0, 'Ílhavo', 262.0, 'Mira', 18.479887324602327).
ligacao(244.0, 'Alpiarça', 17.0, 'Santarém', 10.42170004269936).
ligacao(244.0, 'Alpiarça', 58.0, 'Almeirim', 5.921865706008578).
ligacao(244.0, 'Alpiarça', 62.0, 'Golegã', 17.588423701968853).
ligacao(244.0, 'Alpiarça', 175.0, 'Chamusca', 14.174673735927348).
ligacao(246.0, 'Penela', 6.0, 'Copeira', 14.923491531474994).
ligacao(246.0, 'Penela', 48.0, 'Condeixa-a-Nova', 14.147596972277626).
ligacao(246.0, 'Penela', 76.0, 'Castanheira de Pêra', 17.48179959186138).
ligacao(246.0, 'Penela', 85.0, 'Lousã', 15.733089300261408).
ligacao(246.0, 'Penela', 130.0, 'Miranda do Corvo', 7.8451826199265255).
ligacao(246.0, 'Penela', 134.0, 'Figueiró dos Vinhos', 16.854010050133624).
ligacao(246.0, 'Penela', 227.0, 'Coimbra', 17.607423151898026).
ligacao(246.0, 'Penela', 283.0, 'Ansião', 13.235223073677044).
ligacao(247.0, 'Valença', 26.0, 'Paredes de Coura', 14.781064728225507).
ligacao(247.0, 'Valença', 83.0, 'Vila Nova de Cerveira', 13.174830525285557).
ligacao(247.0, 'Valença', 272.0, 'Monção', 17.120244963784877).
ligacao(248.0, 'Amares', 3.0, 'Braga', 10.601444265759458).
ligacao(248.0, 'Amares', 55.0, 'Guimarães', 19.44075032322586).
ligacao(248.0, 'Amares', 61.0, 'Ponte da Barca', 18.515343644934294).
ligacao(248.0, 'Amares', 145.0, 'Vila Verde', 8.753160586325567).
ligacao(248.0, 'Amares', 146.0, 'Terras de Bouro', 9.653791199316554).
ligacao(248.0, 'Amares', 179.0, 'Póvoa de Lanhoso', 9.832884032673).
ligacao(249.0, 'São Brás de Alportel', 12.0, 'Faro', 14.101013114312009).
ligacao(249.0, 'São Brás de Alportel', 118.0, 'Loulé', 13.306061567947228).
ligacao(249.0, 'São Brás de Alportel', 276.0, 'Olhão', 13.2870272807732).
ligacao(250.0, 'Pampilhosa da Serra', 140.0, 'Oleiros', 13.285223961980911).
ligacao(250.0, 'Pampilhosa da Serra', 232.0, 'Góis', 19.338118076483298).
ligacao(252.0, 'Nisa', 150.0, 'Vila Velha de Ródão', 15.999802377841752).
ligacao(253.0, 'Alter do Chão', 35.0, 'Fronteira', 14.274546017999898).
ligacao(253.0, 'Alter do Chão', 91.0, 'Crato', 8.977674697269826).
ligacao(254.0, 'Castro Verde', 69.0, 'Ourique', 14.674823286840578).
ligacao(254.0, 'Castro Verde', 81.0, 'Almodôvar', 18.726673576746244).
ligacao(254.0, 'Castro Verde', 93.0, 'Aljustrel', 19.60835019908632).
ligacao(255.0, 'Mealhada', 59.0, 'Cantanhede', 14.765066919590911).
ligacao(255.0, 'Mealhada', 63.0, 'Anadia', 6.2532690490657075).
ligacao(255.0, 'Mealhada', 66.0, 'Águeda', 19.92177707936738).
ligacao(255.0, 'Mealhada', 138.0, 'Penacova', 19.99982512923537).
ligacao(255.0, 'Mealhada', 164.0, 'Oliveira do Bairro', 14.343120652424288).
ligacao(255.0, 'Mealhada', 227.0, 'Coimbra', 17.507367466869464).
ligacao(256.0, 'Cuba', 13.0, 'Beja', 15.31761045626868).
ligacao(256.0, 'Cuba', 174.0, 'Vidigueira', 10.211096695752179).
ligacao(256.0, 'Cuba', 195.0, 'Alvito', 13.438252138206225).
ligacao(256.0, 'Cuba', 266.0, 'Ferreira do Alentejo', 18.217304097204085).
ligacao(257.0, 'Vouzela', 98.0, 'São Pedro do Sul', 5.122013293617944).
ligacao(257.0, 'Vouzela', 162.0, 'Oliveira de Frades', 6.276829448057295).
ligacao(258.0, 'Vila Franca de Xira', 56.0, 'Sobral de Monte Agraço', 17.35146941933154).
ligacao(258.0, 'Vila Franca de Xira', 151.0, 'Benavente', 18.363656501361564).
ligacao(258.0, 'Vila Franca de Xira', 181.0, 'Azambuja', 16.727852606057798).
ligacao(258.0, 'Vila Franca de Xira', 197.0, 'Alenquer', 9.984900844775352).
ligacao(258.0, 'Vila Franca de Xira', 240.0, 'Arruda dos Vinhos', 9.242344539130517).
ligacao(259.0, 'Marinha Grande', 11.0, 'Leiria', 12.728900427766662).
ligacao(259.0, 'Marinha Grande', 129.0, 'Nazaré', 19.87016785057473).
ligacao(259.0, 'Marinha Grande', 183.0, 'Batalha', 13.85962654980307).
ligacao(259.0, 'Marinha Grande', 285.0, 'Porto de Mós', 18.499697139412973).
ligacao(260.0, 'Cinfães', 30.0, 'Castelo de Paiva', 17.493471487672334).
ligacao(260.0, 'Cinfães', 178.0, 'Resende', 12.804996542365727).
ligacao(260.0, 'Cinfães', 205.0, 'Baião', 10.627849794290038).
ligacao(260.0, 'Cinfães', 225.0, 'Marco de Canavezes', 12.635450614837232).
ligacao(261.0, 'Borba', 80.0, 'Vila Viçosa', 4.607939110925774).
ligacao(261.0, 'Borba', 82.0, 'Redondo', 18.202830884233098).
ligacao(261.0, 'Borba', 88.0, 'Estremoz', 13.681682430169259).
ligacao(261.0, 'Borba', 124.0, 'Alandroal', 11.565226656230946).
ligacao(262.0, 'Mira', 59.0, 'Cantanhede', 16.518142736095022).
ligacao(262.0, 'Mira', 224.0, 'Vagos', 13.875023754934714).
ligacao(262.0, 'Mira', 243.0, 'Ílhavo', 18.479887324602327).
ligacao(263.0, 'Silves', 8.0, 'Portimão', 11.437934328365476).
ligacao(263.0, 'Silves', 73.0, 'Monchique', 17.38627911716589).
ligacao(263.0, 'Silves', 126.0, 'Lagoa', 5.590582560879052).
ligacao(265.0, 'Campo Maior', 60.0, 'Elvas', 16.773777183449248).
ligacao(266.0, 'Ferreira do Alentejo', 13.0, 'Beja', 17.365648658198694).
ligacao(266.0, 'Ferreira do Alentejo', 256.0, 'Cuba', 18.217304097204085).
ligacao(268.0, 'Mirandela', 133.0, 'Vila Flor', 18.139952091722915).
ligacao(268.0, 'Mirandela', 201.0, 'Valpaços', 17.255766313032698).
ligacao(270.0, 'Sines', 135.0, 'Santiago do Cacém', 18.527066644236797).
ligacao(271.0, 'Mondim de Basto', 40.0, 'Amarante', 18.88788201625576).
ligacao(271.0, 'Mondim de Basto', 45.0, 'Ribeira de Pena', 18.760506117906303).
ligacao(271.0, 'Mondim de Basto', 74.0, 'Cabeceiras de Basto', 10.854404874058847).
ligacao(271.0, 'Mondim de Basto', 155.0, 'Celorico de Basto', 5.260957936536016).
ligacao(271.0, 'Mondim de Basto', 176.0, 'Trofa', 7.65600377808154).
ligacao(272.0, 'Monção', 26.0, 'Paredes de Coura', 18.616766612921744).
ligacao(272.0, 'Monção', 247.0, 'Valença', 17.120244963784877).
ligacao(273.0, 'Castro Marim', 284.0, 'Vila Real de Santo António', 3.643455530125085).
ligacao(274.0, 'Castro Daire', 98.0, 'São Pedro do Sul', 19.933418703774734).
ligacao(274.0, 'Castro Daire', 242.0, 'Tarouca', 19.153060631136782).
ligacao(275.0, 'Arganil', 100.0, 'Santa Comba Dão', 19.627731399221915).
ligacao(275.0, 'Arganil', 207.0, 'Tábua', 14.591346247005587).
ligacao(275.0, 'Arganil', 232.0, 'Góis', 8.276497996133285).
ligacao(276.0, 'Olhão', 12.0, 'Faro', 9.159454499586731).
ligacao(276.0, 'Olhão', 249.0, 'São Brás de Alportel', 13.2870272807732).
ligacao(277.0, 'Cadaval', 47.0, 'Rio Maior', 18.93827140158227).
ligacao(277.0, 'Cadaval', 156.0, 'Bombarral', 5.981862817718243).
ligacao(277.0, 'Cadaval', 218.0, 'Caldas da Rainha', 16.407976944157202).
ligacao(277.0, 'Cadaval', 231.0, 'Óbidos', 12.914285152883808).
ligacao(278.0, 'Loures', 1.0, 'Lisbon', 11.767027557543855).
ligacao(278.0, 'Loures', 56.0, 'Sobral de Monte Agraço', 19.12806660852063).
ligacao(278.0, 'Loures', 84.0, 'Mafra', 19.306919195459514).
ligacao(278.0, 'Loures', 86.0, 'Amadora', 9.969544646070654).
ligacao(278.0, 'Loures', 154.0, 'Oeiras', 19.856510813836422).
ligacao(278.0, 'Loures', 157.0, 'Barreiro', 19.15681041979592).
ligacao(278.0, 'Loures', 193.0, 'Almada', 15.048152345055557).
ligacao(278.0, 'Loures', 221.0, 'Odivelas', 3.8954384413053047).
ligacao(278.0, 'Loures', 240.0, 'Arruda dos Vinhos', 17.95789353599113).
ligacao(279.0, 'Salvaterra de Magos', 151.0, 'Benavente', 5.068647395509287).
ligacao(279.0, 'Salvaterra de Magos', 170.0, 'Cartaxo', 13.248023413324649).
ligacao(279.0, 'Salvaterra de Magos', 181.0, 'Azambuja', 8.591450869905527).
ligacao(280.0, 'Peso da Régua', 20.0, 'Vila Marim', 14.023865758769707).
ligacao(280.0, 'Peso da Régua', 102.0, 'Armamar', 11.148064702000946).
ligacao(280.0, 'Peso da Régua', 108.0, 'Santa Marta de Penaguião', 4.806222976516621).
ligacao(280.0, 'Peso da Régua', 111.0, 'Vila Real', 14.232884559709005).
ligacao(280.0, 'Peso da Régua', 119.0, 'Lamego', 7.1274814303515).
ligacao(280.0, 'Peso da Régua', 178.0, 'Resende', 18.894072210352054).
ligacao(280.0, 'Peso da Régua', 199.0, 'Mesão Frio', 8.651759951015748).
ligacao(280.0, 'Peso da Régua', 242.0, 'Tarouca', 15.057224653966312).
ligacao(282.0, 'Sabugal', 89.0, 'Penamacor', 19.86335158073799).
ligacao(283.0, 'Ansião', 120.0, 'Alvaiázere', 10.516929659363724).
ligacao(283.0, 'Ansião', 134.0, 'Figueiró dos Vinhos', 16.075774301724856).
ligacao(283.0, 'Ansião', 202.0, 'Pombal', 19.285489617067174).
ligacao(283.0, 'Ansião', 246.0, 'Penela', 13.235223073677044).
ligacao(284.0, 'Vila Real de Santo António', 273.0, 'Castro Marim', 3.643455530125085).
ligacao(285.0, 'Porto de Mós', 11.0, 'Leiria', 14.642687664837723).
ligacao(285.0, 'Porto de Mós', 183.0, 'Batalha', 5.868685819670221).
ligacao(285.0, 'Porto de Mós', 236.0, 'Alcobaça', 16.66812014595523).
ligacao(285.0, 'Porto de Mós', 259.0, 'Marinha Grande', 18.499697139412973).

%---------------------------------pesquisa em profundidade primeiro

resolve_pp(Nodo, Dst, [Nodo|Caminho]) :-
    profundidadeprimeiro(Nodo, Dst, Caminho).

profundidadeprimeiro(Dst, Dst, [Caminho]).

profundidadeprimeiro(Nodo, Dst, [ProxNodo|Caminho]) :-
    ligacao(Nodo,_,ProxNodo,_,_),
    profundidadeprimeiro(ProxNodo, Dst, Caminho).


%---------------------------------filtra caracteristicas

resolve_caracteristicas(Nodo, Dst,L, [Nodo|Caminho]) :-
    caracteristicas(Nodo, Dst, L, Caminho).

caracteristicas(Dst, Dst, B, [Caminho]) :- findall((O),cidade(Dst,_,_,_,_,O),L),
                                        conf_list(B,L).

caracteristicas(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo,_,ProxNodo,_,_),
    findall((O),cidade(Nodo,_,_,_,_,O),L),
    conf_list(B,L),
    caracteristicas(ProxNodo, Dst, B, Caminho).


%---------------------------------pesquisa sem caracteristicas

resolve_sem_caracteristicas(Nodo, Dst,L, [Nodo|Caminho]) :-
    sem_caracteristicas(Nodo, Dst, L, Caminho).

sem_caracteristicas(Dst, Dst, B, [Dst|_]) :- findall((O),cidade(Dst,_,_,_,_,O),L),
                                         nao(conf_list(B,L)).

sem_caracteristicas(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo,_,ProxNodo,_),
    findall((O),cidade(Nodo,_,_,_,_,O),L),
    nao(conf_list(B,L)),
    sem_caracteristicas(ProxNodo, Dst, B, Caminho).

%---------------------------------pesquisa com cidade com maior numero de carreiras
/*
resolve_maior(Nodo, Dst, [Nodo|Caminho], M) :-
    maior(Nodo, Dst, Caminho, M).


maior(Dst, Dst,[_],0).

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
    ligacao(Nodo,_,ProxNodo,_),
    maior(ProxNodo, Dst, Caminho,M),
    findall((C),cidade(Nodo,_,_,_,_,_,_,C,_,_,_),L),
    comp(L,N),
    N>=M,
    P is N.

maior(Nodo, Dst, [ProxNodo|Caminho],P) :-
    ligacao(Nodo, ProxNodo,_),
    maior(ProxNodo, Dst, Caminho,M),
    findall((C),cidade(Nodo,_,_,_,_,_,_,C,_,_,_),L),
    comp(L,N),
    M>N,
    P is M.
*/
%---------------------------------pesquisa com menor número de paragens

todos(A,B,L) :- findall((S),resolve_pp(A,B,S),L).

melhor(A,B,L,Custo) :- findall((S,C),(resolve_pp(A,B,S), length(S,C)),L), minimo(L,(S,Custo)).

minimo([(P,X)],(P,X)).
minimo([_,X|L],(Py,Y)) :- minimo(L,(Py,Y)), X>Y.
minimo([Px,X|L],(Px,X)) :- minimo(L,(_,Y)), X=<Y.

%---------------------------------pesquisa só com publicidade
/*
resolve_pub(Nodo, Dst,L, [Nodo|Caminho]) :-
    pub(Nodo, Dst, L, Caminho).

pub(Dst, Dst, B, [Caminho]) :- findall((O),cidade(Dst,_,_,_,_,P,_,_,_,_,_),L),
                                    pertence(B,L).

pub(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo, ProxNodo,_),
    findall((O),cidade(Nodo,_,_,_,_,P,_,_,_,_,_),L),
    pertence(B,L),
    pub(ProxNodo, Dst, B, Caminho).


%---------------------------------pesquisa só com abrigo

resolve_abrigo(Nodo, Dst,L, [Nodo|Caminho]) :-
    abrigo(Nodo, Dst, L, Caminho).

abrigo(Dst, Dst, B, [Caminho]) :- findall((A),cidade(Dst,_,_,_,A,_,_,_,_,_,_),L),
                                    nao(pertence(B,L)).


abrigo(Nodo, Dst, B, [ProxNodo|Caminho]) :-
    ligacao(Nodo, ProxNodo,_),
    findall((A),cidade(Nodo,_,_,_,A,_,_,_,_,_,_),L),
    nao(pertence(B,L)),
    abrigo(ProxNodo, Dst, B, Caminho).

*/
%---------------------------------funcs auxiliares

comp([H|T],N) :- length(H,N).

nao(Q):- Q,!,fail.
nao(Q).

conf_list([H|T],L) :- pertence(H,L).

conf_list([_|T],L) :- conf_list(T,L).

pertence(X,[X|T]).
pertence(X,[_|T]):- pertence(X,T).

