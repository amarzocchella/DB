CREATE TABLE Genere (
IdGenere INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
Descrizione VARCHAR(30) NOT NULL);

// alter table Genere alter column IdGenere restart with 1; 


CREATE TABLE Libro (
IdLibro INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
Titolo VARCHAR(30) NOT NULL);
Prezzo VARCHAR(30) NOT NULL);

// alter table Libro alter column IdLibro restart with 1; 



CREATE TABLE Autore (
CodAutore INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
Nome VARCHAR(30) NOT NULL);

// alter table Autore alter column CodAutore restart with 1; 



CREATE TABLE CasaEditore (
CodEditore INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
RagioneSociale VARCHAR(30) NOT NULL);

// alter table CasaEditore alter column CodEditore restart with 1; 



CREATE TABLE EditoDa (
CodEditore INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
IdLibro INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
IdGenere VARCHAR(30) NOT NULL);
Anno VARCHAR(30) NOT NULL);
DataIn VARCHAR(30) NOT NULL);

// alter table EditoDa alter column CodEditore restart with 1; 


CREATE TABLE Scritto_Da (
CodAutore INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
IdLibro VARCHAR(30) NOT NULL);
IdGenere VARCHAR(30) NOT NULL);
Anno VARCHAR(30) NOT NULL);
DataIn VARCHAR(30) NOT NULL);

// alter table Libro alter column CodAutore restart with 1; 


);



alter table Genere alter column IDFornitore restart with 1; 
alter table Libro alter column IDArticolo restart with 1; 
alter table Autore alter column IDAcquisto restart with 1; 
alter table CasaEditore alter column IDCliente restart with 1; 
alter table EditoDa alter column IDVendita restart with 1; 
alter table Scritto_Da alter column IDVendita restart with 1;











INSERT INTO Genere VALUES (NULL, 'informatica');
INSERT INTO Genere VALUES (NULL, 'Matematica');
INSERT INTO Genere VALUES (NULL, 'Fisica');
INSERT INTO Genere VALUES (NULL, 'Scienze');

INSERT INTO Libro VALUES (NULL, 'ISBN 9788826818382', 'INFORMATICA PER ISTITUTI TECNICITECNOLOGICI A vol1', '18,80');
INSERT INTO Libro VALUES (NULL, 'ISBN 9788826891699', '', 'INFORMATICA PER ISTITUTI TECNICITECNOLOGICI B', '13,90');
INSERT INTO Libro VALUES (NULL, 'ISBN 9788826891699', 'TELECOMUNICAZIONE 1', '30,60');

INSERT INTO Autore VALUES (NULL, 'LRNZ0', 'Lorenzo Agostino');
INSERT INTO Autore VALUES (NULL, 'LRN01', 'Lorenzo Agostino');
INSERT INTO Autore VALUES (NULL, 'BRTZL1', 'Bertazioli Onelio');


INSERT INTO CasaEditore VALUES (NULL, 'TLS00001');
INSERT INTO CasaEditore VALUES (NULL, 'TLS00001');
INSERT INTO CasaEditore VALUES (NULL, 'ZNCHLL01');

INSERT INTO EditoDa VALUES (NULL, '');
INSERT INTO EditoDa VALUES (NULL, '');
INSERT INTO EditoDa VALUES (NULL, '');



INSERT INTO Scritto_Da VALUES (NULL, '');
INSERT INTO Scritto_Da VALUES (NULL, '');
INSERT INTO Scritto_Da VALUES (NULL, '');



// Non sono riuscito a finire in tempo.













