-- DML - Linguagem de manipulação de dados * /
--INSERT - Inserir
INSERT INTO Aluno (Idade, Nome) VALUES ( 16, 'Milena');
INSERT INTO Materia (Titulo) VALUES ( 'Matemática' );
INSERT INTO Materia (Titulo) VALUES ( 'Português' );
INSERT INTO Trabalho
	(Nota, DataEntrega, IdAluno, IdMateria)
	VALUES
	( 9.7, '2020-08-05T23:59:59', 1, 2);


--ATUALIZAR - Alterar
UPDATE Aluno FROM
	IdAluno =  'Milena'
WHERE IdAluno = 1;

--DELETE - Excluir
--DELETE FROM Trabalho;
--DELETE FROM  Aluno;
--DELETE FROM Materia;
--DELETE FROM Aluno WHERE IdAluno =  13 ;

--DQL - SELECT * /
SELECT  *  FROM Aluno;
SELECT  *  FROM Materia;
SELECT  *  FROM Trabalho;

--Alteramos uma coluna que foi mal estruturada * /
ALTER  TABLE Trabalho ALTER COLUMN Nota DECIMAL ( 10, 2 )