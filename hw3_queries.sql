USE `goit-rdb-hw-03`;

-- 1.1 Вибрати всі стовпчики з таблиці products
SELECT *
FROM products;

-- 1.2 Вибрати тільки стовпчики name, phone з таблиці shippers
SELECT name, phone
FROM shippers;

-- 2. Знайти середнє, максимальне та мінімальне значення стовпчика price таблиці products
SELECT
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products;

-- 3. Обрати унікальні значення колонок category_id та price таблиці products,
-- відсортувати за спаданням price та обмежити результат 10 рядками
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;

-- 4. Знайти кількість продуктів, які знаходяться в цінових межах від 20 до 100
SELECT COUNT(*) AS products_count
FROM products
WHERE price BETWEEN 20 AND 100;

-- 5. Знайти кількість продуктів та середню ціну у кожного постачальника
SELECT
    supplier_id,
    COUNT(*) AS products_count,
    AVG(price) AS avg_price
FROM products
GROUP BY supplier_id;