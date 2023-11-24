CREATE TABLE partiers (
	name VARCHAR(50),
    age INT CHECK (age > 18)
);

CREATE TABLE palindromes (
	word VARCHAR(100) CHECK (Reverse(word) = word)
);