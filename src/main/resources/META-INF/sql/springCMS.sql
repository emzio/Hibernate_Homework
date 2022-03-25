INSERT INTO SpringCMS.authors (firstName, lastName) VALUES ('Karol ', 'May');
INSERT INTO SpringCMS.authors (firstName, lastName) VALUES ('Adam ', 'Michnik');
INSERT INTO SpringCMS.authors (firstName, lastName) VALUES ('Harry', 'Kittel');
INSERT INTO SpringCMS.authors (firstName, lastName) VALUES ('Jacek', 'Żakowski');

INSERT INTO SpringCMS.categories (description, name) VALUES ('polityka krajowa', 'polityka krajowa');
INSERT INTO SpringCMS.categories (description, name) VALUES ('świat', 'zagranica');
INSERT INTO SpringCMS.categories (description, name) VALUES ('przygoda, egzotyka', 'rozrywka');
INSERT INTO SpringCMS.categories (description, name) VALUES ('nauka, technika', 'nauka');
INSERT INTO SpringCMS.categories (description, name) VALUES ('teatr, kino, książka', 'kultura');

INSERT INTO SpringCMS.articles (content, created, title, updated, author_id) VALUES ('article 1 content', '2022-03-20 08:48:40', 'cos tam', null, 1);
INSERT INTO SpringCMS.articles (content, created, title, updated, author_id) VALUES ('article 2 content', '2022-03-20 08:32:31', 'tytuł2', null, 3);
INSERT INTO SpringCMS.articles (content, created, title, updated, author_id) VALUES ('article 3', '2022-03-19 12:03:56', 'tytuł3', null, 2);
INSERT INTO SpringCMS.articles (content, created, title, updated, author_id) VALUES ('article 4 ', '2022-03-20 08:34:31', 'tytuł4', null, 3);
INSERT INTO SpringCMS.articles (content, created, title, updated, author_id) VALUES ('article test','2022-03-19 15:08:56', 'test', null, 4);

INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (1, 1);
INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (2, 3);
INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (2, 5);
INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (3, 1);
INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (3, 2);
INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (4, 4);
INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (4, 3);
INSERT INTO SpringCMS.articles_categories (Article_id, categories_id) VALUES (4, 2)