CREATE TABLE city_info_gdp (
    city_name    VARCHAR2(50) NOT NULL,
    city_state   VARCHAR2(50) NOT NULL,
    stat_year    NUMBER(4) NOT NULL,
    city_gdp     NUMBER(38)
);

ALTER TABLE city_info_gdp
    ADD CONSTRAINT city_info_gdp_pk PRIMARY KEY ( stat_year,
                                              city_name,
                                              city_state );
CREATE TABLE city_info_rating (
    city_name    VARCHAR2(50) NOT NULL,
    city_state   VARCHAR2(50) NOT NULL,
    stat_year    NUMBER(4) NOT NULL,
    city_rating     NUMBER(4)
);

ALTER TABLE city_info_rating
    ADD CONSTRAINT city_info_rating_pk PRIMARY KEY ( stat_year,
                                              city_name,
                                              city_state );
CREATE TABLE city_info_major (
    city_name    VARCHAR2(50) NOT NULL,
    city_state   VARCHAR2(50) NOT NULL,
    stat_year    NUMBER(4) NOT NULL,
    city_major   VARCHAR2(50)
);

ALTER TABLE city_info_major
    ADD CONSTRAINT city_info_major_pk PRIMARY KEY ( stat_year,
                                              city_name,
                                              city_state );
                                              
CREATE TABLE full_city_address (
    city_name          VARCHAR2(50) NOT NULL,
    city_state  VARCHAR2(50) NOT NULL
);

ALTER TABLE full_city_address ADD CONSTRAINT full_city_address_pk PRIMARY KEY ( city_name,
                                                                                city_state );
CREATE TABLE states (
    city_state VARCHAR2(50) NOT NULL
);

ALTER TABLE states ADD CONSTRAINT states_pk PRIMARY KEY ( city_state );

ALTER TABLE full_city_address
    ADD CONSTRAINT full_city_address_states_fk FOREIGN KEY ( city_state )
        REFERENCES states ( city_state );
        
ALTER TABLE city_info_gdp
    ADD CONSTRAINT city_info_gdp_fk FOREIGN KEY ( city_name,city_state )
        REFERENCES full_city_address ( city_name,city_state );
        
ALTER TABLE city_info_rating
    ADD CONSTRAINT city_info_rating_fk FOREIGN KEY ( city_name,city_state )
        REFERENCES full_city_address ( city_name,city_state );
        
ALTER TABLE city_info_major
    ADD CONSTRAINT city_info_major_fk FOREIGN KEY ( city_name,city_state )
        REFERENCES full_city_address ( city_name,city_state );