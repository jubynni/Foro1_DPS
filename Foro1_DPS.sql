-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-04-2023 a las 03:31:45
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Foro1_DPS`
--

CREATE DATABASE `Foro1_DPS`;
USE `Foro1_DPS`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alumno` int NOT NULL,
  `nombre_alumno` varchar(30) DEFAULT NULL,
  `apellido_alumno` varchar(30) DEFAULT NULL,
  `carnet` varchar(10) DEFAULT NULL,
  `id_beca` int DEFAULT NULL,
  `id_carrera` int NOT NULL,
  PRIMARY KEY (`id_alumno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Insert de datos en la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `nombre_alumno`, `apellido_alumno`, `carnet`, `id_beca`, `id_carrera`) VALUES
(1, 'Jairo', 'Soto', 'SG080419', 1, 1),
(2, 'Fernanda', 'Martinez', 'MP202020', 2, 2);


-- --------------------------------------------------------

--
-- Tabla `Materias`
--

DROP TABLE IF EXISTS `materias`;
CREATE TABLE IF NOT EXISTS `materias` (
  `id_materia` int NOT NULL,
  `cod_materia` varchar(8) NOT NULL,
  `nombre_materia` varchar(30) NOT NULL,
  `id_docente` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Insert en tabla `materias`
--

INSERT INTO `materias` (`id_materia`, `cod_materia`, `nombre_materia`, `id_docente`) VALUES
(0, '', '', 0),
(1, 'DPS', 'Diseno y programacion multiplaforma', 1),
(2, 'AVM', 'Algebra vectorial y matrices', 2);


-- --------------------------------------------------------

--
-- Tabla `beca`
--

DROP TABLE IF EXISTS `beca`;
CREATE TABLE IF NOT EXISTS `beca` (
  `id_beca` int NOT NULL,
  `nombre_beca` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Insert para la tabla `beca`
--

INSERT INTO `beca` (`id_beca`, `nombre_beca`) VALUES
(2, 'BECA Media'),
(1, 'BECA Completa');

-- --------------------------------------------------------

--
-- tabla `carrera`
--

DROP TABLE IF EXISTS `carrera`;
CREATE TABLE IF NOT EXISTS `carrera` (
  `id_carrera` int NOT NULL,
  `nombre_carrera` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Insert para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `nombre_carrera`) VALUES
(1, 'Ing. en CC de la computacion'),
(2, 'Ing. en mecatronica');

-- --------------------------------------------------------

--
-- tabla `docente`
--

DROP TABLE IF EXISTS `docente`;
CREATE TABLE IF NOT EXISTS `docente` (
  `id_docente` int NOT NULL,
  `nombre_docente` varchar(30) NOT NULL,
  `apellido_docente` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Insert para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `nombre_prof`, `apellido_prof`) VALUES
(1, 'Cristiano', 'Ronaldo'),
(2, 'Karim', 'Benzema');

-- --------------------------------------------------------

--
-- Tabla `notas`
--

DROP TABLE IF EXISTS `notas`;
CREATE TABLE IF NOT EXISTS `notas` (
  `id_alumno` int NOT NULL,
  `id_materia` int NOT NULL,
  `nota_final` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Insert para la tabla `notas`
--

INSERT INTO `notas` (`id_alumno`, `id_materia`, `nota_final`) VALUES
(1, 1, 9.5),
(2, 2, 8);
COMMIT;
