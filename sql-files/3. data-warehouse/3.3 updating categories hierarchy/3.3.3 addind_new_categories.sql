USE TBS_SOURCE;
SELECT * FROM `TB_CATEGORIA`;

INSERT INTO `TB_CATEGORIA` (`ID_CATEGORIA`, `NOME_CATEGORIA`, `ID_CATEGORIA_PAI`)
    VALUES('87654', 'Notebook', NULL),
    ('87660', 'Pessoal', '87654'),
    ('87661', 'Business', '87654'),
    ('87656', 'Camera', NULL),
    ('87662', 'Longa Distância', '87656'),
    ('87663', 'Semi Profissional', '87656'),
    ('87658', 'Smartphone', NULL),
    ('87664', '8 GB Memória', '87658'),
    ('87665', '4 GB Memória', '87658');


ALTER TABLE TB_CATEGORIA ENABLE KEYS;
SET FOREIGN_KEY_CHECKS = 1;






