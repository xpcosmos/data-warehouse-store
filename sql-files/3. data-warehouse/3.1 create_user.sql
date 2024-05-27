CREATE USER 'dw'@'%' IDENTIFIED BY '<password>';

grant select on starea.ST_DIM_CLIENTE to dw;
grant select on starea.ST_DIM_PRODUTO to dw;
