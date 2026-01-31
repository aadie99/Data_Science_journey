-- Select length('aditya');
-- SELECT 
--     first_name, last_name, Length(first_name) as length_of_first_name, Length(last_name) as length_of_last_name
-- FROM
--     employee_demographics;
    
-- Select upper('aditya')

-- SELECT 
--     first_name, UPPER(first_name), LOWER(first_name)
-- FROM
--     employee_demographics;
-- SELECT 
--     first_name,
--     UPPER(LEFT(first_name, 4)) AS name,
--     birth_date,
--     SUBSTRING(birth_date, 6, 2) AS month
-- FROM
--     employee_demographics;
-- SELECT 
--     first_name, REPLACE(first_name, 'a', 'z') name
-- FROM
--     employee_demographics;

-- Select locate('d', 'aditya');

Select first_name, last_name, concat(first_name, ' ', last_name) as full_name from employee_demographics