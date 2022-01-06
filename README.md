# bank

Hello before starting please create these two databases to insure proper fuctionality. Thank you!

CREATE DATABASE bank;

CREATE TABLE account_history(id SERIAL PRIMARY KEY, change FLOAT(2), total FLOAT(2), created_at TIMESTAMPTZ DEFAULT Now()); 

CREATE DATABASE bank_test;

CREATE TABLE account_history(id SERIAL PRIMARY KEY, change FLOAT(2), total FLOAT(2), created_at TIMESTAMPTZ DEFAULT Now());


Please run the file 'app.rb' located in the main directory 'bank'.