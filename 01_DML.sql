USE optus;

/* DML - Data Manipulation Language */
--INSERT - Inserir dados

INSERT INTO Estilo (Nome) VALUES ('Hip Hop');
INSERT INTO Estilo (Nome) VALUES ('DanceHall');
INSERT INTO Estilo (Nome) VALUES ('SambaRock');

-- Com FK's
INSERT INTO Artista (Nome, IdEstilo) VALUES ('Method Man',1);
INSERT INTO Artista (Nome, IdEstilo) VALUES ('Conroy Smith',2);
INSERT INTO Artista (Nome, IdEstilo) VALUES ('BEbeto',3);

-- Com FK's
INSERT INTO Album (Nome, DataLancamento, QtdMinutos, Ativo, IdArtista) VALUES ('Enter the Wu-Tang', '1993-11-09T19:30:00',120, 1, 1);
INSERT INTO Album (Nome, DataLancamento, QtdMinutos, Ativo, IdArtista) VALUES ('Sense Sound', '1980-03-07T15:00:00',130, 1, 2);
INSERT INTO Album (Nome, DataLancamento, QtdMinutos, Ativo, IdArtista) VALUES ('As Mais Tocadas', '1985-06-10T20:40:00',200, 1, 3);

INSERT INTO EstiloAlbum (IdEstilo, IdAlbum) VALUES (2, 8);
INSERT INTO EstiloAlbum (IdEstilo, IdAlbum) VALUES (4, 8);

INSERT INTO Usuarios (Nome, Permissão, Email, Senha) VALUES ('Henrique', 'Admn', 'Rique@gmail.com', 'nuzei');
INSERT INTO Usuarios (Nome, Permissão, Email, Senha) VALUES ('João', 'Usuario', 'Joao@gmail.com', '8520');

-- DQL de consulta simples
SELECT * FROM Estilo;
SELECT * FROM Artista;
SELECT * FROM Album;
SELECT * FROM Usuarios;
SELECT * FROM EstiloAlbum;

-- DELETE - Deletar dados
-- Não vou usar mais 
--DELETE FROM EstiloAlbum;
DELETE FROM Usuarios WHERE IdUsuarios = 3;


--Adicionamos o IdEstilo na tabela ÉstiloAlbum :

ALTER TABLE EstiloAlbum ADD IdEstilo INT FOREIGN KEY REFERENCES Estilo (IdEstilo);