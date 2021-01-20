/* para iniciar desde el terminal 
   mysql -u root -h localhost -p

*/

/* COMANDOS PARA NAVEGAR EN MYSQL
	show tables; -> muetra las tablas
	show databases; -> muestra las db
	select database(); -> muestra la ubicacion de la db
	show warnings; -> muestra los warnings 
	drop table <nombre tabla>; -> borra las tablas
	describe <nombre tablas> o <db> -> muestra la tabla y sus caracteristicas
	desc-> hace lo mismo que describe
	show full columns from books; -> muesetra la db con todas sus caracteristicas
	
*/

CREATE TABLE IF  NOT EXISTS books (
	
	book_id INTEGER PRIMARY KEY AUTO_INCREMENT,
	author INTEGER UNSIGNED,
	title VARCHAR(100) NOT NULL,
	`year` INTEGER UNSIGNED NOT NULL DEFAULT 1900, 
	language VARCHAR(2) NOT NULL DEFAULT 'es' COMMENT 'ISO 639-1 language', 
	cover_url VARCHAR(500), 
	price DOUBLE(6,2)NOT NULL DEFAULT 10.0, 
	sellable TINYINT(1) DEFAULT 1, 
	copies INTEGER NOT NULL DEFAULT 1, 
	description TEXT 
 );

CREATE TABLE IF NOT EXISTS authors ( 
	author_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(100) NOT NULL, 
	nationality VARCHAR(3) 

 );
 
 CREATE TABLE clients (
	client_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	birthdate DATETIME,
	gender ENUM('M','F','ND') NOT NULL,
	active TINYINT(1) NOT NULL DEFAULT 1,
	create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
	update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
	ON UPDATE CURRENT_TIMESTAMP 
	
 
 );
 
 CREATE TABLE IF NOT EXISTS operations(
	operations_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL,
	book_id INTEGER UNSIGNED,
	client_id INTEGER UNSIGNED,
	`type` ENUM('BORROWED','RETURNED ','SOLD') NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
	ON UPDATE CURRENT_TIMESTAMP	,
	finished TINYINT(1) NOT NULL
 
 
 );