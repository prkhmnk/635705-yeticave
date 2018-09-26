CREATE DATABASE giftube
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

USE yeticave;

CREATE TABLE category (
--    поля
  id INT AUTO_INCREMENT PRIMARY KEY,
  category_name CHAR(64)
);

CREATE TABLE lot (
--    поля
  id INT AUTO_INCREMENT PRIMARY KEY,
  date_of_creation DATETIME,
  lot_name CHAR(128),
  description TEXT,
  picture CHAR(128),
  starting_price INT,
  date_of_completion DATE,
  rate_step CHAR(128),
--    связи
  user_id INT,
  winners_id INT,
  category_id INT
);

CREATE TABLE rate (
--    поля
  id INT AUTO_INCREMENT PRIMARY KEY,
  date DATETIME,
  amount INT,
--    связи
  user_id INT,
  lot_id INT
);

CREATE TABLE user (
--    поля
  id INT AUTO_INCREMENT PRIMARY KEY,
  date_of_registration DATETIME,
  email CHAR(64),
  user_name CHAR(128),
  password CHAR(64),
  avatar CHAR(128),
  contacts TEXT
--    связи
  lot_id INT,
  rate_id INT
);

CREATE UNIQUE INDEX user_email ON user(email);
CREATE UNIQUE INDEX name ON user(user_name);