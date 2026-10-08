# Atividade Prática 11 - Relacionamento entre Tabelas

## Sobre a atividade

Nesta atividade foi criado um banco de dados para representar o funcionamento de uma biblioteca escolar. Utilizamos duas tabelas:

* `alunos` - armazena os alunos cadastrados.
* `emprestimos` - armazena os livros emprestados e o aluno que pegou cada livro.

O relacionamento entre as tabelas foi feito através do campo `id_aluno`.

## Banco de dados
O banco utilizado foi:
`biblioteca_escola`

## Tabelas Alunos

A tabela `alunos` possui:
* `id` - identifica cada aluno.
* `nome` - nome do aluno.

## Tabelas Empréstimos

A tabela `emprestimos` possui:
* `id` - identifica cada empréstimo.
* `livro` - nome do livro emprestado.
* `id_aluno` - identifica o aluno que pegou o livro.

O campo `id_aluno` possui uma referência para o `id` da tabela `alunos`.

## Dados cadastrados
Foram cadastrados 15 alunos:

* Eloa
* Elis
* Rafaela
* Mayara
* Eduarda
* Felipe
* Gabriela
* Henrique
* Isabela
* João
* Karina
* Lucas
* Mariana
* Nicolas
* Julia

Também foram cadastrados 10 empréstimos de livros.

## Consultas realizadas

Durante a atividade foram realizadas consultas para:

* Mostrar todos os alunos.
* Mostrar todos os empréstimos.
* Usar `INNER JOIN` para mostrar o nome do aluno e o livro que ele pegou.
* Usar `LEFT JOIN` para mostrar todos os alunos, mesmo os que não possuem empréstimos.
* Encontrar os alunos que nunca pegaram um livro.

### INNER JOIN

O `INNER JOIN` mostra somente os alunos que possuem um empréstimo relacionado.

Os alunos que não aparecem nessa consulta são:

**Felipe, Gabriela, Isabela, Lucas e Julia.**

Isso acontece porque eles não possuem nenhum livro emprestado.

### LEFT JOIN

O `LEFT JOIN` mostra todos os alunos, inclusive aqueles que não possuem empréstimos.

Para os alunos que não pegaram nenhum livro, a coluna `livro` aparece como `NULL`.

### Alunos que nunca pegaram livro

Foi utilizada uma consulta com `LEFT JOIN` e `WHERE ... IS NULL` para encontrar os alunos que não possuem nenhum empréstimo.

Resultado:

**Felipe, Gabriela, Isabela, Lucas e Julia.**

## Teste com aluno inexistente

Também foi feito um teste tentando cadastrar um empréstimo para o aluno de número `50`.

```sql
INSERT INTO emprestimos (livro, id_aluno) VALUES
('Turma da Mônica', 50);
```

O banco apresenta um erro porque o aluno de número 50 não existe na tabela `alunos`.

Isso acontece porque `id_aluno` possui uma referência para `alunos(id)`. Dessa forma, o banco só permite cadastrar um empréstimo para um aluno que já esteja cadastrado.

## Objetivo

O objetivo da atividade foi praticar o relacionamento entre tabelas e entender como utilizar `INNER JOIN` e `LEFT JOIN` para consultar informações relacionadas no banco de dados.

<img width="273" height="637" alt="Captura de tela 2026-10-08 103646" src="https://github.com/user-attachments/assets/56663621-4e59-4ed8-ba0e-5e89245134ea" />
