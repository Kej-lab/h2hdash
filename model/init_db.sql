-- (Re)create the table

DROP TABLE IF EXISTS notes;
CREATE TABLE notes (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    text VARCHAR(500),
    date VARCHAR(100)
    );

INSERT INTO notes (text, date)
VALUES
    ("Hello there!", "2022-08-01"),
    ("Testing yo yo yo testing", "2022-09-11");

DROP TABLE IF EXISTS files;
CREATE TABLE files (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  note VARCHAR(500),
  filename VARCHAR(500)
);

INSERT INTO files (note, filename)
VALUES ("Rawrrrr", "Rawrr rawrr rawrr");