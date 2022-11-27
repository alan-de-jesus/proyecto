SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `semestre` (
  `id_semestre` int(11) NOT NULL,
  `NombreS` varchar(255) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `NombreG` varchar(255) DEFAULT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `plantel` (
  `id_plantel` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `codigo` varchar(255) DEFAULT NULL,
  `id_estado` varchar(255) DEFAULT NULL,
  `direccion` text  DEFAULT NULL,
  `telefono` int(255) DEFAULT NULL,

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `ApellidoP` varchar(255) DEFAULT NULL,
  `ApellidiM` varchar(255) DEFAULT NULL,
  `Fech_nac` date  DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `id_plantel` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `id_semestre` int(11) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `Email` varchar(155) DEFAULT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `estado` varchar(55) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `online` int(11)DEFAULT NULL,

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `alumnos` (
  `id_alumnos` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `ApellidoP` varchar(255) DEFAULT NULL,
  `ApellidiM` varchar(255) DEFAULT NULL,
  `Fech_nac` date  DEFAULT NULL,
  `id_genero` int(11) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `id_plantel` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `id_semestre` int(11) DEFAULT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `Email` varchar(155) DEFAULT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `estado` varchar(55) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `codigo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-------------------------------------------------

ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

ALTER TABLE `plantel`
  ADD PRIMARY KEY (`id_plantel`);

ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`);

ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);


ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);


ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`);

ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id_semestre`);

ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumnos`);


----------------------------------------------------------

ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `alumnos`
  MODIFY `id_alumnos` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `semestre`
  MODIFY `id_semestre` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `grupo`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `carrera`
  MODIFY `id_carrera` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE `plantel`
  MODIFY `id_plantel` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
