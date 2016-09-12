SELECT p.product_type_id,
IF(COUNT( p.product_type_id ) > 143, 0.7, IF(COUNT( p.product_type_id ) > 87, 0.6, IF(COUNT( p.product_type_id ) > 31, 0.5, 0.3 ))) AS product_count
FROM product p
GROUP BY p.product_type_id
ORDER BY 2 DESC, 1;
