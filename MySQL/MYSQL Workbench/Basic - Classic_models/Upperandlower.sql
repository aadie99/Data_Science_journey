-- SELECT 
--     *
-- FROM
--     employees
-- WHERE
--     UPPER(firstName) = 'LESLIE'

SELECT 
    *,
    UPPER(firstname) AS uppercasename,
    LOWER(firstname) AS lowercasename
FROM
    employees