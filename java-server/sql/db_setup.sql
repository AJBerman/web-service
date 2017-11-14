CREATE DATABASE IF NOT EXISTS directstem;

USE directstem;

/* USERS */
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id          INTEGER AUTO_INCREMENT NOT NULL,
  firstName   VARCHAR(255)           NOT NULL,
  lastName    VARCHAR(255)           NOT NULL,
  password    VARCHAR(255)           NOT NULL,
  email       VARCHAR(255)           NOT NULL UNIQUE,
  description TEXT                   NULL,
  PRIMARY KEY (id)
);

INSERT INTO users (firstName, lastName, password, email)
VALUES ('Shay', 'Nguyen', 'shay', 'shay@nguyen.com');

INSERT INTO users (firstName, lastName, password, email)
VALUES ('Leanne', 'Graham', 'leanne', 'leanne@graham.com');

INSERT INTO users (firstName, lastName, password, email)
VALUES ('Ervin', 'Howell', 'ervin', 'ervin@howell.com');


CREATE TABLE nodes (
  id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(255),
  composition BOOLEAN,
  service     INT,
  compedge    INT,
  outp        VARCHAR(255),
  xPos        INT,
  yPos        INT
);
CREATE TABLE services (
  id          INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  url         VARCHAR(255),
  title       VARCHAR(255),
  description VARCHAR(255),
  ret         VARCHAR(255)
);
CREATE TABLE serviceparameters (
  id  INT NOT NULL,
  i   INT,
  val VARCHAR(255)
);
CREATE TABLE children (
  id      INT NOT NULL,
  childid INT NOT NULL
);
CREATE TABLE edges (
  id      INT NOT NULL,
  srcid   INT NOT NULL,
  paramNo INT
);
CREATE TABLE childedges (
  id      INT NOT NULL,
  destid  INT NOT NULL,
  paramNo INT,
  inputNo INT
);
CREATE TABLE inputs (
  id  INT NOT NULL,
  i   INT,
  val VARCHAR(255)
);
CREATE TABLE results (
  id     INT NOT NULL,
  guid   VARCHAR(255),
  val    VARCHAR(255),
  failed BOOLEAN
);