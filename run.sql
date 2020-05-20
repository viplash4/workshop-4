--TODO: procedure need upgrade, how to call function
SET SERVEROUTPUT ON
-- procedure test
DECLARE
counter int;
BEGIN
test_package.add_major('Bob','Alabama',2015);
test_package.add_major('Boban','Alaska',2017); --not major
test_package.add_major('BobA','California',2015); -- not major

--function test
counter := test_function('Alabama','Autauga');
dbms_output.put_line('func return: ' || counter);
END;
/
DELETE FROM city_info_gdp WHERE city_name = 'Autauga'; -- cause error

