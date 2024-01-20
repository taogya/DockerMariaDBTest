# DockerMariaDBTest
DockerでMariaDBを動かす

## Clone
```
git clone https://github.com/taogya/DockerMariaDBTest.git
cd DockerMariaDBTest
```

## 立ち上げ
```
$ docker-compose up -d
```
以下からアクセスできます。<br>
http://localhost:8080/

コマンドラインからアクセスする場合<br>
```
$ mysql --host=localhost --user=root --password=example  --port 3306 --database=test_db --protocol=tcp
mysql: [Warning] Using a password on the command line interface can be insecure.
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 5.5.5-10.5.23-MariaDB-1:10.5.23+maria~ubu2004 mariadb.org binary distribution

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
 +--------------------+
 | Database           |
 +--------------------+
 | information_schema |
 | mysql              |
 | performance_schema |
 | test_db            |
 +--------------------+
 4 rows in set (0.01 sec)

mysql> show tables;
 +-------------------+
 | Tables_in_test_db |
 +-------------------+
 | test_table        |
 +-------------------+
1 row in set (0.00 sec)

mysql> select * from test_table;
 +----+---------+
 | id | name    |
 +----+---------+
 |  1 | hello   |
 |  2 | world!! |
 +----+---------+
 2 rows in set (0.00 sec)

mysql> quit
 Bye
```

## 立ち下げ
```
$ docker-compose down
```
