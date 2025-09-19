-- Create the database
CREATE DATABASE IF NOT EXISTS CSD430;

-- Use the database
USE CSD430;

-- Drop table if it already exists
DROP TABLE IF EXISTS ryan_movies_data;

-- Create table
CREATE TABLE ryan_movies_data (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_year INT,
    director VARCHAR(100),
    rating DECIMAL(2,1)
);

-- Insert 10 records
INSERT INTO ryan_movies_data (title, genre, release_year, director, rating) VALUES
('The Shining', 'Horror', 1980, 'Stanley Kubrick', 8.4),
('Hereditary', 'Horror', 2018, 'Ari Aster', 7.3),
('The Room', 'Drama', 2003, 'Tommy Wiseau', 3.7),
('Sharknado', 'Action', 2013, 'Anthony C. Ferrante', 3.3),
('Midsommar', 'Horror', 2019, 'Ari Aster', 7.1),
('Evil Dead II', 'Horror/Comedy', 1987, 'Sam Raimi', 7.7),
('Velocipastor', 'Comedy', 2018, 'Brendan Steere', 5.0),
('The Babadook', 'Horror', 2014, 'Jennifer Kent', 6.8),
('Malignant', 'Horror', 2021, 'James Wan', 6.2),
('Friday the 13th', 'Horror', 1980, 'Sean S. Cunningham', 6.4);
