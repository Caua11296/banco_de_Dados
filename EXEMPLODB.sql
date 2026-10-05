-- Cauã -- 
CREATE DATABASE loja_virtual;
USE loja_virtual;
CREATE TABLE clientes(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(15),
data_cadastro DATE
);

alter table clientes add cpf varchar(14);

alter table clientes modify telefone varchar(20);

alter table clientes rename to consumidores;

drop table consumidores;

create index idx_nome_cliente
on clientes (nome);

drop database loja_virtual;

create table pedidos (
	id_pedido int auto_increment primary key,
	data_pedido date,
	valor_total decimal(10,2) check (valor_total > 0),
	id_cliente int,
	foreign key (id_cliente) references clientes(id_cliente)
);