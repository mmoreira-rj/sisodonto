CREATE DATABASE sisodonto
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;


CREATE TABLE endereco
(
  codigo serial NOT NULL,
  logradouro character varying(100),
  numero character varying(50),
  complemento character varying(100),
  bairro character varying(100),
  cidade character varying(100),
  estado character(2),
  CONSTRAINT pk_endereco PRIMARY KEY (codigo)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE endereco
  OWNER TO postgres;


CREATE TABLE paciente
(
  codigo serial NOT NULL,
  nome character varying(100) NOT NULL,
  data_nascimento date,
  cpf character(11) NOT NULL,
  rg character varying(20),
  data_cadastro timestamp without time zone NOT NULL,
  codigo_endereco integer,
  CONSTRAINT pk_paciente PRIMARY KEY (codigo),
  CONSTRAINT fk_paciente_endereco FOREIGN KEY (codigo_endereco)
      REFERENCES endereco (codigo) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT uk_cpf UNIQUE (cpf)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE paciente
  OWNER TO postgres;

ALTER TABLE paciente
  ADD COLUMN logradouro character varying(100);
ALTER TABLE paciente
  ADD COLUMN numero character varying(40);
ALTER TABLE paciente
  ADD COLUMN complemento character varying(40);
ALTER TABLE paciente
  ADD COLUMN bairro character varying(100);
ALTER TABLE paciente
  ADD COLUMN cidade character varying(100);