DROP DATABASE IF EXISTS projetoindividual;

CREATE DATABASE projetoindividual;

USE projetoindividual;

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

SELECT * FROM usuario;

SELECT * FROM aviso;

SELECT * FROM pontuacao;

SELECT (pontquiz + pontcruz) FROM pontuacao;

SELECT pontquiz, pontcruz, nome FROM pontuacao JOIN usuario ON fkusuario = id ORDER BY (pontquiz + pontcruz) DESC;

SELECT nome, titulo, pontquiz, pontcruz FROM usuario u
	LEFT JOIN aviso a ON u.id = a.fkusuario
    JOIN pontuacao p ON u.id = p.fkusuario;
