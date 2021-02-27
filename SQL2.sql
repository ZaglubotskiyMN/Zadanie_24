--Соединение таблиц
/*SELECT * from city c
JOIN timezone t
ON t.timezone_id = c.timezone_id*/
--Соединения с ограничением
/*SELECT c.city_id,c.name,t.time_offset
FROM city c
JOIN timezone t
ON t.timezone_id= c.timezone_id
WHERE time_offset = 'UTC+3'
ORDER BY name*/
--Соединение с вычислением общей суммывсех продуктов
/*SELECT pp.product_id,pp.store_id,pp.price, pi.count,pi.count*pp.price AS total_price
FROM product_price pp
JOIN purchase_item pi
ON pi.product_id=pp.product_id*/
--Несколько условий соединения
/*SELECT e.first_name, e.last_name,r.rank_id,r.store_id,r.name AS rank_name
FROM employee e
JOIN rank r
ON r.rank_id=e.rank_id
AND r.store_id= e.store_id*/
-- Добавляем категорию без товаров
/*INSERT INTO category VALUES
('5','5','Товары для животных');*/
--LEFT JOIN
/*SElECT c.name AS category_name,p.name AS product_name
FROM category c
LEFT JOIN product p
ON p.category_id=c.category_id
ORDER BY c.name,p.name*/
-- Добавим часовой пояс
/*INSERT INTO timezone
VALUES
('3','UTC+1');*/
--RIGHT JOIN
/*SELECT t.time_offset,c.name AS city_name
FROM city c
RIGHT JOIN timezone t
ON t.timezone_id=c.timezone_id
ORDER BY t.time_offset, c.name*/
--FULL JOIN
/*SELECT DISTINCT pp.product_id AS product_id_price,
pi.product_id AS product_id_purchase
FROM product_price pp
FULL JOIN purchase_item pi
ON pp.product_id=pi.product_id*/
--Подзапросы
SELECT * FROM  product_price pp
WHERE pp.price =(SELECT min(ppm.price) FROM product_price ppm)





