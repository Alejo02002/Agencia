/*              DDL                      */

drop database if exists Agencia ;
create database agencia;
use agencia;

/*     CREACION DE TABLAS            */

create table taller(
id_auto int auto_increment primary key,
marcas varchar(10),
modelo varchar(10),
direccion varchar(25) 
);

create table vehiculos(
id_vehiculo int auto_increment primary key,
cod_registro int,
placa varchar(15),
año char(5),
color varchar(10),
chasis varchar(10),
motor varchar (10),
fecha_registro date
);

create table solicitudes(
id_solicitud int primary key,
cod_usuario int,
unidad int,
fecha_salida date,
destino varchar(25),
descripcion varchar(255),
estado varchar(5)
);

create table usuario(
id_usuario int auto_increment primary key,
cedula varchar (25),
nombre varchar (25),
apellido varchar (25),
direccion varchar (25),
usuario varchar (25),
fecha_registro date,
ultimo_acceso date
);

/* CONEXION DE TABLAS */

alter table solicitudes
add foreign key (cod_usuario)
references usuario(id_usuario);

alter table vehiculos
add foreign key (cod_registro)
references taller (id_auto);

alter table solicitudes
add foreign key (cod_usuario)
references taller (id_auto);






