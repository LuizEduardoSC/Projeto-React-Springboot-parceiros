# 💻 Projeto Full Stack — React, Spring Boot e SQL



Este repositório contém um projeto completo com:



\- \*\*Frontend\*\*: Aplicação web desenvolvida em React, com Node.js para gerenciamento de dependências e scripts.

\- \*\*Backend\*\*: API REST construída com Java e Spring Boot.

\- \*\*Banco de Dados\*\*: Script SQL contendo a estrutura do banco (tabelas, procedures, etc.).



---



## 📁 Estrutura do Projeto





meu-projeto/

├── frontend/         → Interface web (React)

├── backend/          → API REST (Spring Boot)

├── banco/            → Script SQL para criação do banco

├── README.md         → Documentação do projeto

└── .gitignore        → Arquivos ignorados pelo Git



---



## 🚀 Como Executar o Projeto



### 🔧 Backend — Spring Boot



1\. Instale o Spring Tools.

2\. Navegue até a pasta do projeto.

3\. Configure a conexão com o banco no `application.properties` do Spring Boot:



   spring.datasource.url=jdbc:mysql://localhost:3306/db\_acti

   spring.datasource.username=seu\_usuario

   spring.datasource.password=sua\_senha

   spring.jpa.hibernate.ddl-auto=update



4\. A API será iniciada em `http://localhost:8080`.





### 🌐 Frontend — React



1\. Instale o \*\*Node.js\*\* o\*\*vite\* e o \*\*npm\*\*.

2\. Navegue até a pasta



&nbsp;  cd frontend

&nbsp;  npm install

&nbsp;  npm start

&nbsp;  ```

3\. A aplicação será iniciada em `http://localhost:5173/`.





### 🗃 Banco de Dados — MySQL (ou compatível)



1\. Abra seu cliente SQL (ex: MySQL Workbench).

2\. Execute o script localizado em `banco/script.sql`:



&nbsp; 

&nbsp;  CREATE DATABASE IF NOT EXISTS db\_acti

&nbsp; CHARACTER SET utf8mb4

&nbsp; COLLATE utf8mb4\_unicode\_ci;

&nbsp; 

&nbsp; USE db\_acti;

&nbsp; 

&nbsp; DROP TABLE IF EXISTS parceiros;



CREATE TABLE parceiros (

&nbsp; id INT AUTO\_INCREMENT PRIMARY KEY,

&nbsp; tipo\_parceiro VARCHAR(50) NOT NULL,

&nbsp; personalidade VARCHAR(10) NOT NULL,

&nbsp; razao\_social VARCHAR(255) NOT NULL,

&nbsp; nome\_fantasia VARCHAR(255) NOT NULL,

&nbsp; cpf\_cnpj VARCHAR(18) NOT NULL UNIQUE,

&nbsp; segmento VARCHAR(100) NOT NULL,

&nbsp; categoria VARCHAR(100) NOT NULL,

&nbsp; cep VARCHAR(9) NOT NULL,

&nbsp; pais VARCHAR(50) NOT NULL DEFAULT 'Brasil',

&nbsp; uf CHAR(2) NOT NULL,

&nbsp; municipio VARCHAR(100) NOT NULL,

&nbsp; logradouro VARCHAR(255) NOT NULL,

&nbsp; numero VARCHAR(10) NOT NULL,

&nbsp; bairro VARCHAR(100) NOT NULL,

&nbsp; email VARCHAR(100) NOT NULL,

&nbsp; telefone VARCHAR(15) NOT NULL,

&nbsp; celular VARCHAR(15) NOT NULL,

&nbsp; complemento VARCHAR(100),

&nbsp; observacao TEXT

);



DELIMITER $$



CREATE PROCEDURE sp\_inserir\_parceiro(

&nbsp;   IN p\_tipo\_parceiro VARCHAR(50),

&nbsp;   IN p\_personalidade VARCHAR(10),

&nbsp;   IN p\_razao\_social VARCHAR(255),

&nbsp;   IN p\_nome\_fantasia VARCHAR(255),

&nbsp;   IN p\_cpf\_cnpj VARCHAR(18),

&nbsp;   IN p\_segmento VARCHAR(100),

&nbsp;   IN p\_categoria VARCHAR(100),

&nbsp;   IN p\_cep VARCHAR(9),

&nbsp;   IN p\_pais VARCHAR(50),

&nbsp;   IN p\_uf VARCHAR(2),

&nbsp;   IN p\_municipio VARCHAR(100),

&nbsp;   IN p\_logradouro VARCHAR(255),

&nbsp;   IN p\_numero VARCHAR(10),

&nbsp;   IN p\_bairro VARCHAR(100),

&nbsp;   IN p\_email VARCHAR(100),

&nbsp;   IN p\_telefone VARCHAR(15),

&nbsp;   IN p\_celular VARCHAR(15),

&nbsp;   IN p\_complemento VARCHAR(100),

&nbsp;   IN p\_observacao TEXT

)

BEGIN

&nbsp;   DECLARE EXIT HANDLER FOR SQLEXCEPTION

&nbsp;   BEGIN

&nbsp;       ROLLBACK;

&nbsp;   END;



&nbsp;   START TRANSACTION;



&nbsp;   INSERT INTO parceiros (

&nbsp;       tipo\_parceiro, personalidade, razao\_social, nome\_fantasia, cpf\_cnpj, segmento, categoria,

&nbsp;       cep, pais, uf, municipio, logradouro, numero, bairro, email, telefone, celular, complemento, observacao

&nbsp;   ) VALUES (

&nbsp;       p\_tipo\_parceiro, p\_personalidade, p\_razao\_social, p\_nome\_fantasia, p\_cpf\_cnpj, p\_segmento, p\_categoria,

&nbsp;       p\_cep, p\_pais, p\_uf, p\_municipio, p\_logradouro, p\_numero, p\_bairro, p\_email, p\_telefone, p\_celular, p\_complemento, p\_observacao

&nbsp;   );



&nbsp;   COMMIT;

END$$



DELIMITER ;





## 📌 Funcionalidades



\- Cadastro e autenticação de usuários

\- Integração entre frontend e backend via API REST

\- Persistência de dados com MySQL

\- Procedures para manipulação de dados no banco





## 🧠 Tecnologias Utilizadas



| Camada       | Tecnologias                     |

|--------------|----------------------------------|

| Frontend     | React, Node.js, JavaScript, HTML, CSS |

| Backend      | Java, Spring Boot, Maven         |

| Banco        | MySQL, SQL                       |

| Outros       | Git, GitHub                      |



---



## 👤 Autor



Luiz Eduardo

📍 São José dos Campos, SP — Brasil  

💬 Desenvolvedor apaixonado por soluções completas e bem estruturadas.



---



## 📬 Contato



Se quiser trocar ideias ou colaborar:



\- LinkedIn: https://www.linkedin.com/in/luiz-eduardosc/

\- Email: luizeduardoedd1@gmail.com



---

