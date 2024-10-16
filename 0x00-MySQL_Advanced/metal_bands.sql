CREATE TABLE metal_bands (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    genre VARCHAR(255) NOT NULL,
    formed_year INT NOT NULL,
    origin VARCHAR(255) NOT NULL,
    fans INT NOT NULL,
    split INT DEFAULT NULL
);

INSERT INTO metal_bands (name, genre, formed_year, origin, fans, split) VALUES
('Alice Cooper', 'Glam rock', 1966, 'USA', 20000, NULL),
('Mötley Crüe', 'Glam rock', 1981, 'USA', 30000, NULL),
('Marilyn Manson', 'Glam rock', 1991, 'USA', 25000, NULL),
('The 69 Eyes', 'Glam rock', 1994, 'Finland', 15000, NULL),
('Hardcore Superstar', 'Glam rock', 1997, 'Sweden', 10000, NULL),
('Nasty Idols', 'Glam rock', 1987, 'Sweden', 5000, 1995),
('Hanoi Rocks', 'Glam rock', 1979, 'Finland', 8000, 1985);
