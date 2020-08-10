USE optus;

/* DQL - Data Query Language */

-- Selecionar todos os dados da tabela
SELECT * FROM Album;

-- Selcionar um dado espec�fico
SELECT * FROM Usuarios WHERE 
	IdUsuarios = 4 OR -- ||
	IdUsuarios= 5;

-- Selecionar como uma BUSCA espec�ficas
-- % qualquer coisa
SELECT * FROM Album WHERE 
	Nome LIKE '%e%';

-- Selecionar dados com algumas condi��es especiais
SELECT * FROM Album WHERE IdAlbum > 7 AND IdAlbum < 11;

-- Ordenar dados de forma crescente (padr�o)
SELECT * FROM Estilo ORDER BY Nome;

-- Ordenar dados de forma crescente
SELECT * FROM Artista ORDER BY Nome ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Usuarios ORDER BY Permiss�o DESC;

-- Selecionar dados ENTRE valores espec�ficos
SELECT * FROM Album WHERE
	DataLancamento BETWEEN '1990-05-08T00:00:00' AND '1995-06-05T00:00:00';