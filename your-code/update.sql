USE car_store;

SELECT 
    *
FROM
    salespersons;

-- Bonus Challenge - Updating and Deleting Database Records.
/* Now you find an error you need to fix in your existing data - in the Salespersons table, you mistakenly spelled *Miami* as *Mimia* for Paige Turner*/

UPDATE salespersons 
SET 
    store = 'Miami'
WHERE
    id_salesperson = 4;

/*Also, you received the email addresses of the three customers:

| Name | Email |
| --- | ---|
| Pablo Picasso | ppicasso@gmail.com |
| Abraham Lincoln | lincoln@us.gov |
| Napoléon Bonaparte | hello@napoleon.me |*/

UPDATE customers 
SET 
    email = CASE
        WHEN id_customer = 0 THEN 'ppicasso@gmail.com'
        WHEN id_customer = 1 THEN 'lincoln@us.gov'
        WHEN id_customer = 2 THEN 'hellonapoleon.me'
    END
WHERE
    id_customer IN (0 , 1, 2);
    
-- To avoid repeating the same query for multiple times, I tried to use the conditional CASE statement.
-- With that I tell SQL to update the table customers in the email field with the given email addresses if the 3 condition are satisfied (WHEN...THEN).
-- Specifying the rows where the operation is perfomerd with WHERE is necessary, otherwise error 1175 will be raised (You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column). 


SELECT * FROM customers;