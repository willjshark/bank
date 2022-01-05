# bank


CREATE DATABASE bank;

CREATE TABLE account_history(id SERIAL PRIMARY KEY, change FLOAT(2), total FLOAT(2), created_at TIMESTAMPTZ DEFAULT Now()); 

CREATE DATABASE bank_test;

CREATE TABLE account_history(id SERIAL PRIMARY KEY, change FLOAT(2), total FLOAT(2), created_at TIMESTAMPTZ DEFAULT Now());