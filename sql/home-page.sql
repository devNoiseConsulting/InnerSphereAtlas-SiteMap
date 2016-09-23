SELECT 'Planets' FROM dual;

SELECT
planet_id,
name,
slug
FROM planet
WHERE planet_id IN (2075223, 2334257, 2737000, 2873870, 3363837,
4252832, 4377378, 4627270, 5667826, 5884436, 6390282, 7426000, 7652747,
7800483, 8377200, 8427523, 8456668, 8992767)
ORDER BY name;

SELECT 'Factories' FROM dual;

SELECT
factory_id,
name,
slug
FROM factory
WHERE factory_id IN (2243762, 2534704, 2554263, 2373706, 3334263,
3278498, 4363725, 5737759, 7827270, 8364603)
ORDER BY name;

SELECT 'Product Types' FROM dual;

SELECT
product_type_id,
concat(component_type, ' (', product_type, ')') AS name,
slug
FROM product_type
WHERE product_type_id IN ( 13000, 20000, 21000, 22000, 23000, 51000,
62000, 32000 )
ORDER BY name;
