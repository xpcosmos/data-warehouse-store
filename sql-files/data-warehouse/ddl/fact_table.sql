CREATE TABLE TB_FATO_VENDA 
(
  SK_CLIENTE INTEGER NOT NULL, 
  SK_PRODUTO INTEGER NOT NULL, 
  SK_LOCALIDADE INTEGER NOT NULL, 
  SK_DATA INTEGER NOT NULL, 
  VL_VENDA DECIMAL(12,4), 
  QTD_VENDA INTEGER, 
  DATA_CARGA DATE,
  CONSTRAINT TB_FATO_VENDA_PK PRIMARY KEY (SK_CLIENTE, SK_PRODUTO, SK_LOCALIDADE, SK_DATA) 
)