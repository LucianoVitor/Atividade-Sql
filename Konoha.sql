CREATE DATABASE Konoha;

CREATE TABLE livro (
id serial primary key,
titulo varchar (100)
);

CREATE TABLE usuario (
id serial primary key,
nome varchar (100) not null,
idade INTEGER
);

CREATE TABLE emprestimo (
id serial primary key,
id_do_livro INTEGER UNIQUE NOT NULL,
FOREIGN key (id_do_livro) REFERENCES livro(id),
id_do_usuario INTEGER UNIQUE NOT NULL,
FOREIGN key (id_do_usuario) REFERENCES usuario(id),
datae DATE
);

insert into livro (titulo) values ('The Vampires Diares');
insert into livro (titulo) values ('Harry Potter');
insert into livro (titulo) values ('As Quíntuplas');
insert into livro (titulo) values ('Tokyo Ghoul');
insert into livro (titulo) values ('One Piece');
insert into livro (titulo) values ('Deadpool Massacra o Universo Marvel');
insert into livro (titulo) values ('Deadpool Massacra o Universo Marvel Novamente');
insert into livro (titulo) values ('Lanterna Verde');
insert into livro (titulo) values ('Jujutsu Kaisen');
insert into livro (titulo) values ('Demon Slayer');

insert into usuario (nome, idade) values ('Monkey D. Luffy', 21);
insert into usuario (nome, idade) values ('Roronoa Zoro', 18);
insert into usuario (nome, idade) values ('Portgas D. Ace', 17);
insert into usuario (nome, idade) values ('Naruto', 15);
insert into usuario (nome, idade) values ('Kakashi', 32);
insert into usuario (nome, idade) values ('Guy-Sensei', 45);
insert into usuario (nome, idade) values ('Edward Newgate', 15);
insert into usuario (nome, idade) values ('Gol D. Roger', 19);
insert into usuario (nome, idade) values ('Uchiha Madara', 20);
insert into usuario (nome, idade) values ('Uchiha Obito', 20);
insert into usuario (nome, idade) values ('Otome', 21);

INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (1,2, '2022-07-22');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (5,6, '2022-08-15');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (6,5, '2022-12-12');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (9,3, '2022-06-02');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (7,4, '2022-05-15');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (2,7, '2022-06-12');
INSERT into emprestimo (id_do_livro, id_do_usuario, datae) VALUES (8,1, '2022-10-02');

SELECT l.titulo as Titulo_do_Livro, u.nome as Nome, e.datae from emprestimos as e

join usuario as u
on u.nome= e.id_do_usuario;

join livro as l
on l.titulo= e.id_do_livro;

SELECT * from e WHERE e.datae BETWEEN '2022-8-10' AND '2022-10-10';