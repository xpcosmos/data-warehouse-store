USE TBS_SOURCE;
TRUNCATE TABLE TB_CATEGORIA;

ALTER TABLE TB_CATEGORIA DROP COLUMN NOME_SUB_CATEGORIA;
ALTER TABLE TB_CATEGORIA ADD COLUMN CATEGORIA_PAI