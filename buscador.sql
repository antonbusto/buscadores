-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2022 a las 14:57:55
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `buscador`
--
CREATE DATABASE IF NOT EXISTS `buscador` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `buscador`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lenguajes`
--

CREATE TABLE `lenguajes` (
  `id` int(11) NOT NULL,
  `lenguaje` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `lenguajes`
--

INSERT INTO `lenguajes` (`id`, `lenguaje`, `descripcion`) VALUES
(1, 'HTML 5', 'Aprende como definir una estructura básica y un código para crear sitios web.'),
(2, 'CSS 3', 'Con CSS 3 se aprende a definir y crear la presentación y el diseño de un documento ya estructurado y escrito en un lenguaje de marcado HTML. '),
(3, 'CSS Flexbox', 'Flexbox es un módulo de diseño de CSS 3 que se creó para mejorar la forma en la que se hace diseño responsive, evitando así el uso de float, escribiendo menos código y facilitando el posicionamiento de elementos, incluso no teniendo noción del tamaño de éstos. Básicamente la idea de Flexbox es poder alterar el ancho, alto y posicionamiento de elementos de la mejor manera con el espacio del que disponemos.'),
(4, 'JavaScript ES6', 'JavaScript es un robusto lenguaje de programación que se puede aplicar a un documento HTML y usarse para crear interactividad dinámica en los sitios web. Conviene aprenderlo después de saber HTML y CSS'),
(5, 'Bootstrap 5', 'Bootstrap es una biblioteca multiplataforma o conjunto de herramientas de código abierto para diseño de sitios y aplicaciones web. Contiene plantillas de diseño con tipografía, formularios, botones, cuadros, menús de navegación y otros elementos de diseño basado en HTML y CSS, así como extensiones de JavaScript adicionales'),
(6, 'PHP 8', 'PHP es el lenguaje de programación para el desarrollo del backend más popular. Con PHP puedes desarrollar sitios y aplicaciones de todo tipo. PHP es el motor además de los CMS más populares, como WordPress, Joomla, Drupal o Magento, entre muchos otros.'),
(7, 'MySQL 8', 'MySQL es un sistema de gestión de bases de datos. Los datos estructurados en tablas constituyen la base de datos relacionales. Para poder operar sobre esta base de datos se necesita un Sistema de Gestión de Base de Datos.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `lenguajes`
--
ALTER TABLE `lenguajes`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `lenguajes` ADD FULLTEXT KEY `Buscar` (`lenguaje`,`descripcion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `lenguajes`
--
ALTER TABLE `lenguajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
