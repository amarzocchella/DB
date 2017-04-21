CREATE TABLE Rivenditore (
CodRivenditore INTEGER IDENTITY NOT NULL PRIMARY KEY, 
Nome VARCHAR(20) NOT NULL,
Indirizzo VARCHAR( 40 ) NOT NULL, 
Telefono VARCHAR( 14 ) NOT NULL, 
CodRegione INTEGER NOT NULL, 
FOREIGN KEY (CodRegione) REFERENCES Regione
(CodRegione)
		ON UPDATE CASCADE
		ON UPDATE CASCADE,
);

// alter table Rivenditore alter column CodRivenditore restart with 1;  




CREATE TABLE Regione (
CodRegione INTEGER IDENTITY  NOT NULL  PRIMARY KEY, 
Descrizione VARCHAR(30) NOT NULL)	;

// alter table Regione alter column CodRegione restart with 1	;




Create Table Prodotto (
IDProdotto INTEGER IDENTITY NOT NULL PRIMARY KEY,
CodProdotto VARCHAR( 30 ) NOT NULL,
Descrizione VARCHAR (40 ) NOT NULL,
Prezzo decimal ( 7.2 ) NOT NULL,
MargineGuadagno decimal ( 5,0 ) NOT NULL,

// alter table Regione alter column IDProdotto restart with 1	;




Create Table Vendite (
IDVendite INTEGER IDENTITY NOT NULL PRIMARY KEY,
CodRivenditore INTEGER NOT NULL,
IdProdotto INTEGER NOT NULL,
Data Date (AAAA/MM/DD) NOT NULL,
PrezzoVendita decimal ( 5,0 ) NOT NULL,
Quantità VARCHAR ( 10 ) NOT NULL,

FOREIGN KEY (CodRivenditore) REFERENCES Rivenditore
(CodRegione)
		ON UPDATE CASCADE
		ON UPDATE CASCADE,
FOREIGN KEY (IdProdotto) REFERENCES Prodotto
(IdProdotto)
		ON UPDATE CASCADE
		ON UPDATE CASCADE,
);

// alter table Vendite alter column IDVendite restart with 1	;




INSERT INTO  Rivenditore VALUES (NULL,'Mussano Cristina','Via Dei Gigli 3','0472288997','3');
INSERT INTO  Rivenditore VALUES (NULL,'Bertini Antonio','Via Dei Martiri 5','02288997','1');
INSERT INTO  Rivenditore VALUES (NULL,'Scarpa Germano','Via Dei Tigli 6','0345483927','2');
INSERT INTO  Rivenditore VALUES (NULL,'Libeggio Francesco','Via Giulio Tremonti 5','022483927','4');
INSERT INTO  Rivenditore VALUES (NULL,'Verdi Giuseppe','Via C.Malpighi 3','0373459375','5');
INSERT INTO  Regione VALUES (NULL,'Lombardia');
INSERT INTO  Regione VALUES (NULL,'Piemonte');
INSERT INTO  Regione VALUES (NULL,'Trentino Alto Adige');
INSERT INTO  Regione VALUES (NULL,'Veneto');
INSERT INTO  Regione VALUES (NULL,'Friuli Venezia Giulia');
INSERT INTO  Prodotto VALUES (NULL,'AF700','Magnetoterapia professionale','890.00','20');
INSERT INTO  Prodotto VALUES (NULL,'AF202','Magnetoterapia ambulatoriale domiciliare','385.00','20');
INSERT INTO  Prodotto VALUES (NULL,'AF200','Magnetoterapia domiciliare','248.00','20');
INSERT INTO  Prodotto VALUES (NULL,'AX404','TENS professionale','1149.00','15');
INSERT INTO  Prodotto VALUES (NULL,'ES300','Elettrostimolatore domiciliare','275.00','30');
INSERT INTO  Vendite VALUES (NULL,'TRA001','2','29/08/2016','1030','2');
INSERT INTO  Vendite VALUES (NULL,'LOM002','2','15/06/2016','940','3');
INSERT INTO  Vendite VALUES (NULL,'PIE003','2','21/05/2016','1000','4');
INSERT INTO  Vendite VALUES (NULL,'VEN004','2','23/09/2016','920','1');
INSERT INTO  Vendite VALUES (NULL,'FVG005','2','22/10/2016','950','5');
INSERT INTO  Vendite VALUES (NULL,'TRA001','4','29/04/2016','125','3');


