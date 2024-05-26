-- Cleaning and Transformation of the st_tb_cadastro_cliente table

SELECT * FROM st_tb_cadastro_cliente;

ALTER TABLE st_tb_cadastro_cliente ADD (DATA_REGISTRO DATE);

UPDATE st_tb_cadastro_cliente SET DATA_REGISTRO = CURRENT_DATE;
COMMIT;

UPDATE st_tb_cadastro_cliente SET EMAIL_CLIENTE = 'não informado' where email_cliente is null;
COMMIT;

UPDATE st_tb_cadastro_cliente SET EMAIL_CLIENTE = 'não informado' where substr(email_cliente, 1, 3) = 'xxx';
COMMIT;

--* is_numeric creating func
CREATE FUNCTION is_numeric(p_str VARCHAR(255))
RETURNS INT
DETERMINISTIC
NO SQL
BEGIN
    DECLARE is_num INT;
    
    SET is_num := 1;
    SET p_str := TRIM(p_str);
    
    IF p_str REGEXP '^[0-9]+$' THEN
        SET is_num := 1;
    ELSE
        SET is_num := 0;
    END IF;
    
    RETURN is_num;
END;


--*  Update table st_tb_cadastro_cliente
UPDATE st_tb_cadastro_cliente SET EMAIL_CLIENTE = 'não informado' where is_numeric(email_cliente) = 1;
COMMIT;


--*  Creating new st_dim_cliente table
CREATE TABLE ST_DIM_CLIENTE 
(
  NK_ID_CLIENTE VARCHAR2(20), 
  NM_CLIENTE VARCHAR2(50), 
  NM_CIDADE_CLIENTE VARCHAR2(50), 
  FLAG_ACEITA_CAMPANHA CHAR(1), 
  DESC_CEP VARCHAR2(10)
);


--*  Inserting data from st_tb_cadastro_cliente and st_tb_endereco
INSERT INTO ST_DIM_CLIENTE 
    SELECT A.ID_CLIENTE, A.NOME_CLIENTE, B.CIDADE, 0, B.CEP
        FROM st_tb_cadastro_cliente A, st_tb_endereco B
        WHERE A.ID_CLIENTE = B.ID_CLIENTE;
COMMIT;
SELECT * FROM ST_DIM_CLIENTE;