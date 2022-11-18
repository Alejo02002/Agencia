/*              DML                      */

/*  INSERTAMOS TABLAS*/

-- Usuario

INSERT INTO `agencia`.`usuario` ( `cedula`, `nombre`, `apellido`, `direccion`, `usuario`, `fecha_registro`, `ultimo_acceso`) 
VALUES ('verde', 'lucas', 'ramirez', 'calle falsa123', 'CFP08', '2020-11-02', '2020-11-03');
INSERT INTO `agencia`.`usuario` (`cedula`, `nombre`, `apellido`, `direccion`, `usuario`, `fecha_registro`, `ultimo_acceso`) 
VALUES ('azul', 'sofia', 'goico', 'chacabuco 22', 'CFP36', '2020-11-05', '2020-11-06');
INSERT INTO `agencia`.`usuario` (`cedula`, `nombre`, `apellido`, `direccion`, `usuario`, `fecha_registro`, `ultimo_acceso`) 
VALUES ('verde', 'helena', 'blasco', 'cachaca 25', 'CFP80', '2020-11-07', '2020-11-08');

-- taller

INSERT INTO `agencia`.`taller` (`marcas`, `modelo`, `direccion`) 
VALUES ('Honda', 'Civic', 'jose.c.paz');
INSERT INTO `agencia`.`taller` (`marcas`, `modelo`, `direccion`) 
VALUES ('Fort', 'Mustang', 'EE.UU');
INSERT INTO `agencia`.`taller` (`marcas`, `modelo`, `direccion`) 
VALUES ('Audi', 'A4', 'Rusia');


-- vehiculos

INSERT INTO `agencia`.`vehiculos` (`cod_registro`, `placa`, `año`, `color`, `chasis`, `motor`, `fecha_registro`) 
VALUES ( '1', 'AA001', '1997', 'plateado', 'WWW', '1.6', '1998-10-20');
INSERT INTO `agencia`.`vehiculos` ( `cod_registro`, `placa`, `año`, `color`, `chasis`, `motor`, `fecha_registro`) 
VALUES ( '2', 'AA002', '2001', 'rojo', 'WXW', '2.0', '2002-05-10');
INSERT INTO `agencia`.`vehiculos` (`cod_registro`, `placa`, `año`, `color`, `chasis`, `motor`, `fecha_registro`) 
VALUES ('3', 'AB01', '2008', 'azul', 'WZW', '2.2', '2010-07-12');

-- Solicitudes

INSERT INTO `agencia`.`solicitudes` (`id_solicitud`, `cod_usuario`, `unidad`, `fecha_salida`, `destino`, `descripcion`, `estado`) 
VALUES ('1', '1', '1', '2020-11-05', 'calle falsa123', '6 meses de uso', 'usado');
INSERT INTO `agencia`.`solicitudes` (`id_solicitud`, `cod_usuario`, `unidad`, `fecha_salida`, `destino`, `descripcion`, `estado`)
 VALUES ('2', '2', '1', '2020-12-07', 'calle falsa123', '0km', 'nuevo');
INSERT INTO `agencia`.`solicitudes` (`id_solicitud`, `cod_usuario`, `unidad`, `fecha_salida`, `destino`, `descripcion`, `estado`) 
VALUES ('3', '3', '1', '2020-08-02', 'calle falsa123', '0km', 'nuevo');


