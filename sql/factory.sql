SELECT
f.factory_id,
f.slug,
IF(COUNT( p.factory_id ) > 34, 0.6, IF(COUNT( p.factory_id ) > 23, 0.5, IF(COUNT( p.factory_id ) > 11, 0.4, 0.2 ))) AS product_count
FROM
factory f,
product p
WHERE
f.factory_id = p.factory_id
GROUP BY p.factory_id
ORDER BY 2 DESC, 1;
