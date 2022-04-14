-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;

CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT,
    company_id INTEGER
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    calls_emails TEXT,
    date_time TEXT,
    notes TEXT,
    contact_id INTEGER,
    salesperson_id INTEGER
);

CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE salespeople(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE industries(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_name TEXT,
    company_id INTEGER,
    salesperson_id INTEGER,
    activity_id INTEGER,
    contact_id INTEGER
);

