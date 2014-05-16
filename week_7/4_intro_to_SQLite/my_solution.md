# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

C:\>sqlite3 dummy.db
SQLite version 3.8.2 2013-12-06 14:53:30
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite>

## Release 1: Insert Data 

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('no
w'));
Error: UNIQUE constraint failed: users.email
sqlite> SELECT * FROM users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-15 01:43:36|2014-05-15 01:43:36
sqlite>

## Release 2: Multi-line commands

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('no
w'));
Error: UNIQUE constraint failed: users.email
sqlite> select * from users;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-16 00:23:54|2014-05-16 00:23:54
2|Martin|Lear|m.lear09@gmail.com|2014-05-16 00:25:06|2014-05-16 00:25:06
sqlite>

## Release 3: Add a column

```sql
sqlite> alter table users
   ...> add nicknames varchar(64) NOT NULL DEFAULT('no nickname');
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nicknames varchar(64) NOT NULL DEFAULT('no nickname'));
sqlite> select * from users
   ...> ;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-16 01:35:30|2014-05-16 01:35:30|no ni
ckname
2|Martin|Lear|mlear@devbootcamp.com|2014-05-16 01:38:33|2014-05-16 01:38:33|no n
ickname
sqlite> update users
   ...> set nicknames='Kimchee'
   ...> where id=1;
sqlite> update users
   ...> set nicknames='Gozar'
   ...> where id=2;
sqlite> select * from users
   ...> ;
1|Kimmey|Lin|kimmy@devbootcamp.com|2014-05-16 01:35:30|2014-05-16 01:35:30|Kimch
ee
2|Martin|Lear|mlear@devbootcamp.com|2014-05-16 01:38:33|2014-05-16 01:38:33|Goza
r
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nicknames varchar(64) NOT NULL DEFAULT('no nickname'));
sqlite>
```

## Release 4: Change a value

sqlite> update users set first_name='Kimmy', nicknames='Ninja Coder', updated_at
 DATETIME('now') where id=1;
Error: near "DATETIME": syntax error
sqlite> update users set first_name='Kimmy', nicknames='Ninja Coder', updated_at
=DATETIME('now') where id=1;
sqlite> select * from users
   ...> ;
1|Kimmy|Lin|kimmy@devbootcamp.com|2014-05-16 01:35:30|2014-05-16 01:50:05|Ninja
Coder
2|Martin|Lear|mlear@devbootcamp.com|2014-05-16 01:38:33|2014-05-16 01:38:33|Goza
r
sqlite>

## Release 5: Reflect

This was actually a lot tougher then it intially looked.  I thought I would breeze through it with some simple statements.  The next thing I knew I was trowing errors left and right, creating things I didn't mean to, deleting dummy.db's and starting from scratch!  Working in the command line really makes you appreciate text editors, that's all I can say.  Great exercise, I learned a lot even though I had already completed the other exercises.  That not null error threw me for a loop until I released why I was getting the error.