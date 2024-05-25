CREATE TABLE art_gallery (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  price DECIMAL(10, 2),
  image_url VARCHAR(255),
  art_type VARCHAR(255)
);

INSERT INTO art_gallery (id, title, description, price, image_url, art_type) VALUES
  (1, 'Sort Art And Painting', 'For Your Choice', 12.99, 'image_url_1', 'painting'),
  (2, 'Best Products', 'Lorem ipsum dolor sit amet, consectetuer adipiscing of Aenean commodo ligula eget dolor orem ipsum dolor sit amet eget dolor', 24.99, 'image_url_2', 'art'),
  (3, 'Contact', 'Get in touch with us', NULL, 'image_url_3', 'contact'),
  (4, 'About', 'Learn more about our Art Gallery', NULL, 'image_url_4', 'about'),
  (5, 'Art Type', 'Sort by art type', NULL, 'image_url_5', 'art type'),
  (6, 'Admin', 'Administrator page', NULL, 'image_url_6', 'admin');

CREATE TABLE categories (
  id INT PRIMARY KEY,
  name VARCHAR(255)
);

INSERT INTO categories (id, name) VALUES
  (1, 'Painting'),
  (2, 'Art'),
  (3, 'Contact'),
  (4, 'About'),
  (5, 'Art Type'),
  (6, 'Admin');

CREATE TABLE art_category (
  art_id INT,
  category_id INT,
  PRIMARY KEY (art_id, category_id),
  FOREIGN KEY (art_id) REFERENCES art_gallery (id),
  FOREIGN KEY (category_id) REFERENCES categories (id)
);

INSERT INTO art_category (art_id, category_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6);