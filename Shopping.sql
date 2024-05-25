CREATE TABLE art (
  id INT PRIMARY KEY,
  type VARCHAR(255),
  name VARCHAR(255),
  image_url VARCHAR(255)
);

INSERT INTO art (id, type, name, image_url) VALUES
  (1, 'Sculptures', 'Sculpture 1', 'https://example.com/sculpture1.jpg'),
  (2, 'Prints', 'Print 1', 'https://example.com/print1.jpg'),
  (3, 'Painting', 'Painting 1', 'https://example.com/painting1.jpg'),
  (4, 'Street Art', 'Street Art 1', 'https://example.com/streetart1.jpg'),
  (5, 'Visuals Arts', 'Visual Art 1', 'https://example.com/visualart1.jpg');