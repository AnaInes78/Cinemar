create database cinemar;
use cinemar;

create table pelicula (idPelicula int primary key ,
Tipo varchar (4),
nombre varchar (30) ,
descripcion varchar(50),
clasificacionEddad varchar(15),
Genero varchar (30),
Precio float,
duracion_pelicula time,
alter table Pelicula ADD FOREIGN KEY (id_sala) 
REFERENCES Sala(id_sala));
INSERT INTO `cinemar`.`Pelicula` (`idPelicula`, `Tipo`,`nombre`, `descripción`, `ClasificacionEdad`, `Genero`, `Precio`, `Duracion_Pelicula` ) VALUES ('1', '2D', 'La casa de Lola', 'película de terror en la que Lola, protagonizada por Hellen Keller, pasa por un momento....','Adultos +18 años', 'Terror', '800', '1:50');
INSERT INTO `cinemar`.`Pelicula` (`idPelicula`, `Tipo`,`nombre`, `descripción`, `ClasificacionEdad`, `Genero`, `Precio`, `Duracion_Pelicula` ) VALUES ('3', '3D','La Pantera Rosa', 'Película infantil de dibujos animados', 'Todo público A', 'Infantil- Dibujos', '1000','2:00');
INSERT INTO `cinemar`.`Pelicula` (`idPelicula`, `Tipo`,`nombre`, `descripción`, `ClasificacionEdad`, `Genero`, `Precio`, `Duracion_Pelicula` ) VALUES ('4', '2D', 'La Extraña de pelo largo', 'Película de Drama, en la que una jóven....', '+15 Años', 'Drama', '800',  '1:40');



create table tipo_de_Usuario(
idTipo int primary key,
TipoUsuario varchar(10));
INSERT INTO `cinemar`.`tipo_usuario` (`id_tipo_usuario`, `nombre_tipo`, `rol`) VALUES ('1', 'Cliente', 'cliente');
INSERT INTO `cinemar`.`tipo_usuario` (`id_tipo_usuario`, `nombre_tipo`, `rol`) VALUES ('2', 'Administrador', 'Admin');

create table Usuario(idUsuario int primary key,
Nombre varchar(15),
Apellido varchar(15),
dni int,
email varchar(20),
Telefono int,
Nombreusuario varchar(20),
contrasenia varchar(8),
id_tipo int, foreign key (id_tipo) 
references tipo_de_usuario (id_tipo));
INSERT INTO `cinemar`.`usuario` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `email_usuario`, `telefono_usuario`, `contrasenia_usuario`, `id_tipo_usuario`) VALUES ('1', 'Ana ', 'Fernandez ', 'anaines@gmail.com', '4515515', 'hasd', '2');
INSERT INTO `cinemar`.`usuario` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `email_usuario`, `telefono_usuario`, `contrasenia_usuario`, `id_tipo_usuario`) VALUES ('2', 'Agustín', 'Guzman', 'agusGuz@gmail.com', '4521999', 'gus17', '2');
INSERT INTO `cinemar`.`usuario` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `email_usuario`, `telefono_usuario`, `contrasenia_usuario`, `id_tipo_usuario`) VALUES ('3', 'Pablo', 'Perez ', 'Paperez@gmail.com', '45646465', 'ppeper15', '2');
INSERT INTO `cinemar`.`usuario` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `email_usuario`, `telefono_usuario`, `contrasenia_usuario`, `id_tipo_usuario`) VALUES ('4', 'Ana', 'Gomez ', 'anaGomez@gmail.com', '56454644', 'Ana4578', '1');


create table Descuentos( idDescuentos int primary key,
Descripcion varchar (20),
PorcentajeDes float );

INSERT INTO `cinemar`.`descuentos` (`idDescuentos`, `descripcion`, `PorcentajesDes`) VALUES ('1', 'Días Lunes y Miercoles', '0.20');
INSERT INTO `cinemar`.`descuentos` (`idDescuentos`, `descripcion`, `PorcentajesDes`) VALUES ('2', 'Días Jueves', '0.15');
INSERT INTO `cinemar`.`descuentos` (`idDescuentos`, `descripcion`, `PorcentajesDes`) VALUES ('3', 'Días Martes, viernes, sábado y domingos', '0.10');


Create table Reserva (idReservas int primary key,
Fecha date, 
Hora time,
Sala Varchar (4),
NumeroButaca varchar(4),
Pelicula varchar (30),
ConfirmacionPago boolean,
idPago int,
total double, 

idDescuentos int,
idPelicula int,
idUsuario int, 
foreign key (idDescuentos) references Descuentos(idDescuentos),
foreign key (idUsuario) references Usuario(idUsuario),
foreign key (idPelicula) references Pelicula (idPelicula)
);

create table Sala(id_sala int primary key,
nombre_sala varchar (10),
capacidad_sala int,
idPelicula int,
descripcion varchar(50),
horario time,
dia varchar(10),
foreign key (id_pelicula)references pelicula (id_pelicula));
INSERT INTO `cinemar`.`sala` (`id_sala`, `nombre_sala`,`capacidad_sala`, `idPelicula`, `descripación`, `horario`, `dia` ) VALUES ('1', 'A', '50','1','La casa de Lola', '17:30', '17/08/2022');
INSERT INTO `cinemar`.`sala` (`id_sala`, `nombre_sala`, `capacidad_sala`, `idPelicula`, `descripación`, `horario`, `dia`) VALUES ('4', 'D', '100', '2', 'La Roca', '18:00', '15/06/22');
INSERT INTO `cinemar`.`sala` (`id_sala`, `nombre_sala`, `capacidad_sala`, `idPelicula`, `descripación`, `horario`, `dia`) VALUES ('2', 'B', '100', '3', 'La Pantera Rosa', '18:00', '15/06/22');
INSERT INTO `cinemar`.`sala` (`id_sala`, `nombre_sala`, `capacidad_sala`, `idPelicula`, `descripación`, `horario`, `dia`) VALUES ('3', 'C', '100', '4', 'La Extraña de pelo largo', '18:00', '15/08/22');
create table butaca(id_butaca int primary key,
fila_butaca char , columna int,
id_sala int , foreign key (id_sala) references sala(id_sala));

create table Pago (idPago int primary Key, 
precio float, 
cantidad int,
importeTotal float,
Descuentos float, 
ConfirmarPago boolean, 
idUsuario int, foreign Key (idUsuario) references Usuario(IdUsuario));

INSERT INTO `cinemar`.`Pago` (`idPago`, `precio`, `cantidad`, `importeTotal`, `Descuentos`, `ConfirmacionPago`,) VALUES ('1', '800', '2', '1600', '0.20', 'True');
INSERT INTO `cinemar`.`Pago` (`idPago`, `precio`, `cantidad`, `importeTotal`, `Descuentos`, `ConfirmacionPago`,) VALUES ('2', '800', '2', '1600', '0.10', 'True');


