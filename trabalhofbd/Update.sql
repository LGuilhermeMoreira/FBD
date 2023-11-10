INSERT INTO Usuario (Nome, Dia, Mes, Ano, Idade, CpfUsuario, Numero, Endereco, Tipo_sanguineo, Historico_medico, Peso)
VALUES
  ('Lucas', 8, 7, 1992, 31, '56789012345', 5, 'Rua E, 555', 'A-', 'Nenhum', 72.3),
  ('Isabela', 12, 3, 1997, 26, '67890123456', 6, 'Avenida F, 789', 'B+', 'Asma', 63.8),
  ('Pedro', 25, 1, 1985, 38, '78901234567', 7, 'Rua G, 321', 'O-', 'Nenhum', 90.2),
  ('Mariana', 4, 9, 2002, 21, '89012345678', 8, 'Estrada H, 987', 'AB-', 'Diabetes', 57.4),
  ('Felipe', 18, 6, 1998, 25, '90123456789', 9, 'Rua I, 654', 'A+', 'Nenhum', 68.9),
  ('Amanda', 7, 12, 1990, 33, '01234567890', 10, 'Avenida J, 246', 'B+', 'Hipertensao', 75.0),
  ('Gustavo', 21, 5, 1987, 36, '12345678901', 11, 'Estrada K, 111', 'O+', 'Nenhum', 82.1),
  ('Larissa', 15, 2, 1994, 29, '23456789012', 12, 'Rua L, 777', 'A-', 'Alergia a poeira', 59.6),
  ('Rafael', 11, 10, 2001, 22, '34567890123', 13, 'Avenida M, 888', 'AB+', 'Nenhum', 73.4),
  ('Fernanda', 30, 4, 1989, 34, '45678901234', 14, 'Rua N, 222', 'B-', 'Nenhum', 66.5);

INSERT INTO Dieta (Meta_Calorica, Quantidade_de_refeicoes, Intervalo_entre_refeicoes, Objetivo, DietaId, CpfUsuario)
VALUES
  (1900.0, 3, '4 horas', 'Perda de Peso', 5, '56789012345'),
  (2600.0, 5, '3 horas', 'Ganho de Massa Muscular', 6, '67890123456'),
  (1750.0, 4, '5 horas', 'Manutencao de Peso', 7, '78901234567'),
  (2300.0, 6, '2 horas', 'Ganho de Peso', 8, '89012345678'),
  (2100.0, 4, '4 horas', 'Perda de Peso', 9, '90123456789'),
  (2400.0, 6, '3 horas', 'Ganho de Massa Muscular', 10, '01234567890'),
  (1800.0, 3, '5 horas', 'Manutencao de Peso', 11, '12345678901'),
  (2500.0, 5, '4 horas', 'Ganho de Peso', 12, '23456789012'),
  (1700.0, 4, '6 horas', 'Manutencao de Peso', 13, '34567890123'),
  (2200.0, 6, '2 horas', 'Ganho de Massa Muscular', 14, '45678901234');

INSERT INTO Registro_Medico (RegistroId, DietaId, CpfUsuario)
VALUES
  (1, 5, '12345678901'),
  (2, 6, '23456789012'),
  (3, 7, '34567890123'),
  (4, 8, '45678901234'),
  (5, 9, '56789012345'),
  (6, 10, '67890123456'),
  (7, 11, '78901234567'),
  (8, 12, '89012345678'),
  (9, 13, '90123456789'),
  (10, 14, '01234567890');


INSERT INTO Exame (Tipo, Dia, Mes, Ano, Nome, ExameId, Finalidade, CpfUsuario)
VALUES
  ('Hemograma', 10, 3, 2023, 'Exame de Sangue', 1, 'Acompanhamento de saude', '12345678901'),
  ('Colesterol', 15, 4, 2023, 'Exame de Sangue', 2, 'Acompanhamento de saude', '23456789012'),
  ('Glicemia', 5, 2, 2023, 'Exame de Sangue', 3, 'Acompanhamento de saude', '34567890123'),
  ('Pressao Arterial', 20, 4, 2023, 'Afericao de Pressao', 4, 'Acompanhamento de saude', '45678901234'),
  ('Hemograma', 8, 3, 2023, 'Exame de Sangue', 5, 'Acompanhamento de saude', '56789012345'),
  ('Colesterol', 22, 4, 2023, 'Exame de Sangue', 6, 'Acompanhamento de saude', '67890123456'),
  ('Glicemia', 12, 2, 2023, 'Exame de Sangue', 7, 'Acompanhamento de saude', '78901234567'),
  ('Pressao Arterial', 25, 4, 2023, 'Afericao de Pressao', 8, 'Acompanhamento de saude', '89012345678'),
  ('Hemograma', 6, 3, 2023, 'Exame de Sangue', 9, 'Acompanhamento de saude', '90123456789'),
  ('Colesterol', 18, 4, 2023, 'Exame de Sangue', 10, 'Acompanhamento de saude', '01234567890');

INSERT INTO Usuario_Parentesco (Parentesco, CpfUsuario)
VALUES
  ('Pai', '12345678901'),
  ('Mae', '23456789012'),
  ('Irmao', '34567890123'),
  ('Avô', '45678901234'),
  ('Avo', '56789012345'),
  ('Tio', '67890123456'),
  ('Primo', '78901234567'),
  ('Irma', '89012345678'),
  ('Cunhado', '90123456789'),
  ('Sobrinho', '01234567890');

