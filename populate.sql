
INSERT INTO States(city_state) VALUES ('Alabama');
INSERT INTO States(city_state) VALUES ('Alaska');
INSERT INTO States(city_state) VALUES ('Arkansas');

INSERT INTO full_city_address(city_name, city_state) VALUES ('Autauga','Alabama');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Bethel Census Area','Alaska');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Baldwin','Arkansas');

INSERT INTO city_info_gdp(city_name, city_state, stat_year, city_gdp) VALUES('Autauga','Alabama',2015,10121);
INSERT INTO city_info_gdp(city_name, city_state, stat_year, city_gdp) VALUES('Bethel Census Area','Alaska',2016,20000);
INSERT INTO city_info_gdp(city_name, city_state, stat_year, city_gdp) VALUES('Baldwin','Arkansas',2015,8100);

INSERT INTO city_info_major(city_name, city_state, stat_year, city_major) VALUES('Autauga','Alabama',2015,'Bob');
INSERT INTO city_info_major(city_name, city_state, stat_year, city_major) VALUES('Bethel Census Area','Alaska',2016,'Boban');
INSERT INTO city_info_major(city_name, city_state, stat_year, city_major) VALUES('Baldwin','Arkansas',2015,'Boboksandr');

INSERT INTO city_info_rating(city_name, city_state, stat_year, city_rating) VALUES('Autauga','Alabama',2015,10);
INSERT INTO city_info_rating(city_name, city_state, stat_year, city_rating) VALUES('Bethel Census Area','Alaska',2016,2);
INSERT INTO city_info_rating(city_name, city_state, stat_year, city_rating) VALUES('Baldwin','Arkansas',2015,3);


