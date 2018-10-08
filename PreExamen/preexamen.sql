create database preexamen;
use preexamen;

create table registro(
 id_registro	int,
 nombre			varchar(20),
 apellido		varchar(20),
 PRIMARY KEY (id_registro)
);
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `idrol` int(11),
  `description` varchar(45),
  `id_Registro`   int(11),
  
  PRIMARY KEY (id_registro),
  KEY `fk_Registro_idk` (`idrol`),
  CONSTRAINT `fk_Registro` FOREIGN KEY (`id_registro`) REFERENCES `registro` (`id_registro`)
);