SELECT 'Planets' FROM dual;

UPDATE planet
SET slug = REPLACE(slug, ',', '-')
WHERE slug LIKE '%,%';

UPDATE planet
SET slug = REPLACE(slug, ':', '-')
WHERE slug LIKE '%:%';

UPDATE planet
SET slug = REPLACE(slug, '.', '-')
WHERE slug LIKE '%.%';

UPDATE planet
SET slug = REPLACE(slug, '''', '-')
WHERE slug LIKE '%''%';

UPDATE planet
SET slug = REPLACE(slug, '(', '-')
WHERE slug LIKE '%(%';

UPDATE planet
SET slug = REPLACE(slug, ')', '-')
WHERE slug LIKE '%)%';

UPDATE planet
SET slug = REPLACE(slug, '&', '-')
WHERE slug LIKE '%&%';

UPDATE planet
SET slug = REPLACE(slug, '#', '-')
WHERE slug LIKE '%#%';

UPDATE planet
SET slug = REPLACE(slug, '--', '-')
WHERE slug LIKE '%--%';

UPDATE planet
SET slug = TRIM(TRAILING '-' FROM slug)
WHERE slug like '%-';


SELECT 'Factories' FROM dual;

UPDATE factory
SET slug = REPLACE(slug, ',', '-')
WHERE slug LIKE '%,%';

UPDATE factory
SET slug = REPLACE(slug, ':', '-')
WHERE slug LIKE '%:%';

UPDATE factory
SET slug = REPLACE(slug, '.', '-')
WHERE slug LIKE '%.%';

UPDATE factory
SET slug = REPLACE(slug, '''', '-')
WHERE slug LIKE '%''%';

UPDATE factory
SET slug = REPLACE(slug, '(', '-')
WHERE slug LIKE '%(%';

UPDATE factory
SET slug = REPLACE(slug, ')', '-')
WHERE slug LIKE '%)%';

UPDATE factory
SET slug = REPLACE(slug, '&', '-')
WHERE slug LIKE '%&%';

UPDATE factory
SET slug = REPLACE(slug, '#', '-')
WHERE slug LIKE '%#%';

UPDATE factory
SET slug = REPLACE(slug, '--', '-')
WHERE slug LIKE '%--%';

UPDATE factory
SET slug = TRIM(TRAILING '-' FROM slug)
WHERE slug like '%-';


SELECT 'Novels' FROM dual;

UPDATE novel
SET slug = REPLACE(slug, ',', '-')
WHERE slug LIKE '%,%';

UPDATE novel
SET slug = REPLACE(slug, ':', '-')
WHERE slug LIKE '%:%';

UPDATE novel
SET slug = REPLACE(slug, '.', '-')
WHERE slug LIKE '%.%';

UPDATE novel
SET slug = REPLACE(slug, '''', '-')
WHERE slug LIKE '%''%';

UPDATE novel
SET slug = REPLACE(slug, '(', '-')
WHERE slug LIKE '%(%';

UPDATE novel
SET slug = REPLACE(slug, ')', '-')
WHERE slug LIKE '%)%';

UPDATE novel
SET slug = REPLACE(slug, '&', '-')
WHERE slug LIKE '%&%';

UPDATE novel
SET slug = REPLACE(slug, '#', '-')
WHERE slug LIKE '%#%';

UPDATE novel
SET slug = REPLACE(slug, '--', '-')
WHERE slug LIKE '%--%';

UPDATE novel
SET slug = TRIM(TRAILING '-' FROM slug)
WHERE slug like '%-';


SELECT 'Product Types' FROM dual;

UPDATE product_type
SET slug = REPLACE(slug, ',', '-')
WHERE slug LIKE '%,%';

UPDATE product_type
SET slug = REPLACE(slug, ':', '-')
WHERE slug LIKE '%:%';

UPDATE product_type
SET slug = REPLACE(slug, '.', '-')
WHERE slug LIKE '%.%';

UPDATE product_type
SET slug = REPLACE(slug, '''', '-')
WHERE slug LIKE '%''%';

UPDATE product_type
SET slug = REPLACE(slug, '(', '-')
WHERE slug LIKE '%(%';

UPDATE product_type
SET slug = REPLACE(slug, ')', '-')
WHERE slug LIKE '%)%';

UPDATE product_type
SET slug = REPLACE(slug, '&', '-')
WHERE slug LIKE '%&%';

UPDATE product_type
SET slug = REPLACE(slug, '#', '-')
WHERE slug LIKE '%#%';

UPDATE product_type
SET slug = REPLACE(slug, '--', '-')
WHERE slug LIKE '%--%';

UPDATE product_type
SET slug = TRIM(TRAILING '-' FROM slug)
WHERE slug like '%-';
