
ALTER USER postgres WITH PASSWORD 'test123'; 

CREATE USER user_name WITH PASSWORD 'TEST123';

CREATE TABLE my_first_table (
    id serial,
    seq_num integer DEFAULT nextval('seq_num_seq'),
    ferst_column text NOT NULL,
    second_column integer DEFAULT 99
);

CREATE TABLE my_first_table (
    id serial,
    seq_num integer DEFAULT 0,
    ferst_column text NOT NULL,
    second_column integer DEFAULT 99
);

DROP TABLE my_first_table;

ALTER TABLE my_first_table ADD COLUMN description text CHECK (my_first_table.description <> '');

ALTER TABLE my_first_table DROP COLUMN description;

ALTER TABLE my_first_table RENAME COLUMN ferst_column TO description;

CREATE CONSTRAINT TRIGGER price_positive check (price > 0 AND name NOT ISNULL );

INSERT INTO my_first_table (
  seq_num,
  description,
  second_column
) VALUES (
    1,
    'dfsdef',
    42
) RETURNING id;




