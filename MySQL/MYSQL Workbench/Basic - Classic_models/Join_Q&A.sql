-- SELECT 
--     contactfirstname, contactlastname, orderdate, status
-- FROM
--     customers t1
--          JOIN
--     orders t2 ON t1.customernumber = t2.customerNumber

SELECT 
    contactfirstname, contactlastname, orderdate, ordernumber
FROM
    customers t1
        LEFT JOIN
    orders t2 ON t1.customernumber = t2.customernumber
    where orderdate is null