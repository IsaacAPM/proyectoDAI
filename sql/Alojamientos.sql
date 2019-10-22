use Alojamientos

create table Amenidad(
   cAmenidad int primary key,
   nombre varchar(100))
   
create table Residencia(
   cResidencia int primary key,
   tipo varchar(100))
   
 create table Usuario(
    cUsuario int primary key,
    nombre varchar(100),
    correo varchar(100),
    pwd varchar(100))

create table Arrendador(
   cUsuario int primary key references Usuario,
   calif int references Usuario)

create table Arrendatario(
   cUsuario int primary key references Usuario)

create table Administrador(
  cUsuario int primary key references Usuario)
 
create table Estancia(
   cEstancia int primary key,
   habitantes int,
   descripcion varchar(2000),
   disponible varchar(100),
   numInt int,
   precio int,
   nCuartos int,
   nBaños int,
   cResidencia int references Residencia,
   cUsuario int references Arrendador)
   
create table AmenidadEstancia(
    cAmenidad int references Amenidad,
    cEstancia int references Estancia,
    primary key(cAmenidad,cEstancia))
   
create table Direccion(
   cDir int primary key,
   CP int,
   num int,
   colonia varchar(100),
   cResidencia int references Residencia)

create table Universidad(
   cUni int primary key,
   nombre varchar(100),
   CP int)

create table Reseña(
   cReseña int primary key,
   calificacion int,
   contenido varchar(100),
   recomendado int,
   fecha datetime,
   likes int,
   arrenCal int)

create table DireccionUniversidad(
    tiempo varchar(100),
    distancia varchar(100),
    cDir int references Direccion,
    cUni int references Universidad,
    primary key(cDir,cUni))

create table EstanciaReseñaArrendatario(
    cEstancia int references Estancia,
    cReseña int references Reseña,
    cUsuario int references Arrendatario,
    primary key(cReseña,cEstancia))
