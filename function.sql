CREATE OR REPLACE FUNCTION test_function(
    state_param states.city_state%TYPE,
    city_param full_city_address.city_name%TYPE
    )RETURN INT
    IS
        counter INT;
    BEGIN
        SELECT COUNT(*)
        INTO counter
        FROM city_data
        WHERE city_name = city_param AND
            city_state = state_param;
        
        RETURN counter;
    
    END;