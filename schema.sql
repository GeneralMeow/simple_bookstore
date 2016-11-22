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

INSERT INTO books (title, author, image_url, description)
VALUES ('I Know Why the Caged Bird Sings', 'Maya Angelou', 'https://images-na.ssl-images-amazon.com/images/I/71L6HakRhzL.jpg', 'Here is a book as joyous and painful, as mysterious and memorable, as childhood itself. I Know Why the Caged Bird Sings captures the longing of lonely children, the brute insult of bigotry, and the wonder of words that can make the world right. Maya Angelou’s debut memoir is a modern American classic beloved worldwide. Sent by their mother to live with their devout, self-sufficient grandmother in a small Southern town, Maya and her brother, Bailey, endure the ache of abandonment and the prejudice of the local “powhitetrash.” At eight years old and back at her mother’s side in St. Louis, Maya is attacked by a man many times her age—and has to live with the consequences for a lifetime. Years later, in San Francisco, Maya learns that love for herself, the kindness of others, her own strong spirit, and the ideas of great authors (“I met and fell in love with William Shakespeare”) will allow her to be free instead of imprisoned. Poetic and powerful, I Know Why the Caged Bird Sings will touch hearts and change minds for as long as people read.
 “I Know Why the Caged Bird Sings liberates the reader into life simply because Maya Angelou confronts her own life with such a moving wonder, such a luminous dignity.”—James Baldwin'), ('Parable of the Talents', 'Octavia Butler', 'https://images-na.ssl-images-amazon.com/images/I/81EzixAspCL.jpg', 'Lauren Olaminas love is divided among her young daughter, her community, and the revelation that led Lauren to found a new faith that teaches "God Is Change". But in the wake of environmental and economic chaos, the U.S. government turns a blind eye to violent bigots who consider the mere existence of a black female leader a threat. And soon Lauren must either sacrifice her child and her followers -- or forsake the religion that can transform human destiny.'), ('Parable of the Sower', 'Octavia Butler', 'https://images-na.ssl-images-amazon.com/images/I/71jg6gRAKkL.jpg', 'When unattended environmental and economic crises lead to social chaos, not even gated communities are safe. In a night of fire and death Lauren Olamina, a ministers young daughter, loses her family and home and ventures out into the unprotected American landscape. But what begins as a flight for survival soon leads to something much more: a startling vision of human destiny... and the birth of a new faith.'), ('All About Love: New Visions', 'Bell Hooks', 'https://images-na.ssl-images-amazon.com/images/I/41mn0wOhpBL.jpg', 'The word "love" is most often defined as a noun, yet...we would all love better if we used it as a verb," writes bell hooks as she comes out fighting and on fire in All About Love. Here, at her most provocative and intensely personal, the renowned scholar, cultural critic, and feminist skewers our view of love as romance. In its place she offers a proactive new ethic for a people and a society bereft with lovelessness.  As bell hooks uses her incisive mind and razor-sharp pen to explore the question "What is love?" her answers strike at both the mind and heart. In thirteen concise chapters, hooks examines her own search for emotional connection and societys failure to provide a model for learning to love. Razing the cultural paradigm that the ideal love is infused with sex and desire, she provides a new path to love that is sacred, redemptive, and healing for the individuals and for a nation. The Utne Reader declared bell hooks one of the "100 Visionaries Who Can Change Your Life." All About Love is a powerful affirmation of just how profoundly she can.');


INSERT INTO genres (name)
VALUES ('Science Fiction'),
('Dystopian Fiction'),
('Biographies');


INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'I Know Why th Caged Bird Sings'
  AND authors.name = 'Maya Angelou';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Parable of the Talents'
  AND authors.name = 'Octavia Butler';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'Parable of the Sower'
  AND authors.name = 'Octavia Butler';

INSERT INTO book_authors
  SELECT books.id, authors.id FROM books
  CROSS JOIN authors
  WHERE books.title = 'All About Love: New Visions'
  AND authors.name = 'Bell Hooks';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'I Know Why the Caged Bird Sings'
  AND genres.name = 'Biographies';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Parable of the Talents'
  AND genres.name = 'Dystopian Fiction';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'Parable of the Sower'
  AND genres.name = 'Dystopian Fiction';

INSERT INTO book_genres
  SELECT books.id, genres.id FROM books
  CROSS JOIN genres
  WHERE books.title = 'All About Love: New Visions'
  AND genre.name = 'Self Help';
