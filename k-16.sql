--160101
INSERT INTO types ( id, name)
VALUES (1, 'Entire Villa' )

--160102
INSERT INTO users ( id, name, email )
VALUES (1, 'John Smith', 'john@email.com' )

--160103
INSERT INTO places ( id, title, price, rating, city, type, host )
VALUES (5, 'Stylish room in city center', 50, 3, 'Bangkok', 3, 2 )

--160104
INSERT INTO likes ( id, user, place )
VALUES (8, 3, 4)

--160201
SELECT * FROM places

--160202
SELECT id, title, price FROM places

--160203
SELECT * FROM places
WHERE type = 1

--160204
SELECT * FROM places
WHERE city = 'Samui'

--160205
SELECT * FROM places
WHERE price >= 80 AND price <=150

--160206
SELECT id, title, price FROM places
ORDER BY price

--160207
SELECT * FROM places
WHERE title LIKE '%AMAZING%'

--160208
SELECT id, title AS NAME, price AS AMOUNT, rating FROM places
WHERE rating = 5 OR rating = 3

--160209
SELECT * FROM users
WHERE email LIKE '%gmail.com'
