use cinemak;
DROP TABLE IF EXISTS `butaca`;
CREATE TABLE `butaca` (
  `idButaca` int NOT NULL AUTO_INCREMENT,
  `FilaButaca` char(2) DEFAULT NULL,
  `ColumnaButaca` int DEFAULT NULL,
  `Estado` varchar(15) DEFAULT NULL,
  `idsala` int DEFAULT NULL,
  PRIMARY KEY (`idButaca`),
  CONSTRAINT `idsala` FOREIGN KEY (`idButaca`) REFERENCES `sala` (`idSala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `cinemak`.`butaca` (`FilaButaca`, `ColumnaButaca`, `Estado`, `idsala`) VALUES ('A', '1', 'libre', '1');
INSERT INTO `cinemak`.`butaca` (`FilaButaca`, `ColumnaButaca`, `Estado`, `idsala`) VALUES ('B', '1', 'libre', '1');
INSERT INTO `cinemak`.`butaca` (`FilaButaca`, `ColumnaButaca`, `Estado`, `idsala`) VALUES ('C', '1', 'ocupada', '1');
INSERT INTO `cinemak`.`butaca` (`FilaButaca`, `ColumnaButaca`, `Estado`, `idsala`) VALUES ('D', '1', 'libre', '1');
INSERT INTO `cinemak`.`butaca` (`FilaButaca`, `ColumnaButaca`, `Estado`, `idsala`) VALUES ('A', '2', 'ocupada', '1');
INSERT INTO `cinemak`.`butaca` (`FilaButaca`, `ColumnaButaca`, `Estado`, `idsala`) VALUES ('A', '1', 'libre', '2');

DROP TABLE IF EXISTS `descuentos`;
CREATE TABLE `descuentos` (
  `idDescuentos` int NOT NULL AUTO_INCREMENT,
  `DescripcionDes` varchar(100) DEFAULT NULL,
  `PorcentajeDes` float DEFAULT NULL,
  PRIMARY KEY (`idDescuentos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
INSERT INTO `cinemak`.`descuentos` (`DescripcionDes`, `PorcentajeDes`) VALUES ('Des Lunes y  Miércoles: 20% ', '0.20');
INSERT INTO `cinemak`.`descuentos` (`DescripcionDes`, `PorcentajeDes`) VALUES ('Des jueves: 15% ', '0.15');
INSERT INTO `cinemak`.`descuentos` (`DescripcionDes`, `PorcentajeDes`) VALUES ('Des Martes y Viernes: 10% ', '0.10');
INSERT INTO `cinemak`.`descuentos` (`DescripcionDes`, `PorcentajeDes`) VALUES ('Des Sábados y Domingos: 10% ', '0.10');


DROP TABLE IF EXISTS `pago`;
CREATE TABLE `pago` (
  `idPago` int NOT NULL AUTO_INCREMENT,
  `cantidad` int DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `importetotal` decimal(10,0) DEFAULT NULL,
  `Descuentos` float,
  `confirmacionpago` boolean DEFAULT NULL,
  `iddescuentos` int DEFAULT NULL,
  PRIMARY KEY (`idPago`),
  KEY `idDescuentos_idx` (`iddescuentos`),
  CONSTRAINT `idDescuentos` FOREIGN KEY (`iddescuentos`) REFERENCES `descuentos` (`idDescuentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cinemak`.`pago` (`cantidad`, `precio`, `importetotal`, `Descuentos`, `confirmacionpago`, `iddescuentos`) VALUES ('1', '800', '800', '0.10', '1', '1');
INSERT INTO `cinemak`.`pago` (`cantidad`, `precio`, `importetotal`, `Descuentos`, `confirmacionpago`, `iddescuentos`) VALUES ('2', '800', '1600', '0.10', '0', '1');

DROP TABLE IF EXISTS `pelicula`;
CREATE TABLE `pelicula` (
  `idPelicula` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `clasificacionEdad` varchar(45) DEFAULT NULL,
  `Genero` varchar(45) DEFAULT NULL,
  `Precio` decimal(10,0) DEFAULT NULL,
  `id-sala` int DEFAULT NULL,
  PRIMARY KEY (`idPelicula`),
  KEY `id_sala_idx` (`id-sala`),
  CONSTRAINT `id_sala` FOREIGN KEY (`id-sala`) REFERENCES `sala` (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `cinemak`.`pelicula` (`titulo`, `descripcion`, `clasificacionEdad`, `Genero`, `Precio`, `id-sala`) VALUES ('La pantera Rosa', 'Pelicula de dibujos animados...', '+5', 'fantasia', '1000', '1');
INSERT INTO `cinemak`.`pelicula` (`titulo`, `descripcion`, `clasificacionEdad`, `Genero`, `Precio`, `id-sala`) VALUES ('La Roca', 'Pelicula de ...', '+15', 'ciencia ficción', '800', '2');
INSERT INTO `cinemak`.`pelicula` (`titulo`, `descripcion`, `clasificacionEdad`, `Genero`, `Precio`, `id-sala`) VALUES ('Superman', 'Pelicula', '+10', 'ciencia Ficción', '1000', '3');


DROP TABLE IF EXISTS `reservas`;
CREATE TABLE `reservas` (
  `idreservas` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `Hora` varchar(45) DEFAULT NULL,
  `NombreSala` varchar(45) DEFAULT NULL,
  `Butaca` varchar(45) DEFAULT NULL,
  `Pelicula` varchar(45) DEFAULT NULL,
  `confirmacionPago` tinyint DEFAULT NULL,
  `idpago` int DEFAULT NULL,
  `id_Sala` int DEFAULT NULL,
  `idbutaca` int DEFAULT NULL,
  PRIMARY KEY (`idreservas`),
  KEY `id_sala_idx` (`id_Sala`),
  KEY `idButaca_idx` (`idbutaca`),
  CONSTRAINT `idButaca` FOREIGN KEY (`idbutaca`) REFERENCES `butaca` (`idButaca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `cinemak`.`reservas` (`fecha`, `Hora`, `NombreSala`, `Butaca`, `Pelicula`, `confirmacionPago`, `idpago`, `id_Sala`, `idbutaca`) VALUES ('17/08/22', '17:30', 'A', 'A1', 'La pantera Rosa', '1', '1', '1', '1');

DROP TABLE IF EXISTS `sala`;
CREATE TABLE `sala` (
  `idSala` int NOT NULL AUTO_INCREMENT,
  `NombreSala` varchar(45) DEFAULT NULL,
  `Capacidad` int DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `tipoSala` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idSala`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `cinemak`.`sala` (`NombreSala`, `Capacidad`, `estado`, `tipoSala`) VALUES ('D', '100', 'OCUPADA', '3D');
INSERT INTO `cinemak`.`sala` (`NombreSala`, `Capacidad`, `estado`, `tipoSala`) VALUES ('A', '100', 'LIBRE', '2D');


DROP TABLE IF EXISTS `tipo_usuario`;
CREATE TABLE `tipo_usuario` (
  `idtipo_usuario` int NOT NULL AUTO_INCREMENT,
  `descripción` varchar(45) DEFAULT NULL,
  `idusuario` int DEFAULT NULL,
  PRIMARY KEY (`idtipo_usuario`),
  KEY `idusuario_idx` (`idusuario`),
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `cinemak`.`tipo_usuario` (`idtipo_usuario`, `descripción`) VALUES ('1', 'Administrador');
INSERT INTO `cinemak`.`tipo_usuario` (`idtipo_usuario`, `descripción`) VALUES ('2', 'Cliente');


DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `Apellidoynomb` varchar(60) DEFAULT NULL,
  `DNI` int DEFAULT NULL,
  `NombreUsuario` varchar(45) not NULL,
  `contrasenia` varchar(8) not NULL,
  `email` varchar(80) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `idtipo_usuario` int  DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `cinemak`.`usuario` ( `Apellidoynomb`,  `DNI`, `NombreUsuario`,  `contrasenia`,  `email`, `telefono`, `idtipo_usuario` ) VALUES ('Fernandez Ana in', '15445444', 'AnaFer', '1234', 'ana@gmal.com', '144444154', '2');
INSERT INTO `cinemak`.`usuario` ( `Apellidoynomb`,  `DNI`, `NombreUsuario`,  `contrasenia`,  `email`, `telefono`, `idtipo_usuario` ) VALUES ('Salva Cesar', '1211211', 'CesarSal', '45565', 'salva@gmail.com', '545454', '1');
INSERT INTO `cinemak`.`usuario` ( `Apellidoynomb`,  `DNI`, `NombreUsuario`,  `contrasenia`,  `email`, `telefono`, `idtipo_usuario` ) VALUES ('Sarapura Camila', '	545464', 'CamilaSarapura', '1234', 'camisa@gmal.com', '144444154', '2');
INSERT INTO `cinemak`.`usuario` ( `Apellidoynomb`,  `DNI`, `NombreUsuario`,  `contrasenia`,  `email`, `telefono`, `idtipo_usuario` ) VALUES ('Almiron Sebastián', '	545464', 'SebasAlmiron', '1234', 'sebasAl@gmal.com', '1557894', '2');

