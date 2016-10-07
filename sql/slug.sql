SELECT 'Planets' FROM dual;

UPDATE planet P1, planet P2
SET P1.slug = CONCAT_WS('/', P2.planet_id, REPLACE(LOWER(TRIM(P2.name)), ' ', '-'))
WHERE P2.planet_id = P1.planet_id;


SELECT 'Factories' FROM dual;

UPDATE factory F1, factory F2
SET F1.slug = CONCAT_WS('/', F2.factory_id, REPLACE(LOWER(TRIM(F2.name)), ' ', '-'))
WHERE F2.factory_id = F1.factory_id;


SELECT 'Novels' FROM dual;

UPDATE novel F1, novel F2
SET F1.slug = CONCAT_WS('/', F2.novel_id, REPLACE(LOWER(TRIM(F2.title)), ' ', '-'))
WHERE F2.novel_id = F1.novel_id;


SELECT 'Product Types' FROM dual;

UPDATE product_type P1, product_type P2
SET P1.slug = CONCAT_WS('/', P2.product_type_id, REPLACE(LOWER(CONCAT_WS('-', TRIM(P2.component_type), TRIM(P2.product_type))), ' ', '-'))
WHERE P2.product_type_id = P1.product_type_id;
