SELECT p.factory_id,
IF(COUNT( p.factory_id ) > 34, 0.6, IF(COUNT( p.factory_id ) > 23, 0.5, IF(COUNT( p.factory_id ) > 11, 0.4, 0.2 ))) AS product_count
FROM product p
GROUP BY p.factory_id
ORDER BY 2 DESC, 1;
