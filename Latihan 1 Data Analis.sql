SELECT
  order_id,
  status,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
LIMIT 10;

SELECT *
FROM `bigquery-public-data.thelook_ecommerce.users`
LIMIT 10;

SELECT
  id,
  gender,
  country,
  created_at
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 25;


SELECT id, cost, category
FROM bigquery-public-data. thelook_ecommerce.products;

SELECT
  order_id,
  status,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
LIMIT 10;

SELECT order_id, status, created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status = 'Complete'
LIMIT 10;

SELECT order_id, num_of_item, status
FROM `bigquery-public-data.thelook_ecommerce.orders`
ORDER BY num_of_item DESC
LIMIT 10;

SELECT order_id, num_of_item, status
FROM `bigquery-public-data.thelook_ecommerce.orders`
ORDER BY num_of_item ASC
LIMIT 10;

SELECT order_id, num_of_item, status,created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
ORDER BY created_at DESC
LIMIT 10;

SELECT DISTINCT country
FROM `bigquery-public-data.thelook_ecommerce.users`
LIMIT 10;

SELECT
country,
COUNT(*) jumlah_user
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY country;


SELECT
  order_id,
  status,
  num_of_item,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE num_of_item > 1
ORDER BY num_of_item
LIMIT 20;

SELECT
  order_id,
  status,
  num_of_item,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE num_of_item > 1 OR status = 'Complete'
ORDER BY num_of_item ASC
LIMIT 20;

SELECT
  order_id,
  status,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
LIMIT 10;


SELECT
  order_id,
  status,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status = 'Complete'
LIMIT 10;

SELECT
  order_id,
  status,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status = 'Complete'
ORDER BY created_at DESC
LIMIT 10;

SELECT DISTINCT
  status
FROM `bigquery-public-data.thelook_ecommerce.orders`;


SELECT
  order_id,
  user_id,
  status,
  num_of_item,
  created_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE num_of_item > 1
ORDER BY num_of_item DESC
LIMIT 15;


SELECT order_id, user_id, status, num_of_item, created_at 
FROM `bigquery-public-data.thelook_ecommerce.orders` 
WHERE num_of_item > 1 AND status = 'Shipped'
ORDER BY num_of_item DESC 
LIMIT 15;


SELECT order_id, created_at 
FROM `bigquery-public-data.thelook_ecommerce.orders` 
WHERE status = 'Shipped';

SELECT
  COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`;

SELECT order_id, shipped_at
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE shipped_at IS NULL;

SELECT COUNT(shipped_at)
FROM bigquery-public-data. thelook_ecommerce.orders;

SELECT COUNT(*) AS total_orders
FROM bigquery-public-data. thelook_ecommerce. orders;

SELECT SUM(num_of_item) AS total_items
FROM `bigquery-public-data.thelook_ecommerce.orders`;


SELECT 
  SUM(num_of_item) AS total_item,
  AVG(num_of_item) AS avg_items_per_order
FROM `bigquery-public-data.thelook_ecommerce.orders`;


SELECT
  MIN(num_of_item) AS min_items,
  MAX(num_of_item) AS max_items
FROM `bigquery-public-data.thelook_ecommerce.orders`;

SELECT
  COUNT(*) AS total_orders,
  SUM(num_of_item) AS total_items,
  AVG(num_of_item) AS avg_items,
  MIN(num_of_item) AS min_items,
  MAX(num_of_item) AS max_items
FROM `bigquery-public-data.thelook_ecommerce.orders`;


SELECT
  status,
  COUNT(status) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;

SELECT
status,
COUNT(status) AS total_orders,
COUNT(*) AS total_order_bintang
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;

SELECT order_id, status
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status IS NULL;


SELECT
status,
gender,
COUNT (status) AS total_orders,
AVG(num_of_item) AS rata_rata_item_per_order,
SUM(num_of_item) AS jumlah_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status = 'Completed' OR status = 'Shipped'
GROUP BY 1, 2
ORDER BY total_orders DESC;


SELECT
status,
gender,
COUNT (status) AS total_orders,
AVG(num_of_item) AS rata_rata_item_per_order,
SUM(num_of_item) AS jumlah_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status IN ('Complete','Shipped')
GROUP BY 1, 2
ORDER BY total_orders DESC;


SELECT
  status,
  gender,
  COUNT(status) AS total_orders,
  AVG(num_of_item) AS rata_rata_item_per_order,
  SUM(num_of_item) AS jumlah_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status IN (
  SELECT DISTINCT status
  FROM `bigquery-public-data.thelook_ecommerce.orders`
  where gender = 'F'
)
GROUP BY 1, 2
ORDER BY total_orders DESC;


SELECT
  status,
  gender,
  COUNT(status) AS total_orders,
  AVG(num_of_item) AS rata_rata_item_per_order,
  SUM(num_of_item) AS jumlah_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE gender = 'F'
GROUP BY 1, 2;


SELECT 
  status, 
  COUNT(order_id) AS jumlah_order
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY jumlah_order DESC;

SELECT 
  status, 
  COUNT(order_id) AS jumlah_order,
  AVG(num_of_item) AS rata_rata_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY jumlah_order DESC;


SELECT 
  status, 
  COUNT(order_id) AS jumlah_order,
  AVG(num_of_item) AS rata_rata_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY jumlah_order DESC;

SELECT
  status,
  COUNT(*) AS total_orders,
  AVG(num_of_item) AS avg_items
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_orders DESC;


SELECT
  status,
  COUNT(*) AS jumlah_order
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY 1
HAVING COUNT(*) > 20000
ORDER BY 2 DESC;

SELECT
  status, # non-agregat
  -- gender,
  COUNT(*) AS jumlah_order, # agregat
  SUM(num_of_item) AS jumlah_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY 1
HAVING SUM(num_of_item) > 20000 AND COUNT(*) > 20000
ORDER BY 2 DESC;

SELECT
  status, # non-agregat
  -- gender,
  COUNT(*) AS jumlah_order, # agregat
  SUM(num_of_item) AS jumlah_item
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE created_at BETWEEN '2024-01-01' AND '2025-01-01'
GROUP BY 1
HAVING SUM(num_of_item) > 5000 AND COUNT(*) > 2000
ORDER BY 2 DESC;

SELECT
  p.name AS product_name,
  COUNT(*) AS item_rows
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
GROUP BY p.name
ORDER BY item_rows DESC
LIMIT 10;

SELECT
  product_id,
  COUNT(*) AS item_rows
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY 1
ORDER BY item_rows DESC
LIMIT 10;

SELECT 
  country, 
  COUNT(*) AS jumlah_user
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY 1
ORDER BY 2 DESC;

SELECT
  status,
  COUNT(*) AS total_items,
  COUNT(DISTINCT order_id) AS total_orders,
  ROUND(SUM(sale_price), 2) AS total_sales,
  ROUND(AVG(sale_price), 2) AS avg_sale_price
FROM `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY 1
ORDER BY 2 DESC;

SELECT COUNT(DISTINCT user_id) jumlah_user
FROM bigquery-public-data. thelook_ecommerce.orders;


SELECT SUM(sale_price) AS total_item_sales
FROM `bigquery-public-data.thelook_ecommerce.order_items`;

SELECT
  p.category,
  SUM(oi.sale_price) AS total_item_sales
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
GROUP BY p.category
ORDER BY total_item_sales DESC;

SELECT
  country,
  COUNT(*) AS total_users
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;

SELECT
  status,
  COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY 1
ORDER BY 2 DESC;

