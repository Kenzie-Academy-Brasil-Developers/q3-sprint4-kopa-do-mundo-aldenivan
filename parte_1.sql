CREATE TABLE IF NOT EXISTS kopas(
	id			BIGSERIAL 		PRIMARY KEY,
	selecao 	VARCHAR(128) 	NOT NULL UNIQUE,
	qtn_copas 	INTEGER
);


INSERT INTO
	kopas(selecao, qtn_copas)
VALUES 	
	('Brasil',5),
	('Alemanha',5),
	('Itália',4),
	('Argentina',2),
	('França',2),
	('Uruguai',2),
	('Inglaterra',1),
	('Espanha',1),
	('Japão',1);


SELECT selecao, qtn_copas FROM kopas; 


UPDATE
	kopas 
SET 
	qtn_copas = 4
WHERE selecao = 'Alemanha';


DELETE FROM 
	kopas
WHERE selecao = 'Japão'
RETURNING *;
	
	
SELECT * FROM kopas;


ALTER TABLE kopas ADD COLUMN pts INTEGER; 


UPDATE 
	kopas 
SET 
	pts = 237
WHERE 
	selecao = 'Brasil';

UPDATE 
	kopas 
SET 
	pts = 221
WHERE 
	selecao = 'Alemanha';
	
UPDATE 
	kopas 
SET 
	pts = 156
WHERE 
	selecao = 'Itália';

UPDATE 
	kopas 
SET 
	pts = 144
WHERE 
	selecao = 'Argentina';

UPDATE 
	kopas 
SET 
	pts = 115
WHERE 
	selecao = 'França';

UPDATE 
	kopas 
SET 
	pts = 84
WHERE 
	selecao = 'Uruguai';

UPDATE 
	kopas 
SET 
	pts = 108
WHERE 
	selecao = 'Inglaterra';

UPDATE 
	kopas 
SET 
	pts = 105
WHERE 
	selecao = 'Espanha'; 
	
	
SELECT * FROM kopas;