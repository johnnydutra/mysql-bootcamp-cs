ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);

ALTER TABLE companies
ADD COLUMN company_name VARCHAR(255);

ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;

ALTER TABLE companies
DROP COLUMN phone;

RENAME TABLE companies TO suppliers;

SELECT * FROM companies;
SELECT * FROM suppliers;

ALTER TABLE suppliers
RENAME TO companies;

ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';