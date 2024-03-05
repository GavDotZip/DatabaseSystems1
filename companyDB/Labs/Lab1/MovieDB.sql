-- Disable NO_AUTO_VALUE_ON_ZERO mode and set time_zone to +00:00

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Create tables for DB
DROP TABLE IF EXISTS actor;
CREATE TABLE actor (
  aID int(11) NOT NULL PRIMARY KEY,
  fName varchar(50),
  surname varchar(50),
  nationality varchar(50),
  gender varchar(50)
);

DROP TABLE IF EXISTS director;
CREATE TABLE director (
  dID int(11) NOT NULL PRIMARY KEY,
  dfName varchar(50),
  dSurname varchar(50)
);


DROP TABLE IF EXISTS movie;
CREATE TABLE movie (
  mID int(11) NOT NULL PRIMARY KEY,
  title varchar(100),
  relYear year,
  category varchar(5),
  runTime int(5),
  studioName varchar(100),
  description varchar(500),
  rating decimal(4,2)
);


DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
  movieID int(11) NOT NULL,
  genre varchar(50) NOT NULL,
  CONSTRAINT pk_genres PRIMARY KEY (movieID, genre),
  CONSTRAINT fk_movGenre_movie FOREIGN KEY (movieID) REFERENCES movie (mID)
);


DROP TABLE IF EXISTS stars;
CREATE TABLE stars (
  movieID int(11) NOT NULL,
  actorID int(11) NOT NULL,
  CONSTRAINT pk_stars PRIMARY KEY (movieID, actorID),
  CONSTRAINT fk_stars_actor FOREIGN KEY (actorID) REFERENCES actor (aID),
  CONSTRAINT fk_stars_movie FOREIGN KEY (movieID) REFERENCES movie (mID)
);


DROP TABLE IF EXISTS directs;
CREATE TABLE directs (
  movieID int(11) NOT NULL,
  directorID int(11) NOT NULL,
  CONSTRAINT pk_directs PRIMARY KEY (movieID, directorID),
  CONSTRAINT fk_directs_movieID FOREIGN KEY (movieID) REFERENCES movie (mID),
  CONSTRAINT fk_directs_directorID FOREIGN KEY (directorID) REFERENCES director (dID)
);