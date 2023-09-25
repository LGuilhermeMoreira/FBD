INSERT INTO
    Estudante(
        numero,
        nome,
        estado,
        rua,
        num,
        data_nascimento,
        sexo,
        classe,
        programa_graduacao,
        numero_seguro
    )
VALUES
    (
        1,
        'João 1',
        'SP',
        'Rua 1',
        1,
        '1990-01-01',
        'M',
        'A',
        'BCC',
        1
    );

VALUES
    (
        2,
        'Lara',
        'SP',
        'Rua 1',
        1,
        '1990-01-01',
        'F',
        'A',
        'BCC',
        1
    );

VALUES
    (
        3,
        'Maria',
        'RJ',
        'Rua 4',
        1,
        '1990-01-01',
        'F',
        'A',
        'BCC',
        1
    );

INSERT INTO
    Estudante_telefone(telefone, numero)
VALUES
    ('88999334455', 1);

VALUES
    ('889987654433' 2);

VALUES
    ('88999887766', 3);

INSERT INTO
    Departamento(
        nome,
        codigo,
        num_escritorio,
        telefone,
        faculdade
    )
VALUES
    (
        'Departamento 1',
        1,
        1,
        '88999887766',
        'Faculdade 1'
    );

VALUES
    (
        'Departamento 2',
        2,
        2,
        '88999887746',
        'Faculdade 2'
    );

VALUES
    (
        'Departamento 3',
        3,
        3,
        '88999887736',
        'Faculdade 3'
    );

INSERT INTO
    Curso(
        numero,
        nome,
        descricao,
        horas,
        nivel,
        nome_dep
    )
VALUES
    (
        1,
        'Curso 1',
        'Descrição 1',
        1,
        1,
        'Departamento 1'
    );

VALUES
    (
        2,
        'Curso 2',
        'Descrição 2',
        2,
        2,
        'Departamento 2'
    );

VALUES
    (
        3,
        'Curso 3',
        'Descrição 3',
        3,
        3,
        'Departamento 3'
    );

INSERT INTO
    Seção(
        numero_secao,
        numero_curso,
        instrutor,
        semestre,
        ano
    )
VALUES
    (
        1,
        1,
        'Instrutor 1',
        1,
        2019
    );

VALUES
    (
        2,
        2,
        'Instrutor 2',
        2,
        2019
    );

VALUES
    (
        3,
        3,
        'Instrutor 3',
        3,
        2019
    );

INSERT INTO
    Relatorio_Notas(
        numero_estudante,
        numero_secao,
        numero_curso,
        nota_numerica
    )
VALUES
    (
        1,
        1,
        1,
        10
    );

VALUES
    (2, 2, 2, 9);

VALUES
    (3, 3, 3, 8);

INSERT INTO
    Participa(nome_dep, numero_aluno, proridade)
VALUES
    (
        'Departamento 1',
        1,
        1
    );

VALUES
    (
        'Departamento 2',
        2,
        2
    );

VALUES
    (
        'Departamento 3',
        3,
        3
    );