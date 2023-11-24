CREATE TABLE companies (
	name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

INSERT INTO companies (name, address)
VALUES ('Blackbird Auto', '123 Spruce');

INSERT INTO companies (name, address)
VALUES ('Luigi Pies', '123 Spruce');

INSERT INTO companies (name, address)
VALUES ('Luigi Pies', '123 Spruce');

CREATE TABLE houses (
	purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
	CONSTRAINT sprice_greater_pprice CHECK (sale_price >= purchase_price)
);