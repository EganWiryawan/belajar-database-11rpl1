Microsoft Windows [Version 10.0.19044.1645]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Zyrex>color 2

C:\Users\Zyrex>cd..

C:\Users>cd..

C:\>cd xampp

C:\Xampp>cd mysql

C:\Xampp\mysql>cd bin

C:\Xampp\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.24-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| egan               |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.006 sec)

MariaDB [(none)]> CREATE DATABASE SEKOLAH;
Query OK, 1 row affected (0.005 sec)

MariaDB [(none)]> USE SEKOLAH;
Database changed
MariaDB [SEKOLAH]> SHOW TABLES;
Empty set (0.002 sec)

MariaDB [SEKOLAH]> CREATE TABLE siswa(nis CHAR(8) PRIMARY KEY, nama VARCHAR(100), jk CHAR(1), tmp_lahir VARCHAR(50), tgl_lahir DATE, alamat TEXT, kelas VARCHAR(10), nilai FLOAT);
Query OK, 0 rows affected (0.028 sec)

MariaDB [SEKOLAH]> DESCRIBE siswa;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| nis       | char(8)      | NO   | PRI | NULL    |       |
| nama      | varchar(100) | YES  |     | NULL    |       |
| jk        | char(1)      | YES  |     | NULL    |       |
| tmp_lahir | varchar(50)  | YES  |     | NULL    |       |
| tgl_lahir | date         | YES  |     | NULL    |       |
| alamat    | text         | YES  |     | NULL    |       |
| kelas     | varchar(10)  | YES  |     | NULL    |       |
| nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.017 sec)

MariaDB [SEKOLAH]> SELECT *FROM siswa;
Empty set (0.015 sec)

MariaDB [SEKOLAH]> INSERT INTO siswa VALUES('12100274', 'FIRDAUS WIGUNA', 'L', 'SUBANG', '2005-08-17', 'KALIJATI', '11-RPL-1', '70.97');
Query OK, 1 row affected (0.005 sec)

MariaDB [SEKOLAH]> INSERT INTO siswa VALUES('12100293', 'HAIKAL FADHILAH IBRAHIM', 'L', 'SUBANG', '2005-11-7', 'SUKARAHAYU', '11-RPL-1', '75.97');
Query OK, 1 row affected (0.005 sec)

MariaDB [SEKOLAH]> INSERT INTO siswa VALUES('12100670', 'RIZQI CATUR MADANI', 'L', 'SUBANG', '2006-07-22', 'CIPAKU', '11-RPL-1', '80.97');
Query OK, 1 row affected (0.006 sec)

MariaDB [SEKOLAH]> INSERT INTO siswa VALUES('12100022', 'AEF ADITIYA GELAR NUGRAHA', 'L', 'SUBANG', '2005-09-20', 'CERELEK', '11-RPL-1', '85.97');
Query OK, 1 row affected (0.005 sec)

MariaDB [SEKOLAH]> INSERT INTO siswa VALUES('12100268', 'FARIZ FADLI RAFIUDIN', 'L', 'JOGJAKARTA', '2005-06-22', 'BELENDUNG', '11-RPL-1', '90.97');
Query OK, 1 row affected (0.005 sec)

MariaDB [SEKOLAH]> UPDATE siswa SET tmp_lahir="BANDUNG" WHERE nis="12100274";
Query OK, 1 rows affected (0.002 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [sekolah]> DELETE FROM siswa WHERE nis="12100274";
Query OK, 1 row affected (0.004 sec)

MariaDB [SEKOLAH]> SELECT *FROM siswa;
+----------+---------------------------+------+------------+------------+------------+----------+-------+
| nis      | nama                      | jk   | tmp_lahir  | tgl_lahir  | alamat     | kelas    | nilai |
+----------+---------------------------+------+------------+------------+------------+----------+-------+
| 12100022 | AEF ADITIYA GELAR NUGRAHA | L    | SUBANG     | 2005-09-20 | CERELEK    | 11-RPL-1 | 85.97 |
| 12100268 | FARIZ FADLI RAFIUDIN      | L    | JOGJAKARTA | 2005-06-22 | BELENDUNG  | 11-RPL-1 | 90.97 |
| 12100293 | HAIKAL FADHILAH IBRAHIM   | L    | SUBANG     | 2005-11-07 | SUKARAHAYU | 11-RPL-1 | 75.97 |
| 12100670 | RIZQI CATUR MADANI        | L    | SUBANG     | 2006-07-22 | CIPAKU     | 11-RPL-1 | 80.97 |
+----------+---------------------------+------+------------+------------+------------+----------+-------+
4 rows in set (0.001 sec)