create database supermercado;
USE supermercado;
CREATE TABLE Cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(45) NOT NULL,
  cpf VARCHAR(12) NOT NULL UNIQUE,
  telefone VARCHAR(15),
  email VARCHAR(40) NOT NULL UNIQUE
 
);
CREATE TABLE Colaborador (
  id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(45) NOT NULL,
  setor VARCHAR(45) NOT NULL
  
);
create table Produto(
id_produto int auto_increment primary key,
nome varchar(45) not null,
  categoria VARCHAR(40) NOT NULL,
  preco decimal(10,2) not null,
  estoque INT UNSIGNED NOT NULL);
  CREATE TABLE Venda (
  id_venda INT AUTO_INCREMENT PRIMARY KEY,
  data_venda DATETIME NOT NULL,
  id_cliente INT NOT NULL,
  id_colaborador INT NOT NULL,

  FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador)
);
CREATE TABLE IF NOT EXISTS ItemVenda (
  id_item_venda INT AUTO_INCREMENT PRIMARY KEY,
  id_venda INT NOT NULL,
  id_produto INT NOT NULL,
  quantidade INT NOT NULL,
  preco_unitario DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
  FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
SHOW TABLES;
 DESCRIBE Cliente;

