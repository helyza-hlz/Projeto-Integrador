CREATE TABLE alunos(
	-- Identificador único (chave primaria)
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    
    -- Nome completo do aluno (obrigatorio - NOT NULL)
    nome VARCHAR(100) NOT NULL,
    
    -- Data de nascimento
    data_nascimento DATE,
    
    -- CPF único p/ cada aluno (restrição de unicidade - UNIQUE)
    cpf VARCHAR(100) UNIQUE,
    
    -- Email do Aluno 
    email VARCHAR(100) NOT NULL UNIQUE,
    
    -- Telefone de contato
    telefone VARCHAR(20),
    
    -- Data em que o aluno foi matruiculado
    data_matricula DATE NOT NULL
    
);

CREATE TABLE professores(
	
    -- idenfificador profssor 
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    
    -- NOME DO PROFESOR 
    nome VARCHAR(100) NOT NULL,
    
    -- area deespecializacao 
    especialidade VARCHAR(100), 
    
    -- Emil do professor 
    email VARCHAR(100), 
    
    -- telefone de contato 
    telefone VARCHAR(20) NOT NULL 
);

CREATE TABLE cursos( 
	-- curso
    id_curso INT AUTO_INCREMENT PRIMARY KEY, 
    
    -- nome do curso
    nome VARCHAR(100) NOT NULL,
    
    -- Carga horaria total do curso 
    carga_horaria INT NOT NULL
    
    );
