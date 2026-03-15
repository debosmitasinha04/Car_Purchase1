CREATE DATABASE car_purchase;

USE car_purchase;

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(100) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  password varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE booking (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(100) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  car_name varchar(100) DEFAULT NULL,
  amount double DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE customer (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(100) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  phone varchar(15) DEFAULT NULL,
  PRIMARY KEY (id)
);