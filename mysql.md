
### Connecting to and Disconnecting from the Server
```sql
mysql -h host -u user -p
```
or use datebase nase menagerie
```sql
mysql -h host -u user -p menagerie
```
and 
```sql
QUIT
```



### Queries

```sql
SELECT VERSION(), CURRENT_DATE;
SELECT VERSION(); SELECT NOW();
```

```sql
SELECT
    -> USER()
    -> ,
    -> CURRENT_DATE;
```

Cancel query
```sql
\c
```



### Create

```sql
SHOW DATABASES;
USE test
```

Give permissions to use DB
```sql
GRANT ALL ON menagerie.* TO 'your_mysql_name'@'your_client_host';
```

Create database
```sql
CREATE DATABASE menagerie;
USE menagerie
```

Create table
```sql
SHOW TABLES;
```

```sql
CREATE TABLE pet (
	name VARCHAR(20), 
	owner VARCHAR(20),
	species VARCHAR(20), 
	sex CHAR(1), 
	birth DATE, 
	death DATE
);
```

```sql
DESCRIBE pet;
```

Loading Data into a Table
```sql
LOAD DATA LOCAL INFILE '/path/pet.txt' INTO TABLE pet;
```
or
```sql
LOAD DATA LOCAL INFILE '/path/pet.txt' INTO TABLE pet LINES TERMINATED BY '\r\n';
```

Records format in file
Whistler	Gwen	bird	\N	1997-12-09	\N


Insert
```sql
INSERT INTO pet
VALUES (
	'Puffball',
	'Diane',
	'hamster',
	'f',
	'1999-03-30',
	NULL
);
```


### Select data 

```sql
SELECT what_to_select
FROM which_table
WHERE conditions_to_satisfy;
```



### Update data

```sql
DELETE FROM pet;
LOAD DATA LOCAL INFILE '/path/pet.txt' INTO TABLE pet;
```
or 
```sql
UPDATE pet SET birth = '1989-08-31' WHERE name = 'Bowser';
```



















#### Tasks

- Попробывать законектится 2 раза одним и тем же пользователем




































