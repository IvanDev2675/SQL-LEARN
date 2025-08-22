SELECT product_id, SUM(quantity) AS total_sales
FROM sales
GROUP BY product_id
HAVING SUM(quantity) > 100;
/*GROUP BY product_id: Agrupa los datos por product_id, es decir, cada fila representará un producto.
SUM(quantity): Suma la cantidad vendida de cada producto.
HAVING SUM(quantity) > 100: Filtra los grupos de productos para que solo muestre aquellos cuyo total de ventas (cantidad vendida) sea mayor a 100.*/