drop database if exists videojuegos;
create database videojuegos;

use videojuegos;

create table empresas(
	id int primary key auto_increment,
	nombre varchar(15),
	direccion varchar(30),
    email varchar(40),
    telefono int
);

create table juegos(
	id int primary key auto_increment,
	nombre varchar(20),
	lanzamiento date,
	id_empresa int,
	foreign key (id_empresa) references empresas(id)
);

create table plataformas(
	id int primary key auto_increment,
    nombre varchar(20) /* Estos tendrían que ser los registros realmente */
);

create table generos(
	id int primary key auto_increment,
    nombre varchar(20)
);

create table genero_juegos(
	id_juego int,
    id_genero int,
    foreign key(id_juego) references juegos(id),
    foreign key(id_genero) references generos(id)
);

create table consolas(
	id int primary key auto_increment,
	nombre varchar(15),
    lanzamiento date,
    id_plataforma int,
    foreign key(id_plataforma) references plataformas(id)
);

create table consola_juegos(
	id_juego int,
    id_consola int,
    foreign key(id_juego) references juegos(id),
    foreign key(id_consola) references consolas(id)
);


create table clientes (
	id int auto_increment primary key,
    nombre varchar(20),
    telefono int
);

create table consola_cliente (
	id_cliente int,
    id_consola int,
    foreign key(id_cliente) references clientes(id),
    foreign key(id_consola) references consolas(id)
);

create table juegos_clientes (
	id_cliente int,
    id_juego int,
    foreign key(id_cliente) references clientes(id),
    foreign key(id_juego) references juegos(id)
);


/*
uwu arigato
*/



insert into empresas values 
		(default, 'Microsoft', 'Los Angeles City', 'microsoft_support@microsoft.com', 51425474584),
		(default, 'Sony', 'Miamo City', 'sony_support@sony.com', 12225447184),
        (default, 'Nintendo', 'Japón City', 'nintendo@nintendo.com', 123456789),
        (default, 'Sega', 'Nueva York City', 'sega@sega.com', 70804555800),
        (default, 'Rockstar', 'Canarias City', 'rockstar@rockstar.com', 124512451236),
		(default, 'StudioMDHR', 'Canadá City', 'studiomdhr@studiomdhr.com', 02514587986),
        (default, 'Steel Wool Studios', 'Washinton City', 'Steel@Steel.com', 7895124605),
        (default, 'EpicGames', 'Carolina del Norte City', 'epicgames@epicgames.com', 1589545598),
		(default, 'Behaviour', 'London City', 'Behaviour@Behaviour.com', 33365258495),
		(default, 'Mob entertainment', 'Texas City', 'Mob@entertainment.com', 0021549856554),
		(default, 'Euphoric Brothers', 'Montana City', 'Euphoric@Brothers.com', 114254985626),
		(default, 'Supercell', 'Manchester City', 'Supercell@Supercell.com', 77485965263),
		(default, 'Naughty Dog', 'Dublin City', 'Naughty@Dog.com', 668542514529),
		(default, 'Santa Monica Studio', 'Oklahoma City', 'Santa@Monica.com', 55547845825),
        (default, 'AnnaPurna Interactive', 'Scotland City', 'AnnaPurna@AnnaPurna.com', 153665845870);

insert into juegos values
		(default, 'God of War I', '2003/03/20', 2),
		(default, 'GTA V', '2013/05/18', 5),
        (default, 'Sonic CD', '1994/10/10', 4),
        (default, 'Super Mario Bros', '2005/06/04', 3),
        (default, 'Minecraf', '2014/02/09', 1),
        (default, 'Cuphead', '2017/09/29', 6),
        (default, 'Five night at Freddy´s security breach', '2021/12/16', 7),
        (default, 'Fortnite', '2017/07/21', 8),
        (default, 'Dead by daylight', '2016/06/14', 9),
        (default, 'Poppy Playtime 3', '2024/01/30', 10),
        (default, 'Garten of banban 7', '2024/05/10', 11),
        (default, 'Brawul Stars', '2017/06/15', 12),
        (default, 'The last of us', '2013/06/14', 13),
        (default, 'God of War Ragnarok', '2022/11/09', 14),
        (default, 'Stray', '2022/07/19', 15);

insert into plataformas values
		(default, 'Nintendo'),
        (default, 'PlayStation'),
		(default, 'Xbox'),
        (default, 'PC'),
        (default, 'Móvil');
        
        
insert into generos values 
		(default, 'RPG'),
        (default, 'Terror'),
        (default, 'FPS'),
        (default, 'Aventura'),
        (default, 'Plataforma'),
        (default, 'Acción'),
        (default, 'Souls'),
        (default, 'Simulación'),
        (default, 'Puzzle'),
        (default, 'Arcade'),
        (default, 'Shooter');

insert into genero_juegos values 
		(5, 2),
        (1, 4),
        (2, 6),
        (3, 5),
        (5, 5),
        (6, 5),
        (7, 2),
        (8, 11),
        (9, 2),
        (10, 2),
        (11, 9),
        (12, 6),
        (13, 4),
        (14, 6),
        (15, 4);

insert into consolas values 
		(default, 'PlayStation 5', '2020/11/12', 2),
        (default, 'Nintendo Switch', '2017/09/15', 1),
        (default, 'Xbox Series X/S', '2020/12/11', 3),
		(default, 'PlayStation 4', '2013/10/03', 2),
		(default, 'Xbox one', '2016/07/25', 3),
		(default, 'Wii U', '2012/11/12', 2),
        (default, 'Megadrive', '1989/06/14', 4),
        (default, 'GameBoy advance', '2001/03/21', 1),
        (default, 'PlayStation 2', '2000/03/04', 2),
        (default, 'Xbox one', '2013/05/21', 3),
        (default, 'Wii', '2006/11/19', 1),
        (default, 'PSP', '2004/10/17', 2),
        (default, 'Xbox 360', '2007/03/20', 3);
        
