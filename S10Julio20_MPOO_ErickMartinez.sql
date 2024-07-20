-- Crear base de datos
create database dbregistros;

-- Usar base de datos
use dbregistros;

-- Crear tabla Ciudades
create table Ciudades(
Id int primary key identity (1,1),
Nombre nvarchar(60)not null,
Estado bit default 1
);

-- Crear tabla Personas
create table Personas(
Id int primary key identity (1,1),
Nombres nvarchar(40) not null,
Apellidos nvarchar(40) not null,
ciudad_id int foreign key references Ciudades(id) not null,
Activo bit default 1
);

-- Insertar ciudades
insert into ciudades (nombre) values 
('Managua'),
('Masaya'),
('Granada'),
('León'),
('Chinandega');

insert into Personas (nombres, apellidos, ciudad_id) values 
('Belen', 'Acuña', 1),
('Erick', 'Martinez', 1),
('Sergio', 'Rivas', 2),
('José', 'Durán', 2);

select id as 'Codigo', nombre as 'Ciudad', Estado as 'Est' from Ciudades;

select * from personas;

select * from Ciudades;

select personas.id as Codigo, personas.nombres + ' ' + personas.apellidos as 'Nombre Completo', 
ciudades.nombre as Ciudad from personas
inner join Ciudades on personas.ciudad_id = ciudades.Id

/*Variables*/
declare @nombre nvarchar (40)
set @nombre = '%r%'

select * from personas where nombres like @nombre

-- crear repositorio SesiónJulio20