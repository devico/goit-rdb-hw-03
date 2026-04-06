# Домашнє завдання до теми 3
## Завантаження даних та основи SQL. DQL команди

У цьому завданні виконано SQL-запити для отримання необхідних даних з таблиць бази.

## Виконані запити

### p1_1 — Вибір усіх стовпчиків з таблиці products
```sql
SELECT * FROM products;
```

### p1_2 — Вибір стовпчиків name та phone з таблиці shippers
```sql
SELECT name, phone FROM shippers;
```

### p2 — Середнє, максимальне та мінімальне значення price
```sql
SELECT
    AVG(price) AS avg_price,
    MAX(price) AS max_price,
    MIN(price) AS min_price
FROM products;
```

### p3 — Унікальні category_id та price, сортування за спаданням, 10 рядків
```sql
SELECT DISTINCT category_id, price
FROM products
ORDER BY price DESC
LIMIT 10;
```

### p4 — Кількість продуктів у діапазоні ціни 20–100
```sql
SELECT COUNT(*) AS products_count
FROM products
WHERE price BETWEEN 20 AND 100;
```

### p5 — Кількість продуктів та середня ціна по постачальниках
```sql
SELECT
    supplier_id,
    COUNT(*) AS products_count,
    AVG(price) AS avg_price
FROM products
GROUP BY supplier_id;
```

## Структура репозиторію

- hw3_queries.sql — SQL-запити
- screenshots/ — скриншоти виконання