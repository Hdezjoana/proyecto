-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-04-2024 a las 19:06:30
-- Versión del servidor: 8.3.0
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `erp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `idcolor` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instrumentos`
--

CREATE TABLE `instrumentos` (
  `idinstrumentos` varchar(45) NOT NULL,
  `intrumento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `idmaterial` varchar(45) NOT NULL,
  `material` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `idmodelos` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numventas`
--

CREATE TABLE `numventas` (
  `idbetalle` varchar(45) NOT NULL,
  `idventa` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertacajas`
--

CREATE TABLE `ofertacajas` (
  `idcaja` varchar(45) NOT NULL,
  `tipocaja` varchar(45) NOT NULL,
  `precio` decimal(45,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertasindividuales`
--

CREATE TABLE `ofertasindividuales` (
  `idind` varchar(45) NOT NULL,
  `tipooferta` varchar(45) NOT NULL,
  `precio` decimal(45,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaspaquetes`
--

CREATE TABLE `ofertaspaquetes` (
  `idpaquete` varchar(45) NOT NULL,
  `paquete` varchar(45) NOT NULL,
  `precio` decimal(45,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ofertaventas`
--

CREATE TABLE `ofertaventas` (
  `idventaoferta` varchar(45) NOT NULL,
  `idpaquete` varchar(45) DEFAULT NULL,
  `idind` varchar(45) DEFAULT NULL,
  `idcaja` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idLogin` int NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idLogin`, `correo`, `contraseña`, `nombre`) VALUES
(1, 'jaciel', '2020452014@teschi.edu.mx', '1'),
(9, '2020452014@teschi.edu.mx', '827ccb0eea8a706c4c34a16891f84e7b', 'joana'),
(10, 'mary@hmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'mary'),
(11, 'kvkvu@buof.com', '827ccb0eea8a706c4c34a16891f84e7b', ' cgj'),
(12, 'monica_12@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'monica'),
(13, 'marco.hugo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'jaciel'),
(14, 'pedrito@gmail.com', '12345', 'pedrito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `idventa` int NOT NULL,
  `idinstrumentos` varchar(45) NOT NULL,
  `idtipo` varchar(45) NOT NULL,
  `idmaterial` varchar(45) NOT NULL,
  `idmodelos` varchar(45) NOT NULL,
  `idcolor` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`idcolor`);

--
-- Indices de la tabla `instrumentos`
--
ALTER TABLE `instrumentos`
  ADD PRIMARY KEY (`idinstrumentos`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`idmaterial`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`idmodelos`);

--
-- Indices de la tabla `numventas`
--
ALTER TABLE `numventas`
  ADD PRIMARY KEY (`idbetalle`),
  ADD KEY `idventa_idx` (`idventa`);

--
-- Indices de la tabla `ofertacajas`
--
ALTER TABLE `ofertacajas`
  ADD PRIMARY KEY (`idcaja`);

--
-- Indices de la tabla `ofertasindividuales`
--
ALTER TABLE `ofertasindividuales`
  ADD PRIMARY KEY (`idind`);

--
-- Indices de la tabla `ofertaspaquetes`
--
ALTER TABLE `ofertaspaquetes`
  ADD PRIMARY KEY (`idpaquete`);

--
-- Indices de la tabla `ofertaventas`
--
ALTER TABLE `ofertaventas`
  ADD PRIMARY KEY (`idventaoferta`),
  ADD KEY `idx_ofertaventas_idpaquete` (`idpaquete`),
  ADD KEY `idind_idx` (`idind`),
  ADD KEY `idcaja_idx` (`idcaja`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idLogin`),
  ADD UNIQUE KEY `correo_UNIQUE` (`correo`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `idinstrumentos_idx` (`idinstrumentos`),
  ADD KEY `idtipo_idx` (`idtipo`),
  ADD KEY `idmodelos_idx` (`idmodelos`),
  ADD KEY `idmaterial_idx` (`idmaterial`),
  ADD KEY `idcolor_idx` (`idcolor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idLogin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `numventas`
--
ALTER TABLE `numventas`
  ADD CONSTRAINT `idventa` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`idventa`);

--
-- Filtros para la tabla `ofertaventas`
--
ALTER TABLE `ofertaventas`
  ADD CONSTRAINT `idcaja` FOREIGN KEY (`idcaja`) REFERENCES `ofertacajas` (`idcaja`),
  ADD CONSTRAINT `idind` FOREIGN KEY (`idind`) REFERENCES `ofertasindividuales` (`idind`),
  ADD CONSTRAINT `idpaquete` FOREIGN KEY (`idpaquete`) REFERENCES `ofertaspaquetes` (`idpaquete`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `idcolor` FOREIGN KEY (`idcolor`) REFERENCES `color` (`idcolor`),
  ADD CONSTRAINT `idinstrumentos` FOREIGN KEY (`idinstrumentos`) REFERENCES `instrumentos` (`idinstrumentos`),
  ADD CONSTRAINT `idmaterial` FOREIGN KEY (`idmaterial`) REFERENCES `materiales` (`idmaterial`),
  ADD CONSTRAINT `idmodelos` FOREIGN KEY (`idmodelos`) REFERENCES `modelos` (`idmodelos`),
  ADD CONSTRAINT `idtipo` FOREIGN KEY (`idtipo`) REFERENCES `tipo` (`idtipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
