create database rhtech;
use rhtech;

create table funcionarios (
id bigint auto_increment primary key,
nome varchar(100) not null,
email varchar(100) unique not null,
senha varchar(50) not null,
cep varchar(8) not null,
endereco varchar(200) not null,
numero int not null,
bairro varchar(200) not null,
cidade varchar(100) not null,
estado varchar(100) not null
);

create table cargos(
id bigint auto_increment primary key,
nome varchar(100),
descricao varchar(500)
);

create table funcionario_por_cargo (
	id BIGINT PRIMARY KEY,
    funcionario_id BIGINT NOT NULL,
    cargo_id BIGINT NOT NULL,
    detalhes TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
    CONSTRAINT fk_funcionario FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id),
    CONSTRAINT fk_cargo FOREIGN KEY (cargo_id) REFERENCES cargos(id)
);

