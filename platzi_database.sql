CREATE TABLE IF  NOT EXISTS books (¬

	book_id INTEGER PRIMARY AUTO_INCREMENT,
	author,
	title VARCHAR(100) NOT NULL,
	year INTEGER UNSIGNED NOT NULL DEFAULT,
	language VARCHAR(2) NOT NUL DEFAULT 'ES' COMMENT 'ISO 639-1 language',
	cover_url VARCHAR(500),
	price DOUBLE(6,2)NOT NULL DEFAULT 10.0
	sellabel TINYINT(1) DEFAULT 1,
	copy INTEGER NOT NULL DEFAULT,
	description TEXT
¬);