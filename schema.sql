DROP DATABASE IF EXISTS simple_bookstore;
CREATE DATABASE simple_bookstore;

\c simple_bookstore;


DROP TABLE IF EXISTS books;
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  image_url VARCHAR(2000),
  description TEXT
);

DROP TABLE IF EXITS authors;

CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS genres;

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS book_authors;

CREATE TABLE book_authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS book_genres;

CREATE TABLE book_genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);
