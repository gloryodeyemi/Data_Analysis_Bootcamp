CREATE DATABASE GlowHair;

USE GlowHair;

CREATE TABLE HairProducts
(ProductID int,
ProductName VARCHAR(50),
Price int,
Category VARCHAR(50)
);

ALTER TABLE HairProducts
ADD Brand VARCHAR(50);

INSERT INTO HairProducts VALUES
(1, 'Oh So Clean', 15, 'Shampoo', 'Aunt Jackie'),
(2, 'Knot On My Watch', 12, 'Detangler', 'Aunt Jackie'),
(3, 'Quench', 13, 'Leave in', 'Aunt Jackie'),
(4, 'Spring Twist', 28, 'Extensions', 'Xtrend'),
(5, 'Passion Twist', 59, 'Extensions', 'Leeven'),
(6, 'Faux Locs', 46, 'Extensions', 'Leeven'),
(7, 'In Control', 20, 'Conditioner', 'Aunt Jackie'),
(8, 'Soft All Over', 13, 'Hair Oil', 'Aunt Jackie'),
(9, 'Eco Style Gel', 20, 'Hair Gel', 'Ecoco'),
(10, 'Razor Edge', 7, 'Hair Scissors', 'Utopia Care');

SELECT * FROM HairProducts;

SELECT DISTINCT(Brand) AS BrandCount
FROM HairProducts;

SELECT *
FROM HairProducts
WHERE Price > 10;

SELECT *
FROM HairProducts
WHERE Price < 10;

SELECT *
FROM HairProducts
WHERE Price > 10 AND Price < 15;

SELECT Brand, COUNT(ProductName)
FROM HairProducts
GROUP BY Brand;

SELECT Brand, COUNT(ProductName)
FROM HairProducts
WHERE Price > 15
GROUP BY Brand;


