-- Criação do Banco de Dados
CREATE DATABASE sistema_cadastro;

-- Uso do banco criado
USE sistema_cadastro;

-- Tabela para os Cadastros
CREATE TABLE cadastros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    idade INT NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    endereco TEXT NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);
