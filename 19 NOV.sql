create table customer_prod(
customer_id int,
product_key int
)

create table product_list( 
product_key int
)

insert into customer_prod(customer_id, product_key)
values(1,5),
(2,6),
(3,5),
(3,6),
(1,6)

insert into product_list(product_key)
values(5),(6)

SELECT * FROM customer_prod
SELECT * FROM product_list

SELECT customer_id, COUNT(DISTINCT product_key) AS prod_count
FROM customer_prod
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(DISTINCT product_key) FROM product_list);


TRUNCATE TABLE product_list

INSERT INTO product_list(product_key)
VALUES(5),(6)

SELECT * FROM customer_prod
SELECT * FROM product_list


