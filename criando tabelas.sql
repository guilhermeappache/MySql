CREATE TABLE Aluno (
num_rgm integer auto_increment ,
nome_aluno varchar(30) not null,
nome_pai varchar(30),
nome_mae varchar(30),
data_nascimento DATE not null,
sexo char(1) not null,
PRIMARY KEY (num_rgm)
);

CREATE TABLE Classe(
id_classe integer(4) not null,
cod_periodo varchar(5) not null,
ano_letivo integer(4) not null,
cod_escola integer(1)not null,
num_serie integer(2) not null,
PRIMARY KEY (id_classe)
);

CREATE TABLE Matricula(
	cod_matricula integer(5) not null ,
	data_matricula date,
    id_classe integer(4) not null,
    num_rgm integer auto_increment ,
	FOREIGN KEY(id_classe) REFERENCES Classe(id_classe),
	FOREIGN KEY(num_rgm) REFERENCES Aluno(num_rgm)  
);