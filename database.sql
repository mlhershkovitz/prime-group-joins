-- get customer names with addresses
SELECT * FROM "customers"
JOIN "addresses" ON
"customers"."id"="addresses"."customer_id";


--get orders and line items
SELECT * FROM "line_items"
JOIN "orders" ON "orders"."id"="line_items"."order_id"
JOIN "products" ON "products"."id"="line_items"."product_id";


-- which warehouses have cheetos
SELECT "warehouse"."warehouse"
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'cheetos' ;


-- which warehouses have diet pepsi
SELECT "warehouse"."warehouse"
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'diet pepsi' ;


--number of orders for each customer
SELECT COUNT("orders"."address_id"), "customers"."first_name"
FROM "customers"
JOIN "addresses" ON "customers"."id" = "addresses"."customer_id"
JOIN "orders" ON "addresses"."id" = "orders"."address_id"
GROUP BY "customers"."first_name"

--how many customers
SELECT COUNT("customers")
FROM "customers";

--how many products
SELECT COUNT("products")
FROM "products";

-- total on-hand quantity of diet pepsi
SELECT SUM("warehouse_product"."on_hand")
FROM "warehouse"
JOIN "warehouse_product" ON "warehouse"."id" = "warehouse_product"."warehouse_id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
WHERE "products"."description" = 'diet pepsi';