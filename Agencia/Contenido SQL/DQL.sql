/*                 DQL                    */
         /*   Consultas Simples    */
         
-- traeme los vehiculos a partir del año 2000
select * from vehiculos where año >= 2000;

-- traeme los vehiculos entre el año 1997 y 2002
select * from vehiculos where año between 1997 and 2002; 

         /*   SubConsultas    */
         
-- traeme la marca y el modelo del primer auto en registrarse
select taller.marcas,taller.modelo, min(vehiculos.fecha_registro)       
from vehiculos join taller on id_auto
= vehiculos.id_vehiculo;

-- traeme el color y la placa de los autos
select vehiculos.color, vehiculos.placa, taller.marcas, taller.modelo 
from  vehiculos join taller on id_auto  = vehiculos.id_vehiculo;

-- traeme el auto, marcas modelo, placa y color de los autos
select id_auto as n°auto,marcas, modelo,placa,color
from taller,vehiculos
where cod_registro = id_auto;

-- traeme el nombre del usuario la direccion y en que estado se llevo el vehiculo
select usuario.nombre , usuario.direccion, solicitudes.estado, solicitudes.descripcion
from usuario 
join solicitudes 
on id_solicitud = usuario.id_usuario;

select usuario.nombre, usuario.direccion, solicitudes.estado, solicitudes.descripcion,taller.marcas,taller.modelo,vehiculos.id_vehiculo as n°auto,vehiculos.color
from usuario 
join solicitudes  
on  usuario.id_usuario = id_solicitud
join taller
on taller.id_auto = usuario.id_usuario
join vehiculos
on vehiculos.id_vehiculo = usuario.id_usuario
order by n°auto desc;






