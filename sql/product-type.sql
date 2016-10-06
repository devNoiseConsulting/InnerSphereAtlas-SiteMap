SELECT
p.product_type_id,
pt.slug,
IF(COUNT( p.product_type_id ) > 143, 0.7, IF(COUNT( p.product_type_id ) > 87, 0.6, IF(COUNT( p.product_type_id ) > 31, 0.5, 0.3 ))) AS product_count
FROM
product p,
product_type pt
WHERE
p.product_type_id=pt.product_type_id
GROUP BY p.product_type_id
ORDER BY 3 DESC, 1;
