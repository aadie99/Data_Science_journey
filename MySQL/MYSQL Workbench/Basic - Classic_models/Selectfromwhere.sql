-- SELECT 
--     *
-- FROM
--     classicmodels.customers
-- WHERE
--     contactLastName <> 'Young'

SELECT 
    contactfirstname,
    contactlastname,
    customername,
    phone,
    city,
    country
FROM
    customers
WHERE
    contactfirstname = 'Julie'
        AND country = 'USA'