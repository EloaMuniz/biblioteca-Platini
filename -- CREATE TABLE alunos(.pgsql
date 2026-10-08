-- CREATE TABLE alunos(
-- id SERIAL PRIMARY KEY,
-- nome VARCHAR(50) NOT NULL
-- );
-- CREATE TABLE emprestimos(
-- id SERIAL PRIMARY KEY,
-- livro VARCHAR(50) NOT NULL,
-- id_aluno INT REFERENCES alunos(id)
-- );
-- INSERT INTO alunos (nome) VALUES
-- ('Eloa'),
-- ('Elis'),
-- ('Rafaela'),
-- ('Mayara'),
-- ('Eduarda'),
-- ('Felipe'),
-- ('Gabriela'),
-- ('Henrique'),
-- ('Isabela'),
-- ('João'),
-- ('Karina'),
-- ('Lucas'),
-- ('Mariana'),
-- ('Nicolas'),
-- ('Julia');

-- INSERT INTO emprestimos (livro, id_aluno) VALUES
-- ('Dom Casmurro', 1),
-- ('O Pequeno Príncipe', 2),
-- ('Harry Potter', 4),
-- ('Turma da Mônica', 5),
-- ('Diário de um Banana', 7),
-- ('A Culpa é das Estrelas', 8),
-- ('O Hobbit', 10),
-- ('Percy Jackson', 11),
-- ('Capitães da Areia', 13),
-- ('Alice no País das Maravilhas', 14);

-- SELECT * FROM alunos;

-- SELECT * FROM emprestimos;

-- SELECT alunos.nome, emprestimos.livro
-- FROM emprestimos
-- INNER JOIN alunos ON emprestimos.id_aluno = alunos.id;

-- SELECT alunos.nome, emprestimos.livro
-- FROM alunos
-- LEFT JOIN emprestimos ON emprestimos.id_aluno = alunos.id;

-- INSERT INTO emprestimos (livro, id_aluno) VALUES ('Turma da Mônica', 50);

-- SELECT alunos.nome
-- FROM alunos
-- LEFT JOIN emprestimos ON emprestimos.id_aluno = alunos.id
-- WHERE emprestimos.id IS NULL;