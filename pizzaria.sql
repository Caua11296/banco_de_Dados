CREATE DATABASE db_pizzaria;
USE db_pizzaria;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    idcliente INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (idcliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pizza (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    idpedido INT NOT NULL,
    sabor VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    FOREIGN KEY (idpedido) REFERENCES pedido(id_pedido)
);

CREATE TABLE contem (
    id_pedido INT NOT NULL,
    id_pizza INT NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_pedido, id_pizza),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_pizza) REFERENCES pizza(id_pizza)
);

INSERT INTO cliente (nome, email, senha) VALUES
('João Silva', 'joao@email.com', 'senha_hash_123'),
('Maria Oliveira', 'maria@email.com', 'senha_hash_456'),
('Carlos Pereira', 'carlos@email.com', 'senha_hash_789');


INSERT INTO pizza (sabor, valor, tamanho) VALUES
('Calabresa', 40.00, 'Grande'),
('Muçarela', 35.00, 'Grande'),
('Frango com Catupiry', 45.00, 'Média');


INSERT INTO pedido (idcliente, data_pedido, valor_total) VALUES
(1, '2026-10-01', 75.00),
(2, '2026-10-02', 45.00),
(3, '2026-10-03', 40.00);


INSERT INTO contem (id_pedido, id_pizza, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1);