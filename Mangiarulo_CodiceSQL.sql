CREATE TABLE Libro (
IdLibro INTEGER IDENTITY NOT NULL PRIMARY KEY,
ISBN VARCHAR(13) NOT NULL,
Titolo VARCHAR(90) NOT NULL,
Prezzo DECIMAL(2,2) NOT NULL);

CREATE TABLE Posizione (
IdPosizione INTEGER IDENTITY NOT NULL PRIMARY KEY,
IdLibro INTEGER NOT NULL,
Scaffale INTEGER NOT NULL,
Scompartimento INTEGER NOT NULL,
NumCopie INTEGER NOT NULL);

CREATE TABLE Utente (
IdUtente INTEGER IDENTITY NOT NULL PRIMARY KEY,
CodFiscale VARCHAR(16) NOT NULL,
Nome VARCHAR(15) NOT NULL,
Indirizzo VARCHAR(12) NOT NULL,
Tel INTEGER NOT NULL,

CREATE TABLE Accounts (
IdAccount INTEGER IDENTITY NOT NULL PRIMARY KEY,
Email VARCHAR(19) NOT NULL,
UserName VARCHAR(13) NOT NULL,
Password VARCHAR(13) NOT NULL,
Profilo VARCHAR(5) NOT NULL,
Data DATE NOT NULL,
DataUltimoAccesso DATE NOT NULL);

CREATE TABLE Registrato (
IdRegisrtato INTEGER IDENTITY NOT NULL PRIMARY KEY,
FOREIGN KEY (IdAccount) REFERENCES Accounts(Id Account)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
FOREIGN KEY (IdUtente) REFERENCES Utente(IdUtente)
			ON UPDATE CASCADE
			ON DELETE CASCADE
);

CREATE TABLE Prestato (
IdPrestato INTEGER IDENTITY NOT NULL PRIMARY KEY,
FOREIGN KEY (IdUtente) REFERENCES Utente(IdUtente)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
FOREIGN KEY (IdLibro) REFERENCES Libro(IdLibro)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
DataOut DATE NOT NULL,
DataIn DATE NOT NULL);

alter table Libro alter column IdLibro restart with 1; 
alter table Posizione alter column IdPosizione restart with 1; 
alter table Utente alter column IdUtente restart with 1; 
alter table Accounts alter column IdAccount restart with 1; 
alter table Registrato alter column IdRegistrato restart with 1; 
alter table Prestato alter column IdPrestato restart with 1; 

INSERT INTO Libro VALUES (NULL, '978-88-268-1674-6', 'C++ Teoria e ambiente di programmazione', 28.00);
INSERT INTO Libro VALUES (NULL, '9799920360962', 'CORSO DI INFORMATICA LINGUAGGIO C E C++ PER IL NUOVO LICEO SCIENTIFICO OPZIONE SCIENZE APPLICATE', 19.50);
INSERT INTO Posizione VALUES (NULL, 1, 1, 4, 3);
INSERT INTO Posizione VALUES (NULL, 2, 2, 1, 3);
INSERT INTO Utente VALUES (NULL, 'SCRNDR60T21I293F', 'SCARPA ANDREA', 'Via Dei Tigli,5', '0471344671');
INSERT INTO Utente VALUES (NULL, 'SCRNDR60T21I293F', 'BIANCHI GIOCANNI', 'Via Roma, 8', '0471443262');
INSERT INTO Accounts VALUES (NULL, 's.andrea@gmail.com', 'bibliotecario', 'bibliotecario', 'admin', '2016-04-11', '2016-04-15');
INSERT INTO Accounts VALUES (NULL, 's.andrea@gmail.com', 'biagio', 'biagio', 'user', '2016-04-11', '2016-04-15');
INSERT INTO Registrato VALUES (NULL, 1, 1);
INSERT INTO Registrato VALUES (NULL, 2, 2);
INSERT INTO Prestato VALUES (NULL, 1, 1, '2016-04-12', '2016-04-16');
INSERT INTO Articolo VALUES (NULL, 2, 2, '2016-04-12', '2016-04-16');

 