INSERT INTO Dieta_Alimentos (Alimentos, DietaId)
VALUES
  ('Frango grelhado', 5),
  ('Arroz integral', 6),
  ('Legumes cozidos', 7),
  ('Peixe assado', 8),
  ('Ovos cozidos', 9),
  ('Batata-doce', 10),
  ('Salada verde', 11),
  ('Carne magra', 12),
  ('Frutas frescas', 13),
  ('Iogurte natural', 14);

INSERT INTO Registro_Medico_Possiveis_Doencas_ (Possiveis_Doencas_, RegistroId)
VALUES
  ('Hipertensao', 1),
  ('Colesterol Alto', 2),
  ('Diabetes', 3),
  ('Hipertensao', 4),
  ('Hipertensao', 5),
  ('Colesterol Alto', 6),
  ('Diabetes', 7),
  ('Hipertensao', 8),
  ('Diabetes', 9),
  ('Colesterol Alto', 10);

INSERT INTO Usuario_Reponsavel (CpfUsuario, RegistroId)
VALUES
  ('12345678901', 1),
  ('23456789012', 2),
  ('34567890123', 3),
  ('45678901234', 4),
  ('56789012345', 5),
  ('67890123456', 6),
  ('78901234567', 7),
  ('89012345678', 8),
  ('90123456789', 9),
  ('01234567890', 10);

INSERT INTO Atividade_Fisica (Tempo, Tipo, Objetivo, AtividadeId, RegistroId, CpfUsuario)
VALUES
  ('30 minutos', 'Caminhada', 'Perda de Peso', 1, 1, '12345678901'),
  ('45 minutos', 'Natacao', 'Ganho de Massa Muscular', 2, 2, '23456789012'),
  ('60 minutos', 'Corrida', 'Melhoria da Saude', 3, 3, '34567890123'),
  ('20 minutos', 'Yoga', 'Reducao de Estresse', 4, 4, '45678901234'),
  ('40 minutos', 'Musculacao', 'Ganho de Massa Muscular', 5, 5, '56789012345'),
  ('30 minutos', 'Danca', 'Diversao e Fitness', 6, 6, '67890123456'),
  ('45 minutos', 'Ciclismo', 'Melhoria da Saude', 7, 7, '78901234567'),
  ('30 minutos', 'Caminhada', 'Melhoria da Saude', 8, 8, '89012345678'),
  ('60 minutos', 'Natacao', 'Ganho de Massa Muscular', 9, 9, '90123456789'),
  ('20 minutos', 'Yoga', 'Reducao de Estresse', 10, 10, '01234567890');
  
 INSERT INTO Medicacao (Nome, Dosagem, Tipo, Intervalo_, MedicacaoId, RegistroId, CpfUsuario)
VALUES
  ('Aspirina', 100, 'Comprimido', '8 horas', 'MED001', 1, '12345678901'),
  ('Vitamina C', 500, 'Comprimido', '24 horas', 'MED002', 2, '23456789012'),
  ('Metformina', 850, 'Comprimido', '12 horas', 'MED003', 3, '34567890123'),
  ('Losartana', 50, 'Comprimido', '24 horas', 'MED004', 4, '45678901234'),
  ('Ibuprofeno', 200, 'Comprimido', '6 horas', 'MED005', 5, '56789012345'),
  ('Multivitaminico', 1, 'Comprimido', '24 horas', 'MED006', 6, '67890123456'),
  ('Atenolol', 25, 'Comprimido', '12 horas', 'MED007', 7, '78901234567'),
  ('Paracetamol', 500, 'Comprimido', '6 horas', 'MED008', 8, '89012345678'),
  ('Insulina', 10, 'Injecao', '8 horas', 'MED009', 9, '90123456789'),
  ('Suplemento de Ômega-3', 1000, 'Capsula', '24 horas', 'MED010', 10, '01234567890');

INSERT INTO Medicacao_Contraindicacao (Contraindicacao, MedicacaoId)
VALUES
  ('Alergia a aspirina', 'MED001'),
  ('Hipersensibilidade a vitamina C', 'MED002'),
  ('Insuficiencia renal', 'MED003'),
  ('Alergia a losartana', 'MED004'),
  ('ulcera peptica', 'MED005'),
  ('Alergia a qualquer componente do suplemento', 'MED006'),
  ('Bradicardia', 'MED007'),
  ('Hepatite', 'MED008'),
  ('Hipoglicemia', 'MED009'),
  ('Alergia a frutos do mar', 'MED010');

INSERT INTO Medicacao_Efeitos_Colaterais_ (Efeitos_Colaterais_, MedicacaoId)
VALUES
  ('Dor de cabeca, nausea', 'MED001'),
  ('Diarreia, caibras estomacais', 'MED002'),
  ('Tontura, nausea', 'MED003'),
  ('Tosse seca, tontura', 'MED004'),
  ('Dor de estômago, azia', 'MED005'),
  ('Nausea, diarreia', 'MED006'),
  ('Fadiga, depressao', 'MED007'),
  ('Dor no figado, ictericia', 'MED008'),
  ('Hipoglicemia, ganho de peso', 'MED009'),
  ('Erupcao cutânea, coceira', 'MED010');