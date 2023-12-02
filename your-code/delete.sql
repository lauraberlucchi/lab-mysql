-- In addition, you also find a duplicated car entry for VIN `DAM41UDN3CHU2WVF6`. 
-- You want to delete car ID #4 from the database. Create **`delete.sql`** to perform the deletion.

USE car_store;

DELETE FROM cars 
WHERE
    id_car = 4;

SELECT 
    *
FROM
    cars;