insert into consola_juegos values
		(1, 2),
        (2, 4),
        (4, 2),
        (5, 5),
        (3, 7);
        
insert into clientes values
		(default, 'Juan', 123456789),
		(default, 'Maria', 987654321),
		(default, 'Pedro', 555555555),
		(default, 'Ana', 666666666),
		(default, 'Luis', 777777777),
		(default, 'Laura', 888888888),
        (default, 'Sergio', 002545654),
        (default, 'Pablo', 12548877),
        (default, 'Harry', 00251479),
        (default, 'Megan', 99841064),
        (default, 'Marcos', 71520369),
        (default, 'José', 657481258),
        (default, 'Marta', 414587825),
        (default, 'Iker', 81897563),
        (default, 'Rachel', 1205789);

describe clientes;

insert into consola_cliente values
		(1, 1), 
		(2, 2),  
		(3, 3), 
		(4, 1), 
		(5, 2),  
		(6, 3),
        (7, 7),  
        (8, 10),  
        (9, 5),  
        (10, 4),  
        (11, 6),  
        (12, 11),  
        (13, 13),  
        (14, 12),  
        (15, 8);

insert into juegos_clientes values
		(1, 1),  
		(1, 2), 
		(2, 2),  
		(3, 3), 
		(4, 1),  
		(5, 3), 
		(6, 2),
        (7, 8), 
        (8, 9), 
        (9, 12), 
        (10, 15), 
        (11, 13), 
        (12, 14), 
        (13, 6), 
        (14, 7), 
        (15, 11);

        
        use videojuegos;
        
        
        /*1. Mostrar toda la información de las empresas por orden alfabético.*/
        
        select * from empresas order by nombre asc;
        
        
        /*2. Mostrar el nombre de la empresa y la cantidad de juegos desarrollados de un genero X*/
        
        select empresas.nombre as nombre_empresa, count(juegos.id) as cantidad_juegos from empresas
        inner join juegos on empresas.id = juegos.id_empresa inner join genero_juegos on juegos.id = genero_juegos.id_juego
        inner join generos on genero_juegos.id_genero = generos.id where generos.nombre = 'Acción' group by empresas.nombre;
        
		/*3. Mostrar el nombre de la empresa, el nombre del juego y su género.*/
    
		select empresas.nombre as nombre_empresa, juegos.nombre as nombre_juego, generos.nombre as nombre_genero
        from empresas inner join juegos on empresas.id = juegos.id_empresa inner join genero_juegos on juegos.id = genero_juegos.id_juego
        inner join generos on genero_juegos.id_genero = generos.id;

		/*4. Mostrar toda la información de los clientes y el nombre de las plataformas sobre las que tiene una consola.*/

		select clientes.*, plataformas.nombre as plataforma from clientes inner join consola_cliente
        on clientes.id = consola_cliente.id_cliente inner join consolas on consola_cliente.id_consola = consolas.id
        inner join plataformas on consolas.id_plataforma = plataformas.id;

		/*5. Dado un cliente X mostrar el nombre de todos sus juegos y de la plataforma sobre la que juegan.*/

		select clientes.nombre as nombre_cliente, juegos.nombre as nombre_juegos, plataformas.nombre as plataforma from clientes
        inner join juegos_clientes on clientes.id = clientes.id inner join juegos on juegos_clientes.id_juego = juegos.id
        inner join consola_juegos on juegos.id = consola_juegos.id_juego inner join consolas on consola_juegos.id_consola =
        consolas.id inner join plataformas on consolas.id_plataforma = plataformas.id where clientes.id = 1;

		/*6. Muestra los clientes que han comprado el juego más antiguo.*/

		select clientes.* from clientes inner join juegos_clientes on clientes.id = juegos_clientes.id_cliente
        inner join juegos on juegos_clientes.id_juego = juegos.id where juegos.lanzamiento = (select min(lanzamiento) from juegos);

		/*7. Muestra el nombre del cliente y el número de juegos que ha comprado hasta 2023 (cualquier año que tengan registrado).*/
        
        select clientes.nombre as nombre_cliente, count(juegos_clientes.id_juego) as numero_juegos_comprados from clientes inner join juegos_clientes
        on clientes.id = juegos_clientes.id_cliente inner join juegos on juegos_clientes.id_juego = juegos.id
        where year(juegos.lanzamiento) <= 2023 group by clientes.id;
        
        /*8. Mostrar el género más comprado por los clientes de una plataforma X*/
        
        select generos.nombre as genero_mas_comprado, count(*) as cantidad_compras from clientes inner join juegos_clientes on clientes.id = juegos_clientes.id_cliente
        inner join juegos on juegos_clientes.id_juego = juegos.id inner join genero_juegos on juegos.id = genero_juegos.id_juego
        inner join generos on genero_juegos.id_genero = generos.id
        inner join consola_juegos on juegos.id = juegos_clientes.id_juego
        inner join consolas on consola_juegos.id_consola = consolas.id
        inner join plataformas on consolas.id_plataforma = plataformas.id where plataformas.nombre = 'Nintendo Switch' group by generos.id
        order by count(*) desc limit 1;
        
