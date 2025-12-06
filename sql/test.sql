SELECT
    o.orderid,
    c.firstname,
    p.product,
    o.sales,
    p.price,
    e.firstname
FROM
    sales.orders AS o
LEFT JOIN
    sales.customers AS c
    ON o.customerid = c.customerid
LEFT JOIN
    sales.products AS p
    ON o.productid = p.productid
LEFT JOIN
    sales.employees AS e
    ON o.salespersonid = e.employeeid;
