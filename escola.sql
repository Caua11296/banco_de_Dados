CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE Aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    serie INT NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Professores (
    id_professores INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    materia VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE Curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    materia VARCHAR(100) NOT NULL,
    professor VARCHAR(100) NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professores(id_professores)
);

CREATE TABLE AlunoCurso (
    id_alunoCurso INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    semestre VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

INSERT INTO Aluno (nome, serie, email) VALUES
('Lucas Santos', 3, 'lucas@escola.com'),
('Beatriz Costa', 2, 'beatriz@escola.com'),
('Gabriel Alves', 1, 'gabriel@escola.com');


INSERT INTO Professores (nome, materia, email) VALUES
('Prof. Roberto Rocha', 'Matemática', 'roberto@escola.com'),
('Prof.ª Fernanda Souza', 'História', 'fernanda@escola.com'),
('Prof. Ricardo Melo', 'Física', 'ricardo@escola.com');


INSERT INTO Curso (materia, professor, id_professor) VALUES
('Cálculo I', 'Prof. Roberto Rocha', 1),
('História Contemporânea', 'Prof.ª Fernanda Souza', 2),
('Física Geral', 'Prof. Ricardo Melo', 3);


INSERT INTO AlunoCurso (id_aluno, id_curso, semestre) VALUES
(1, 1, '2026.1'),
(2, 2, '2026.1'),
(3, 3, '2026.1');