CREATE DATABASE IF NOT EXISTS db_acti
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;
  
  USE db_acti;
  
  DROP TABLE IF EXISTS parceiros;

CREATE TABLE parceiros (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tipo_parceiro VARCHAR(50) NOT NULL,
  personalidade VARCHAR(10) NOT NULL,
  razao_social VARCHAR(255) NOT NULL,
  nome_fantasia VARCHAR(255) NOT NULL,
  cpf_cnpj VARCHAR(18) NOT NULL UNIQUE,
  segmento VARCHAR(100) NOT NULL,
  categoria VARCHAR(100) NOT NULL,
  cep VARCHAR(9) NOT NULL,
  pais VARCHAR(50) NOT NULL DEFAULT 'Brasil',
  uf CHAR(2) NOT NULL,
  municipio VARCHAR(100) NOT NULL,
  logradouro VARCHAR(255) NOT NULL,
  numero VARCHAR(10) NOT NULL,
  bairro VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  celular VARCHAR(15) NOT NULL,
  complemento VARCHAR(100),
  observacao TEXT
);