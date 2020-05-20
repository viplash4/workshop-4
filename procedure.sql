CREATE OR REPLACE PROCEDURE add_major(
    major_name  VARCHAR,
    major_state  VARCHAR,
    major_year   NUMBER
) IS
    state_status NUMBER;
    major_status NUMBER;
    year_status NUMBER;
    no_data EXCEPTION;
    
BEGIN
    SELECT COUNT(*)
    INTO state_status
    FROM city_info_major c1
    WHERE c1.city_state = major_state;
    
    SELECT COUNT(*)
    INTO major_status
    FROM city_info_major c1
    WHERE c1.city_major = major_name;
    
    SELECT COUNT(*)
    INTO year_status
    FROM city_info_major c1
    WHERE c1.stat_year = stat_year;
    
    IF (state_status != 1) AND (major_status != 1) AND (year_status != 1) THEN
        UPDATE  city_info_major
        SET city_major = major_name
        WHERE city_state = major_state AND stat_year = major_year;
    ELSE
        RAISE no_data;
    END IF;
    EXCEPTION
        WHEN no_data THEN
            dbms_output.put_line('No major in db');
    

END;

