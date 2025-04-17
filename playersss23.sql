
CREATE DATABASE  playersss23; 
USE playersss23;

CREATE TABLE Compania (
    Id_Compania  INT  PRIMARY KEY,
    Nombre_Compania VARCHAR(100) NOT NULL,
    Nacimiento  INT,
    Dueno  VARCHAR(100)
);

CREATE TABLE Videojuegos (
    Id_videojuego INT  PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    genero  VARCHAR(100),
    anio  INT,
    ventas   DECIMAL(10,2),
    Id_compania  INT,
    FOREIGN KEY (Id_compania) REFERENCES Compania(Id_Compania)
);

INSERT INTO Compania (Id_Compania, Nombre_Compania, Nacimiento, Dueno) VALUES
  (1,  'Nintendo', 1889, 'Pública'),
  (2,  'Microsoft Game Studio', 2000, 'Microsoft'),
  (3,  'Take-Two Interactive', 1993, 'Pública'),
  (4,  'Sony Computer',1993, 'Sony Corporation'),
  (5,  'Activision',1979, 'Pública'),
  (6,  'Ubisoft',1986, 'Pública'),
  (7,  'Bethesda Softworks',1986, 'Microsoft'),
  (8,  'Electronic Arts',1982, 'Pública'),
  (9,  'Sega',1960, 'Sega Sammy Holdings'),
  (10, 'SquareSoft',1986, 'Square Enix'),
  (11, 'Atari', 1972, 'Pública'),
  (12, 'Take-Two Interactive',2002, 'Pública'),
  (13, 'Nintendo (2ª línea)',1996, 'Pública'),  
  (14, 'Sony Computer Entertainment', 2005, 'Pública'),
  (15, 'Activision (2ª línea)', 2008, 'Pública');


INSERT INTO Videojuegos (Id_videojuego, titulo, genero, anio, ventas, Id_compania) VALUES
  (1,  'Wii Sports', 'Sports',2006, 41.49, 1),
  (2,  'Super Mario Bros','Platform', 1985, 29.08, 2),
  (3,  'Mario Kart Wii','Racing', 2008, 15.85, 3),
  (4,  'Wii Sports Resort',  'Sports', 2009, 15.75, 4),
  (5,  'Pokemon Red/Pokemon Blue', 'Role-Playing', 1996, 11.27, 5),
  (6,  'Tetris','Puzzle',1989, 23.20, 6),
  (7,  'New Super Mario Bros','Platform',2006, 11.38, 7),
  (8,  'Wii Play', 'Misc', 2006, 14.03, 8),
  (9,  'New Super Mario Bros Wii', 'Platform', 2009, 14.59, 9),
  (10, 'Duck Hunt','Shooter',1984, 26.93, 10);
  
  select * from videojuegos;
  