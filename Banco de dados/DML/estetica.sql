CREATE DATABASE MAQUIAGEM;

USE MAQUIAGEM;

CREATE TABLE secretaria(

 id_secretaria INT  AUTO_INCREMENT PRIMARY KEY,
 
 nome VARCHAR(50) NOT NULL,
 
 email VARCHAR(100) UNIQUE NOT NULL,
 
  senha_hash VARCHAR(255) NOT NULL
);

CREATE TABLE clientes(
 id_cliente INT AUTO_INCREMENT PRIMARY KEY,
 
 id_secretaria INT NOT NULL,
 
 nome VARCHAR(100) NOT NULL,
 
 telefone VARCHAR(15) NOT NULL,
 
  email VARCHAR(100) UNIQUE NOT NULL,
  
   senha_hash VARCHAR(255)  NOT NULL,
   
FOREIGN KEY (id_secretaria)
	REFERENCES SECRETARIA(id_secretaria)
	ON DELETE RESTRICT
);

CREATE TABLE atendimento(

 id_atendimento INT AUTO_INCREMENT PRIMARY KEY,
 
 id_secretaria INT NOT NULL,
 
  horario DATETIME,
  
  lugar VARCHAR (100),
  
  agendamento_dia VARCHAR(100),
  
  FOREIGN KEY (id_secretaria)
	REFERENCES SECRETARIA(id_secretaria)
	ON DELETE RESTRICT
 );
 
CREATE TABLE procedimento(

id_procedimento INT AUTO_INCREMENT PRIMARY KEY,

id_cliente INT NOT NULL,

id_atendimento INT NOT NULL,

tipo_de_procedimento VARCHAR(40),

valor_procedimento DECIMAL (10,2),


FOREIGN KEY (id_cliente)
	REFERENCES clientes(id_cliente)
	ON DELETE RESTRICT,
    
FOREIGN KEY (id_atendimento)
	REFERENCES ATENDIMENTO(id_atendimento)
	ON DELETE RESTRICT
);

CREATE TABLE profissional(

id_profissional INT AUTO_INCREMENT PRIMARY KEY,

id_procedimento INT NOT NULL,

nome VARCHAR(100) NOT NULL,

email VARCHAR(100) UNIQUE NOT NULL,
 
  senha_hash VARCHAR(255) NOT NULL,
  
  especificagem VARCHAR (45) NOT NULL,
  
  FOREIGN KEY (id_procedimento)
	REFERENCES procedimento(id_procedimento)
	ON DELETE RESTRICT
);
