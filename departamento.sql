CREATE DATABASE  db_empresa;
USE db_empresa;

CREATE TABLE Departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario FLOAT NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

CREATE TABLE Projeto (
    id_projeto INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario_projeto (
    id_funcionario INT NOT NULL,
    id_projeto INT NOT NULL,
    PRIMARY KEY (id_funcionario, id_projeto),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (id_projeto) REFERENCES Projeto(id_projeto)
);



INSERT INTO Departamento (nome) VALUES
('Tecnologia da Informação'),
('Recursos Humanos'),
('Financeiro');


INSERT INTO Funcionario (nome, cargo, salario, id_departamento) VALUES
('Carlos Andrade', 'Desenvolvedor Senior', 8500.00, 1),
('Ana Lima', 'Analista de RH', 4800.00, 2),
('Mariana Costa', 'Analista Financeira', 5200.00, 3);


INSERT INTO Projeto (data_inicio, data_fim, nome) VALUES
('2026-01-15', '2026-12-20', 'Migração para Nuvem'),
('2026-03-01', '2026-08-30', 'Novo Portal Interno'),
('2026-05-10', '2026-11-15', 'Automação Financeira');


INSERT INTO funcionario_projeto (id_funcionario, id_projeto) VALUES
(1, 1),
(1, 2),
(3, 3);