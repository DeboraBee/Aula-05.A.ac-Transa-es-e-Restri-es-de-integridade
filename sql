--1 questão--
CREATE TABLE pessoa (
    ID INT PRIMARY KEY,
    nome VARCHAR(50),                    
    sobrenome VARCHAR(50),               
    idade INT CHECK (idade >= 0)         
                                         
);

--2 questão--
ALTER TABLE pessoa
ADD CONSTRAINT uq_id_nome_sobrenome             
UNIQUE (ID, nome, sobrenome);

--3 questão-- 
ALTER TABLE pessoa
ALTER COLUMN idade
idade SET NOT NULL;

--4 questão--
CREATE TABLE endereco (
   ID int PRIMARY KEY,
   rua VARCHAR(100)
);

ALTER TABLE pessoa 
ADD endereco_id INT;

ALTER TABLE pessoa 
ADD CONSTRAINT fk_endereco
FOREIGN KEY (endereco_id)
REFERENCES endereco(ID);
