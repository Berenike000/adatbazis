CREATE TABLE UGYFEL
(LOGIN varchar(32) NOT NULL PRIMARY KEY,
EMAIL varchar(64) MASKED WITH (Function = 'email()') NOT NULL ,
NEV varchar(64) MASKED WITH (Function = 'partial(1,"XXX",1)') NOT NULL,
SZULEV numeric(4) MASKED WITH (FUNCTION = 'random(1,5)'),
NEM varchar(1) MASKED WITH (function = 'default()'),
CIM varchar(128) MASKED WITH (function = 'default()')
);

INSERT INTO UGYFEL
VALUES
('Anna123','anna.amadeus@gmail.com','Ananász Anna', 2001, 'N', 'Alma utca 1.'),
('Bella456','bellus.bella@hotmail.com','Banán Bella', 1997,'N','Borjú út 2.'),
('Cézár789','cezarius@gmail.com','Júliusz Cézár', 1000,'F','Római Birodalom'),
('DettiXYZ','dettina123@edu.hu','Dettina',1720,'N','Dinnye utca 13.'),
('Edinaaaa','edina.kovacs@nemtommiez.com','Edina',2222,'N','Elektromos utca 999.');

CREATE USER MaskUser2 WITHOUT Login;
GRANT SELECT ON UGYFEL TO MaskUser2

EXECUTE AS User= 'MaskUser2';
SELECT * FROM UGYFEL
REVERT