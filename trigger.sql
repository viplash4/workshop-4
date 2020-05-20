CREATE OR REPLACE TRIGGER my_trigg
    BEFORE DELETE ON city_info_gdp
    FOR EACH ROW
DECLARE
city_check NUMBER;
BEGIN
SELECT count(*) INTO city_check FROM city_info_rating WHERE city_name = :old.city_name;
    IF (city_check > 0) THEN
        RAISE_APPLICATION_ERROR(-20001,'You cant delete');
    END IF;
END;




