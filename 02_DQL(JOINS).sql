/* DQL - JOINS*/
USE optus;

SELECT 
	Estilo.Nome,
	Album.Nome,
	EstiloAlbum.IdEstiloAlbum
FROM EstiloAlbum
	INNER JOIN Album ON EstiloAlbum.IdAlbum = Album.IdAlbum
	INNER JOIN Estilo ON EstiloAlbum.IdEstilo = Estilo.IdEstilo


SELECT * FROM Album;
SELECT * FROM Artista;
SELECT * FROM Estilo;
SELECT * FROM EstiloAlbum;
SELECT * FROM Usuario;
