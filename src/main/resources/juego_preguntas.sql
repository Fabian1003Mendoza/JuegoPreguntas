-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2021 a las 07:45:48
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juego_preguntas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(5) NOT NULL,
  `nombre_categoria` varchar(45) NOT NULL,
  `nivel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_categoria`, `nivel`) VALUES
(1, 'animales', 'bajo'),
(2, 'vehiculos', 'medio'),
(3, 'capitales', 'alto'),
(4, 'tecnologia', 'superior'),
(5, 'javaPOO', 'experto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id` int(11) NOT NULL,
  `nombre_jugador` varchar(45) NOT NULL,
  `premio_total` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id`, `nombre_jugador`, `premio_total`) VALUES
(1, 'dg', 1000),
(2, 'juan', 3000),
(3, 'brayan', 10000),
(4, 'ji', 0),
(5, 'juancho', 3000),
(6, 'jairo', 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `descripcion_pregunta` varchar(250) NOT NULL,
  `categorias_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `descripcion_pregunta`, `categorias_id`) VALUES
(1, '¿Cuál es el único mamífero de todo el reino animal que puede volar?', 1),
(2, '¿Cuánto dura el embarazo de un elefante hembra?', 1),
(3, 'Qué animal tiene más de 10 corazones', 1),
(4, '¿Cuál es el animal más grande de la tierra?', 1),
(5, 'De entre estos animales, ¿cuál crees que puede ser el más longevo?', 1),
(6, '¿En qué año se patentó el primer coche?', 2),
(7, ' ¿Qué marca de coches fue la primera en introducir el airbag?', 2),
(8, '¿En qué unidades se mide el par motor de un coche?', 2),
(9, '¿De qué país procede la marca de coches Dacia?', 2),
(10, '¿Cuál de estas marcas de coche no pertenece al grupo Volkswagen?', 2),
(11, '¿Cuál es la capital de Brasil?', 3),
(12, '¿La capital de Australia es?', 3),
(13, '¿La capital de Singapur es?', 3),
(14, '¿La capital de Barein es?', 3),
(15, '¿La capital de Mexico es?', 3),
(16, 'La sigla TIC significa:', 4),
(17, 'El BLOG se define como:', 4),
(18, 'Facebook, Twitter, y Wiki son aplicaciones de:', 4),
(19, 'La herramienta Google Docs permite:', 4),
(20, 'Un medio de codificación de texto en el que cada símbolo está representado por 16 bits es:', 4),
(21, '¿Cuál es la descripción que crees que define mejor el concepto \'clase\' en la programación orientada a objetos?', 5),
(22, '¿Qué elementos crees que definen a un objeto?', 5),
(23, '¿Qué código de los siguientes tiene que ver con la herencia?', 5),
(24, '¿Qué significa instanciar una clase?', 5),
(25, 'En Java, ¿a qué nos estamos refiriendo si hablamos de \'Swing\'?', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premiacion`
--

CREATE TABLE `premiacion` (
  `id` int(11) NOT NULL,
  `premio` int(45) NOT NULL,
  `categorias_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `premiacion`
--

INSERT INTO `premiacion` (`id`, `premio`, `categorias_id`) VALUES
(1, 1000, 1),
(2, 3000, 2),
(3, 5000, 3),
(4, 8000, 4),
(5, 10000, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `nombre_respuesta` varchar(250) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `preguntas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `nombre_respuesta`, `estado`, `preguntas_id`) VALUES
(1, '0) El murciélago', 'true', 1),
(2, '1) La cigüeña', 'false', 1),
(3, '2) El albatros', 'false', 1),
(4, '3) El perro', 'false', 1),
(5, '0) Como el humano, 9 meses', 'false', 2),
(6, '1) Un año', 'false', 2),
(7, '2) Entre año y medio y dos años, según la especie', 'true', 2),
(8, '3) Muchos años', 'false', 2),
(9, '0) El pulpo', 'false', 3),
(10, '1) La medusa', 'false', 3),
(11, '2) La lombriz de tierra', 'true', 3),
(12, '3) El zorro', 'false', 3),
(13, '0) El cachalote', 'false', 4),
(14, '1) La ballena azul', 'true', 4),
(15, '2) La jirafa', 'false', 4),
(16, '3) El elefantte', 'false', 4),
(17, '0) La almeja de Islandia', 'true', 5),
(18, '1) El efemeróptero hembra', 'false', 5),
(19, '2) El albatros', 'false', 5),
(20, '3) La medusa', 'false', 5),
(21, '0) 1879', 'false', 6),
(22, '1) 1898', 'false', 6),
(23, '2) 1886', 'true', 6),
(24, '3) 1895', 'false', 6),
(25, '0) Volvo', 'false', 7),
(26, '1) Mercedes-Benz', 'true', 7),
(27, '2) Citroën', 'false', 7),
(28, '3) Chevrolet', 'false', 7),
(29, '0) CV (caballos de vapor)', 'false', 8),
(30, '1) Nm (Newton/metro)', 'true', 8),
(31, '2) kW (kilovatios)', 'false', 8),
(32, '3) km(kilometros)', 'false', 8),
(33, '0) Rumanía', 'true', 9),
(34, '1) Francia', 'false', 9),
(35, '2) Austria', 'false', 9),
(36, '3) Colombia', 'false', 9),
(37, '0) Cupra', 'false', 10),
(38, '1) Smart', 'true', 10),
(39, '2) Skoda', 'false', 10),
(40, '3) todas las anteriores', 'false', 10),
(41, '0) Rio de janeiro', 'false', 11),
(42, '1) Sao pablo', 'false', 11),
(43, '2) salvador de Bahia', 'false', 11),
(44, '3) Brasilia', 'true', 11),
(45, '0) Canberra', 'true', 12),
(46, '1) Sidney', 'false', 12),
(47, '2) Melbourne', 'false', 12),
(48, '3) Adelaida', 'false', 12),
(49, '0) Andorra', 'false', 13),
(50, '1) Yuba', 'false', 13),
(51, '2) Singapur', 'true', 13),
(52, '3) Kampala', 'false', 13),
(53, '0) Belmopan', 'false', 14),
(54, '1) Riffa', 'false', 14),
(55, '2) Gaborone', 'false', 14),
(56, '3) Manama', 'true', 14),
(57, '0) texas', 'false', 15),
(58, '1) Mexico City', 'true', 15),
(59, '2) Monterrey', 'false', 15),
(60, '3) Oaxaca', 'false', 15),
(61, '0) Traducciones Digitales Análogas', 'false', 16),
(62, '1) Técnicas informáticas con el computador', 'false', 16),
(63, '2) Tecnologias de la Información y Comunicación', 'true', 16),
(64, '3) Tecnologias para la información y la computadoras', 'false', 16),
(65, '0) Entrar al chat', 'false', 17),
(66, '1) Subir archivos la nube y compartirlos', 'true', 17),
(67, '2) Crear páginas web', 'false', 17),
(68, '3) Hacer vídeos', 'false', 17),
(69, '0) Cuaderno', 'false', 18),
(70, '1) Blog de notas', 'false', 18),
(71, '2) Bítácora', 'true', 18),
(72, '3) Memorando', 'false', 18),
(73, '0) Internet Explorer, Mozilla', 'false', 19),
(74, '1) Aplicaciones de la Web 2.0', 'true', 19),
(75, '2) Aplicaciones de Microsoft Office', 'false', 19),
(76, '3) Ninguna de las anteriores', 'false', 19),
(77, '0) LSCD', 'false', 20),
(78, '1) Unicode', 'true', 20),
(79, '2) ASCII', 'false', 20),
(80, '3) LZW', 'false', 20),
(81, '0) Es un concepto similar al de \'array\'', 'false', 21),
(82, '1) Es un tipo particular de variable', 'false', 21),
(83, '2) Es un modelo o plantilla a partir de la cual se pueden crear objetos', 'true', 21),
(84, '3) Es una categoria de datos ordenada secuencial', 'false', 21),
(85, '0) Sus cardinalidad y su tipo', 'false', 22),
(86, '1) Sus atributos y sus métodos', 'true', 22),
(87, '2) La forma en que establece comunicación e inte', 'false', 22),
(88, '3) Su interfaz y los eventos asociados', 'false', 22),
(89, '0) public class Componente extends Producto', 'false', 23),
(90, '1) public class Componente inherit Producto', 'true', 23),
(91, '2) public class Componente implements Producto', 'false', 23),
(92, '3) public class Componente belong to Producto', 'false', 23),
(93, '0) Duplicar una clase', 'false', 24),
(94, '1) Eliminar una clase', 'false', 24),
(95, '2) Crear un objeto a partir de la clase', 'true', 24),
(96, '3) Conectar dos clases entre sí', 'false', 24),
(97, '0) Una función utilizada para intercambiar valor', 'false', 25),
(98, '1) Es el sobrenombre de la versión 1.3 del JDK', 'false', 25),
(99, '2) Un framework específico para Android', 'false', 25),
(100, '3) Una librería para construir interfaces gráfic', 'true', 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_preguntas_categorias_idx` (`categorias_id`);

--
-- Indices de la tabla `premiacion`
--
ALTER TABLE `premiacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_premiacion_categorias1_idx` (`categorias_id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `preguntas_idfor_idx` (`preguntas_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD CONSTRAINT `fk_preguntas_categorias` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `premiacion`
--
ALTER TABLE `premiacion`
  ADD CONSTRAINT `fk_premiacion_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
