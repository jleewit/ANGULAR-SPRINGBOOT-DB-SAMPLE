DROP DATABASE IF EXISTS employeemanager_db;
DROP USER IF EXISTS employeemanager_user;
CREATE DATABASE employeemanager_db;
CREATE USER employeemanager_user WITH PASSWORD 'employeemanager_development_password';
GRANT ALL PRIVILEGES ON DATABASE employeemanager_db TO employeemanager_user;
\connect employeemanager_db postgres;
GRANT ALL ON SCHEMA public to employeemanager_user;
\connect employeemanager_db employeemanager_user;
DROP TABLE IF EXISTS employee cascade;
DROP SEQUENCE IF EXISTS hibernate_sequence;
CREATE SEQUENCE hibernate_sequence START 1 increment 1;
CREATE TABLE employee (
    id int8 not null,
    email varchar(255),
    employee_code varchar(255) not null,
    image_url varchar(255),
    job_title varchar(255),
    name varchar(255),
    phone varchar(255),
    primary key (id)
);