-- SELECT 
--     *
-- FROM
--     orders t1
--         INNER JOIN customers t2 
--         ON t1.customernumber = t2.customernumber

SELECT 
    firstname, lastname, customername
FROM
    employees t1
		Left JOIN
    customers t2 ON t1.employeenumber = t2.salesRepEmployeeNumber