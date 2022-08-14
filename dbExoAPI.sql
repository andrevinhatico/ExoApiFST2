CREATE DATABASE ExoApi
GO

USE ExoApi
GO

CREATE TABLE Projetos (
    Id INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(150) NOT NULL,
    StatusProj BIT NOT NULL,
    DataInicio VARCHAR(10),
	Tecnologias VARCHAR(150),
	Requisitos VARCHAR(150),
	Area VARCHAR(150)
)
GO

INSERT INTO Projetos (Titulo, StatusProj, DataInicio,Tecnologias, Requisitos, Area) 
VALUES ('Titulo A', 1, '01/06/2022', 'Tecnologia X', 'Requisito Y', 'Area Z')
GO

INSERT INTO Projetos (Titulo, StatusProj, DataInicio,Tecnologias, Requisitos, Area) 
VALUES ('Titulo B', 0, '09/06/2022', 'Tecnologia BA', 'Requisito KL', 'Area VB')
GO

SELECT * FROM Projetos


CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Senha VARCHAR(120) NOT NULL,
	Tipo CHAR(1) NOT NULL
)
GO

INSERT INTO Usuarios VALUES ('email@sp.br', '1234', 1)
GO

SELECT * FROM Usuarios WHERE email = 'email@sp.br' AND senha = '1234'
GO


SELECT * FROM Usuarios