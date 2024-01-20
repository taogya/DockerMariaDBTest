CREATE DATABASE test_db CHARACTER SET utf8;
CREATE USER hoge IDENTIFIED BY 'hoge&example';
GRANT ALL PRIVILEGES ON test_db.* TO hoge;
USE test_db;
CREATE TABLE test_table (id int PRIMARY KEY, name char(32));
INSERT INTO test_table (id, name) VALUES (1, 'hello');
INSERT INTO test_table (id, name) VALUES (2, 'world');