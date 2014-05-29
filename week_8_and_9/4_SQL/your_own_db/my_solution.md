<!-- ## Show the terminal output here.  -->
<!-- creating the schema -->
sqlite> CREATE TABLE beer_name (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> name VARCHAR(64) NOT NULL,
   ...> brewery_id INTEGER NOT NULL,
   ...> style VARCHAR(64) NOT NULL,
   ...> rating INTEGER NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL
   ...> );
sqlite> .schema
CREATE TABLE beer_name (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(64) NOT NULL,
brewery_id INTEGER NOT NULL,
style VARCHAR(64) NOT NULL,
rating INTEGER NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL
);
sqlite> CREATE TABLE brewer (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> name VARCHAR(64) NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL
   ...> );
sqlite> .schema
CREATE TABLE beer_name (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(64) NOT NULL,
brewery_id INTEGER NOT NULL,
style VARCHAR(64) NOT NULL,
rating INTEGER NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL
);
CREATE TABLE brewer (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name VARCHAR(64) NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL
);
sqlite>

<!-- adding to the db -->

sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Miller Lite', 1, 'Pilsner', 3, DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Smithwicks', 2, 'Amber', 5, DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Abt 12', 3, 'Quad', 5, DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Le Fin Du Monde', 4, 'Tripel', 4, DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Guinness', 2, 'Stout', 4, DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Skull Splitter', 5, 'Scotch Ale', 5, DATETIME('now'), DATETIME('now'))
;
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('312', 6, 'Wheat', 3, DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Arrogant Bastard', 7, 'American Strong', 5, DATETIME('now'), DATETIME(
'now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Sublimely Self-Righteous', 7, 'Black Ale', 4, DATETIME('now'), DATETIM
E('now'));
sqlite> INSERT INTO beer_name
   ...> (name, brewery_id, style, rating, created_at, updated_at)
   ...> VALUES
   ...> ('Cane & Ebel', 8, 'Rye', 5, DATETIME('now'), DATETIME('now'));
sqlite> select beer_name;
Error: no such column: beer_name
sqlite> select * FROM beer_names
   ...> ;
Error: no such table: beer_names
sqlite> select * FROM beer_name;
1|Miller Lite|1|Pilsner|3|2014-05-29 01:31:41|2014-05-29 01:31:41
2|Smithwicks|2|Amber|5|2014-05-29 01:32:49|2014-05-29 01:32:49
3|Abt 12|3|Quad|5|2014-05-29 01:33:47|2014-05-29 01:33:47
4|Le Fin Du Monde|4|Tripel|4|2014-05-29 01:34:50|2014-05-29 01:34:50
5|Guinness|2|Stout|4|2014-05-29 01:36:00|2014-05-29 01:36:00
6|Skull Splitter|5|Scotch Ale|5|2014-05-29 01:37:14|2014-05-29 01:37:14
7|312|6|Wheat|3|2014-05-29 01:42:50|2014-05-29 01:42:50
8|Arrogant Bastard|7|American Strong|5|2014-05-29 01:44:22|2014-05-29 01:44:22
9|Sublimely Self-Righteous|7|Black Ale|4|2014-05-29 01:45:47|2014-05-29 01:45:47

10|Cane & Ebel|8|Rye|5|2014-05-29 01:47:25|2014-05-29 01:47:25
sqlite>