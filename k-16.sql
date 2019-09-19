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
WHERE price BETWEEN 80 AND 150

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

--160301
SELECT * FROM places
LEFT JOIN types
ON places.type = types.id

--160302
SELECT places.id, places.title, places.price, types.name AS type FROM places
LEFT JOIN types
ON places.type = types.id

--160303
SELECT places.id, places.title, places.price, types.name AS type,
	users.name AS host,users.email FROM places
LEFT JOIN types
ON places.type = types.id
LEFT JOIN users
ON places.host = users.id
WHERE places.id < 6

--160304
SELECT users.name, users.email, places.title, places.rating FROM users
LEFT JOIN places
ON users.id = places.host

--160305
SELECT users.name, users.email, places.title, places.rating FROM users
INNER JOIN places
ON users.id = places.host
ORDER BY places.id

--160306
SELECT places.title, users.name AS fan FROM places
LEFT JOIN likes
ON places.id = likes.place
LEFT JOIN users
ON likes.user = users.id
ORDER BY places.title

--160307
SELECT places.title, users.name AS fan FROM places
INNER JOIN likes
ON places.id = likes.place
INNER JOIN users
ON likes.user = users.id
ORDER BY users.name, places.type

--160308
SELECT users.name AS fan, places.title AS place, types.name as type FROM places
INNER JOIN likes
ON places.id = likes.place
INNER JOIN users
ON likes.user = users.id
INNER JOIN types
ON types.id = places.type
ORDER BY users.name, places.type
