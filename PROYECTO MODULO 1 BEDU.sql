/*Consulta 1 ¿CUANTAS RESERVAS FUERON REALIZADAS EN 2015?*/
SELECT count(*) 
FROM hotelbookings2;

/*Consulta 2 ¿CUANTAS RESERVAS FUERON CANCELADAS? */
SELECT count(*) 
FROM hotelbookings2 
WHERE is_canceled=1;

/*Consulta 3 ¿CUANTAS DE ESAS RESERVAS FUERON CONFIRMADAS? */
SELECT count(*) 
FROM hotelbookings2 
WHERE is_canceled=0;

/*Consulta 4 ¿CUANTAS RESERVAS EFECTIVAS INCLUYERON NIÑOS? */
SELECT count(*) 
FROM hotelbookings2 
WHERE (is_canceled=0) AND(children AND babies >0);


/*Consulta 5 ¿CUAL FUE LA TARIFA PROMEDIO POR NOCHE? ¿CUAL FUE LA TARIFA MINIMA Y CUAL LA MAXIMA?*/
SELECT avg(adr)
FROM hotelbookings2 
WHERE (adr>0);

SELECT min(adr) AS SmallestPrice FROM hotelbookings2;
SELECT max(adr) AS BiggestPrice FROM hotelbookings2;

/*Consulta 6 ¿DE QUE PAIS PROVIENEN LOS CLIENTES?, ¿CUÁL ES EL MÁS FRECUENTE?*/
SELECT country, COUNT(country) AS frequency
FROM hotelbookings2
GROUP BY country;

/*Consulta 7 ¿EL HOTEL RECIBIO CLIENTES TODO EL AÑO O SOLO EN UNA TEMPORADA? */
SELECT arrival_date_month
FROM hotelbookings2 
GROUP BY arrival_date_month;

/*Consulta 8 ¿EN QUE MES RECIBIO MAS CLIENTES? */
SELECT arrival_date_month, COUNT(*) AS frequency
FROM hotelbookings2
GROUP BY arrival_date_month;

/*Consulta 9 ¿CUAL ES LA ESTANCIA PROMEDIO ENTRE SEMANA? */
SELECT AVG(stays_in_week_nights)
 FROM hotelbookings2 
WHERE (stays_in_week_nights>0);

/*Consulta 10 ¿CUAL ES LA ESTANCIA PROMEDIO EN FIN DE SEMANA?*/
SELECT AVG(stays_in_weekend_nights) 
FROM hotelbookings2 
WHERE (stays_in_weekend_nights>0);

/* EJERCICIO DE JOIN. TABLAS ELABORADAS POR MI CON NUMEROS ALEATORIOS */
SELECT Laundry_charges,Restaurant_bills
FROM laundry_services
INNER JOIN restaurant_charges ON laundry_services.Guest = restaurant_charges.Guest;

