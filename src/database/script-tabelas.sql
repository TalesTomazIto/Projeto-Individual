DROP DATABASE IF EXISTS projetoindividual;

CREATE DATABASE projetoindividual;

USE projetoindividual;
SELECT * FROM usuario;
SELECT * FROM pontuacao;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(30),
	email VARCHAR(30),
	senha VARCHAR(20)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(250),
	fkusuario INT,
	FOREIGN KEY (fkusuario) REFERENCES usuario(id)
);

CREATE TABLE pontuacao (
pontquiz INT,
pontcruz INT,
fkusuario INT,
FOREIGN KEY (fkusuario) REFERENCES usuario(id),
PRIMARY KEY (fkusuario)
);