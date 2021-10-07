/* Cuales pagos tienen el monto 1.98, 7.98 o 9.98?*/
select * from public.payment p where p.amount in (9.98,1.98,7.98);
/* Cuales la suma total pagada por los clientes que tienen una letra A en la segunda posición de su apellido y una W en cualquier lugar después de la A?*/
select sum(p.amount) as total 
from public.payment p join public.customer c on p.customer_id=c.customer_id 
where c.last_name like '_A%W%';
/* Creacion tabla*/
create table superheroes(
id_superhero numeric(4) constraint pk_superhero primary key,
nombre varchar(255) not null,
email varchar(255) not null
);

create sequence superhero start 1 increment 1;
alter table superheroes alter column id_superhero set default nextval('superhero');

/* insertar los datos*/

insert into superheroes 
(nombre, email)
values('Wanda Maximoff', 'wanda.maximoff@avengers.org'),
('Pietro Maximoff', 'pietro@mail.sokovia.ru'),
('Erik Lensherr', 'fuck_you_charles@brotherhood.of.evil.mutants.space'),
('Charles Xavier', 'i.am.secretely.filled.with.hubris@xavier-school-4-gifted-youngste.'),
('Anthony Edward Stark', 'iamironman@avengers.gov'),
('Steve Rogers', 'americas_ass@anti_avengers'),
('The Vision', 'vis@westview.sword.gov'),
('Clint Barton', 'bul@lse.ye'),
('Natasja Romanov',	'blackwidow@kgb.ru'),
('Thor', 'god_of_thunder-^_^@royalty.asgard.gov'),
('Logan', 'wolverine@cyclops_is_a_jerk.com'),
('Ororo Monroe', 'ororo@weather.co'),
('Scott Summers', 'o@x'),
('Nathan Summers', 'cable@xfact.or'),
('Groot', 'iamgroot@asgardiansofthegalaxyledbythor.quillsux'),
('Nebula', 'idonthaveelektras@complex.thanos'),
('Gamora', 'thefiercestwomaninthegalaxy@thanos.'),
('Rocket', 'shhhhhhhh@darknet.ru');

/* Seleccionar emails validos*/
select * from superheroes where email not like '%_@__%.__%'

