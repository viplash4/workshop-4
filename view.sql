CREATE OR REPLACE VIEW city_data AS
    SELECT c1.city_name,c1.city_state,c1.stat_year,c2.city_rating,c3.city_major
    FROM city_info_gdp c1
    JOIN city_info_rating c2 ON c1.city_name = c2.city_name AND
                                c1.city_state = c2.city_state AND
                                c1.stat_year = c2.stat_year
    JOIN city_info_major c3 ON  c1.city_name = c3.city_name AND
                                c1.city_state = c3.city_state AND
                                c1.stat_year = c3.stat_year
                                
    
    ;
    
