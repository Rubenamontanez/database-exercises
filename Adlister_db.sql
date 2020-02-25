SHOW databases;

USE Adlister_exer_db;

DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
                                     id INT NOT NULL AUTO_INCREMENT,
                                     name VARCHAR(100) NOT NULL,
                                     email VARCHAR(100) NOT NULL,
                                     password VARCHAR(100) NOT NULL,
                                     PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;
CREATE TABLE IF NOT EXISTS ads (
                                   id INT NOT NULL AUTO_INCREMENT,
                                   title VARCHAR(100) NOT NULL,
                                   description VARCHAR(100) NOT NULL,
                                   user_id INT NOT NULL,
                                   PRIMARY KEY (id),
                                   FOREIGN KEY (user_id) REFERENCES users (id)
);

DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories (
                                          id INT NOT NULL AUTO_INCREMENT,
                                          name VARCHAR(100) NOT NULL,
                                          PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ad_category;
CREATE TABLE IF NOT EXISTS ad_category (
                                           ad_id INT NOT NULL,
                                           category_id INT NOT NULL,
                                           FOREIGN KEY (ad_id) REFERENCES ads(id),
                                           FOREIGN KEY (category_id) REFERENCES categories(id)
);
