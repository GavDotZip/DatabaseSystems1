-- Disable NO_AUTO_VALUE_ON_ZERO mode
SET ANSI_PADDING ON;
SET ANSI_WARNINGS ON;
SET CONCAT_NULL_YIELDS_NULL ON;
SET QUOTED_IDENTIFIER ON;
SET NUMERIC_ROUNDABORT OFF;

-- Set time_zone to +00:00
SET TIMEZONE OFFSET '+00:00';

-- Create tables for DB
CREATE TABLE department (
  dnumber int NOT NULL PRIMARY KEY,
  dname varchar(50) DEFAULT NULL,
  mgrssn bigint DEFAULT NULL,
  mgrstartdate date DEFAULT NULL
);

CREATE TABLE dependent (
  essn bigint NOT NULL,
  dependent_name varchar(50) NOT NULL,
  gender varchar(50) DEFAULT NULL,
  bdate date DEFAULT NULL,
  relationship varchar(50) DEFAULT NULL,
  PRIMARY KEY (essn, dependent_name)
);

CREATE TABLE dept_locations (
  dnumber int NOT NULL,
  dlocation varchar(20) NOT NULL,
  PRIMARY KEY (dnumber, dlocation)
);

CREATE TABLE employee (
  fname varchar(50) DEFAULT NULL,
  minit varchar(1) DEFAULT NULL,
  lname varchar(50) DEFAULT NULL,
  ssn bigint NOT NULL PRIMARY KEY,
  bdate date DEFAULT NULL,
  address varchar(100) DEFAULT NULL,
  gender varchar(50) DEFAULT NULL,
  salary float DEFAULT NULL,
  superssn bigint DEFAULT NULL,
  dno int DEFAULT NULL
);

CREATE TABLE project (
  pname varchar(20) DEFAULT NULL,
  pnumber int NOT NULL PRIMARY KEY,
  plocation varchar(20) DEFAULT NULL,
  dnum int DEFAULT NULL
);

CREATE TABLE works_on (
  essn bigint NOT NULL,
  pno int NOT NULL,
  hours float DEFAULT NULL,
  PRIMARY KEY (essn, pno)
);
