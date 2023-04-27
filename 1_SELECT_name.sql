-- You can use WHERE name LIKE 'B%' to find the countries that start with "B". The % is a wild-card it can match any characters. Find the country that start with Y

SELECT name FROM world
    WHERE name LIKE 'Y%';

-- Find the countries that end with y

SELECT name FROM world
    WHERE name LIKE '%y';

-- Luxembourg has an x - so does one other country. List them both. Find the countries that contain the letter x

SELECT name FROM world
    WHERE name LIKE '%x%';

-- Find the countries that end with land

SELECT name FROM world
    WHERE name LIKE '%land';

-- Find the countries that start with C and end with ia

SELECT name FROM world
    WHERE name LIKE 'C%ia';

-- Find the country that has oo in the name

SELECT name FROM world
    WHERE name LIKE '%oo%';

-- Find the countries that have three or more a in the name

SELECT name FROM world
    WHERE name LIKE '%a%a%a%';

-- Find the countries that have "t" as the second character.

SELECT name FROM world
    WHERE name LIKE '_t%';

-- Find the countries that have two "o" characters separated by two others.

SELECT name FROM world
    WHERE name LIKE '%o__o%';

-- Find the countries that have exactly four characters.

SELECT name FROM world
    WHERE name LIKE '____';

-- Find the country where the name is the capital city.

SELECT name FROM world
    WHERE name LIKE capital;

-- Find the country where the capital is the country plus "City".

SELECT name FROM world
    WHERE capital LIKE CONCAT(name, ' City');

-- Find the capital and the name where the capital includes the name of the country.

SELECT capital, name FROM world
    WHERE capital LIKE concat('%', name, '%');

-- Find the capital and the name where the capital is an extension of name of the country. You should include Mexico City as it is longer than Mexico. You should not include Luxembourg as the capital is the same as the country.

SELECT capital, name FROM world
    WHERE capital LIKE concat(name, '_%');

-- For Monaco-Ville the name is Monaco and the extension is -Ville.Show the name and the extension where the capital is an extension of name of the country. You can use the SQL function REPLACE.

SELECT name, REPLACE(name, name, '') FROM world
    WHERE capital LIKE concat(name, '_%');