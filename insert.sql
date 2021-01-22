/* Existen diferentes forma de ingresar datos  a una tabla creada
	a continuacion se muetra cada una de ellas,
*/

/* TIPS 
para ver un iten de una lista con un formate diferente a celdas
se coloca \G en lugar de [;] , ejemplo:

select *from clients where client_id =1\G

*/

INSERT INTO authors(author_id,name,nationality) 
VALUES(NULL,'Juan Rulfo','MEX');

INSERT INTO authors(name,nationality)
VALUES('Gabo','COL');

INSERT INTO authors
VALUE(NULL,'GABO','COL');

INSERT INTO authors(name,nationality)
VALUES('Gabo','COL'),
	  ('Julio Cortázar','ARG'),
	  ('Octavio paz','MEX')	,
	   ('Juan Onetti','URU')	;
	   
	   
	   
	   
INSERT INTO `clients`(client_id,name,email,birthdate,gender,active) VALUES
	(1,'Maria Dolores Gomez','Maria Dolores.95983222J@random.names','1971-06-06','F',1),
	(2,'Adrian Fernandez','Adrian.55818851J@random.names','1970-04-09','M',1),
	(3,'Maria Luisa Marin','Maria Luisa.83726282A@random.names','1957-07-30','F',1),
	(4,'Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1);	
	
	
ON DUPLICATE KEY UPDATE SET active =VALUES(active)

El laberinto de la soledad, Octavio Paz ,1952
vuelta al laberinto de la sole

INSERT INTO books(title ,author_id) VALUES('El laberinto de la soledad',6); 

INSERT INTO books(title,author_id,`year`)
VALUES('vuelta al laberinto de la soledad',
		(SELECT author_id FROM authors WHERE name = 'Octavio paz' LIMIT 1),1960 );
		



