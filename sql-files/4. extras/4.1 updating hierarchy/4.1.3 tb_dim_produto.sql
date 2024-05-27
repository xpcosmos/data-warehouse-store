SET FOREIGN_KEY_CHECKS=0;

USE dw;
TRUNCATE TB_DIM_PRODUTO;

--* MODIFING TABLE SCHEMA
ALTER TABLE `TB_DIM_PRODUTO` 
    ADD COLUMN NK_CATEGORIA_PRODUTO INTEGER NOT NULL AFTER `NM_PRODUTO`;
ALTER TABLE `TB_DIM_PRODUTO` 
    ADD COLUMN NK_CATEGORIA_PAI INTEGER AFTER `NM_CATEGORIA_PRODUTO`;
ALTER TABLE `TB_DIM_PRODUTO` 
    ADD COLUMN NM_CATEGORIA_PAI VARCHAR(30) AFTER NK_CATEGORIA_PAI;

--* ADDING_DATA
INSERT INTO TB_DIM_PRODUTO(
        NK_ID_PRODUTO, DESC_SKU, NM_PRODUTO, NK_CATEGORIA_PRODUTO, 
        NM_CATEGORIA_PRODUTO, NK_CATEGORIA_PAI, NM_CATEGORIA_PAI, 
        NM_MARCA_PRODUTO
        )
    SELECT NK_ID_PRODUTO, DESC_SKU, NM_PRODUTO, NK_CATEGORIA_PRODUTO, 
        NM_CATEGORIA_PRODUTO, NK_CATEGORIA_PAI, NM_CATEGORIA_PAI, 
        NM_MARCA_PRODUTO
FROM starea.ST_DIM_PRODUTO;
COMMIT;

--* COMMITING CHANGES TO FACT_TABLE
INSERT INTO TB_FATO_VENDA
SELECT coalesce(B.SK_CLIENTE, -1) as SK_CLIENTE, 
    coalesce(C.SK_PRODUTO, -1) as SK_PRODUTO, 
    coalesce(D.SK_LOCALIDADE, -1) as SK_LOCALIDADE,
    CAST(DATE_FORMAT(DATA_VENDA, '%Y%m%d') AS UNSIGNED) AS SK_DATA,
    (A.PRECO_UNITARIO * A.QUANTIDADE) as VL_VENDA,
    A.QUANTIDADE as QTD_VENDA,
    CURRENT_DATE
FROM starea.ST_VENDA A LEFT JOIN TB_DIM_CLIENTE B 
    ON A.ID_CLIENTE = B.NK_ID_CLIENTE
    LEFT JOIN TB_DIM_PRODUTO C 
    ON A.ID_PRODUTO = C.NK_ID_PRODUTO
    LEFT JOIN TB_DIM_LOCALIDADE D
    ON A.ID_LOCALIDADE = D.NK_ID_LOCALIDADE;
COMMIT;

SET FOREIGN_KEY_CHECKS=1;