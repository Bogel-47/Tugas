CREATE TABLE classes (
    class_id      NUMBER(4) NOT NULL,
    class_name    VARCHAR2(20 BYTE) NOT NULL,
    sallary_base  NUMBER(10) NOT NULL
);

ALTER TABLE classes ADD CONSTRAINT classes_pk PRIMARY KEY ( class_id );

CREATE TABLE countries (
    id             NUMBER(4) NOT NULL,
    name           VARCHAR2(20 BYTE) NOT NULL,
    symbol         VARCHAR2(20 BYTE) NOT NULL,
    currency_name  VARCHAR2(20 BYTE) NOT NULL,
    region_id      NUMBER(10) NOT NULL
);

ALTER TABLE countries ADD CONSTRAINT countries_pk PRIMARY KEY ( id );

CREATE TABLE departement (
    departement_id      NUMBER(4) NOT NULL,
    departement_name    VARCHAR2(20 BYTE) NOT NULL,
    sallary_multiplier  NUMBER(10) NOT NULL,
    location_id         NUMBER(10) NOT NULL
);

ALTER TABLE departement ADD CONSTRAINT departement_pk PRIMARY KEY ( departement_id );

CREATE TABLE employee (
    employee_id                 NUMBER(4) NOT NULL,
    employee_name               VARCHAR2(20 BYTE) NOT NULL,
    departement_departement_id  NUMBER(4) NOT NULL,
    employee_email              VARCHAR2(50 BYTE) NOT NULL,
    phone_number                NUMBER(15),
    hire_date                   DATE,
    machines_id                 NUMBER(10),
    jobs_id                     NUMBER(10) NOT NULL,
    employee_employee_id        NUMBER(4) NOT NULL
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( employee_id );

CREATE TABLE full_timer (
    employee_id       NUMBER(4) NOT NULL,
    salary            NUMBER(20),
    classes_class_id  NUMBER(4) NOT NULL
);

ALTER TABLE full_timer ADD CONSTRAINT part_timer_pk PRIMARY KEY ( employee_id );

CREATE TABLE job_history (
    id                           NUMBER(10) NOT NULL,
    duration                     NUMBER(10) NOT NULL,
    departement_departement_id   NUMBER(4) NOT NULL,
    jobs_id                      NUMBER(10) NOT NULL,
    departement_departement_id2  NUMBER(4) NOT NULL
);

CREATE UNIQUE INDEX job_history__idx ON
    job_history (
        departement_departement_id
    ASC );

CREATE UNIQUE INDEX job_history__idxv1 ON
    job_history (
        jobs_id
    ASC );

CREATE UNIQUE INDEX job_history__idxv2 ON
    job_history (
        departement_departement_id2
    ASC );

ALTER TABLE job_history ADD CONSTRAINT job_history_pk PRIMARY KEY ( id );

CREATE TABLE jobs (
    id          NUMBER(10) NOT NULL,
    title       VARCHAR2(20 BYTE) NOT NULL,
    min_salary  VARCHAR2(100000 BYTE) NOT NULL,
    max_salary  VARCHAR2(10000 BYTE) NOT NULL
);

ALTER TABLE jobs ADD CONSTRAINT jobs_pk PRIMARY KEY ( id );

CREATE TABLE location (
    id            NUMBER(10) NOT NULL,
    street_name   VARCHAR2(100 BYTE) NOT NULL,
    postal_code   NUMBER(10) NOT NULL,
    city          VARCHAR2(20 BYTE) NOT NULL,
    province      VARCHAR2(20 BYTE) NOT NULL,
    countries_id  NUMBER(4) NOT NULL
);

ALTER TABLE location ADD CONSTRAINT location_pk PRIMARY KEY ( id );

CREATE TABLE logs (
    id           NUMBER(20) NOT NULL,
    write_date   DATE NOT NULL,
    description  VARCHAR2(100 BYTE) NOT NULL,
    machines_id  NUMBER(10) NOT NULL
);

ALTER TABLE logs ADD CONSTRAINT logs_pk PRIMARY KEY ( id );

CREATE TABLE machines (
    id       NUMBER(10) NOT NULL,
    name     VARCHAR2(20 BYTE) NOT NULL,
    jobs_id  NUMBER(10) NOT NULL
);

ALTER TABLE machines ADD CONSTRAINT machines_pk PRIMARY KEY ( id );

CREATE TABLE part_timer (
    employee_id1  NUMBER(4) NOT NULL,
    work_hour     NUMBER(24) NOT NULL,
    quals_id      NUMBER(20) NOT NULL
);

ALTER TABLE part_timer ADD CONSTRAINT part_timer_pkv1 PRIMARY KEY ( employee_id1 );

CREATE TABLE quals (
    id           NUMBER(20) NOT NULL,
    name         VARCHAR2(20 BYTE) NOT NULL,
    salary_rate  NUMBER NOT NULL
);

ALTER TABLE quals ADD CONSTRAINT quals_pk PRIMARY KEY ( id );

CREATE TABLE region (
    id    NUMBER(10) NOT NULL,
    name  VARCHAR2(20 BYTE) NOT NULL
);

ALTER TABLE region ADD CONSTRAINT region_pk PRIMARY KEY ( id );

ALTER TABLE countries
    ADD CONSTRAINT countries_region_fk FOREIGN KEY ( region_id )
        REFERENCES region ( id );

ALTER TABLE departement
    ADD CONSTRAINT departement_location_fk FOREIGN KEY ( location_id )
        REFERENCES location ( id );

ALTER TABLE employee
    ADD CONSTRAINT employee_departement_fk FOREIGN KEY ( departement_departement_id )
        REFERENCES departement ( departement_id );

ALTER TABLE employee
    ADD CONSTRAINT employee_employee_fk FOREIGN KEY ( employee_employee_id )
        REFERENCES employee ( employee_id );

ALTER TABLE employee
    ADD CONSTRAINT employee_jobs_fk FOREIGN KEY ( jobs_id )
        REFERENCES jobs ( id );

ALTER TABLE employee
    ADD CONSTRAINT employee_machines_fk FOREIGN KEY ( machines_id )
        REFERENCES machines ( id );

ALTER TABLE full_timer
    ADD CONSTRAINT full_timer_classes_fk FOREIGN KEY ( classes_class_id )
        REFERENCES classes ( class_id );

ALTER TABLE job_history
    ADD CONSTRAINT job_history_departement_fk FOREIGN KEY ( departement_departement_id )
        REFERENCES departement ( departement_id );

ALTER TABLE job_history
    ADD CONSTRAINT job_history_departement_fkv1 FOREIGN KEY ( departement_departement_id2 )
        REFERENCES departement ( departement_id );

ALTER TABLE job_history
    ADD CONSTRAINT job_history_jobs_fk FOREIGN KEY ( jobs_id )
        REFERENCES jobs ( id );

ALTER TABLE location
    ADD CONSTRAINT location_countries_fk FOREIGN KEY ( countries_id )
        REFERENCES countries ( id );

ALTER TABLE logs
    ADD CONSTRAINT logs_machines_fk FOREIGN KEY ( machines_id )
        REFERENCES machines ( id );

ALTER TABLE machines
    ADD CONSTRAINT machines_jobs_fk FOREIGN KEY ( jobs_id )
        REFERENCES jobs ( id );

ALTER TABLE full_timer
    ADD CONSTRAINT part_timer_employee_fk FOREIGN KEY ( employee_id )
        REFERENCES employee ( employee_id );

ALTER TABLE part_timer
    ADD CONSTRAINT part_timer_employee_fkv2 FOREIGN KEY ( employee_id1 )
        REFERENCES employee ( employee_id );

ALTER TABLE part_timer
    ADD CONSTRAINT part_timer_quals_fk FOREIGN KEY ( quals_id )
        REFERENCES quals ( id );

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated 

--  ERROR: No Discriminator Column found in Arc FKArc_1 - constraint trigger for Arc cannot be generated



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            13
-- CREATE INDEX                             3
-- ALTER TABLE                             29
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   2
-- WARNINGS                                 0
