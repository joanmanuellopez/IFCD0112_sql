USE Estanterias;
select * from TiposArticulos;
select * from Espacios;
select 
TA_NOM as tip, 
AR_NOM as art, 
AR_VAL as val, 
ES_Est as Est,  
ES_alt as fil,
ES_lar as Col
FROM Articulos 
inner join TiposArticulos
on ta_PK = AR_Tar_FK
inner join Espacios
on ES_PK = AR_esp_FK
WHERE ES_EST = 1 AND ES_alt = 1 AND ES_Lar = 1;





select SUM(AR_VAL) as valorTotalAlmacen
FROM Articulos;

select 
ES_Est as Est,
SUM(AR_VAL) as valor 
FROM Articulos 
inner join TiposArticulos
on ta_PK = AR_Tar_FK
inner join Espacios
on ES_PK = AR_esp_FK
GROUP BY ES_Est


CREATE VIEW Almacen_overview AS
select 
ES_est as Est,
ES_alt as Fil,
ES_lar as Col,
SUM(AR_VAL) as valor 
FROM Articulos 
inner join TiposArticulos
on ta_PK = AR_Tar_FK
RIGHT OUTER join Espacios
on ES_PK = AR_esp_FK
GROUP BY ES_est, ES_alt, ES_lar

select top 1 * from Almacen_overview WHERE VALOR IS NULL;