/* OSOBY */
insert into osoby values ('Krzysztof', 'Ostrowski', 'Polska');
insert into osoby values ('Joanna', 'Krzak', 'Polska');
insert into osoby values ('Marek', 'Ostrowski', 'Polska');
insert into osoby values ('Jakub', 'Walasek', 'Polska');
insert into osoby values ('Magdalena', 'Walasek', 'Polska');
insert into osoby values ('Aleksander', 'Walasek', 'Polska');
insert into osoby values ('Karol', 'Kowalski', 'Polska');
insert into osoby values ('Julia', 'Kowalska', 'Polska');
insert into osoby values ('Sylwia', 'Kowalska', 'Polska');
insert into osoby values ('August', 'Chiesa', 'W³ochy');
insert into osoby values ('Maria', 'Chiesa', 'W³ochy');
insert into osoby values ('Federico', 'Chiesa', 'W³ochy');
insert into osoby values ('Marek', 'Cygan', 'Polska');
insert into osoby values ('Marta', 'Cygan', 'Polska');
insert into osoby values ('Kornelia', 'Cygan', 'Polska');
insert into osoby values ('Jacek', 'Braciak', 'Polska');
insert into osoby values ('Joanna', 'Braciak', 'Polska');
insert into osoby values ('Marta', 'Braciak', 'Polska');
insert into osoby values ('Robert', 'Kowalkiewicz', 'Polska');
insert into osoby values ('Martyna', 'Kowalkiewicz', 'Polska');
insert into osoby values ('Stefan', 'Kowalkiewicz', 'Polska');
insert into osoby values ('Henryk', 'Nowak', 'Polska');
insert into osoby values ('Magdalena', 'Nowak', 'Polska');
insert into osoby values ('Julia', 'Nowak', 'Polska');
insert into osoby values ('Anton', 'Rode', 'Niemcy');
insert into osoby values ('Monika', 'Markowska', 'Polska');
insert into osoby values ('Aleksander', 'Rode', 'Niemcy');
insert into osoby values ('Krzysztof', 'Wasilewski', 'Polska');
insert into osoby values ('Katarzyna', 'Wasilewska', 'Polska');
insert into osoby values ('Marta', 'Kowalska', 'Polska');
insert into osoby values ('Karol', 'Chrobry', 'Polska');
insert into osoby values ('Kornelia', 'Chrobry', 'Polska');
insert into osoby values ('Zdzis³aw', 'Chrobry', 'Polska');
insert into osoby values ('Maksymilian', 'Chrobry', 'Polska');
insert into osoby values ('Cezary', '£obodziñski', 'Polska');
insert into osoby values ('Magdalena', 'Cygan', 'Polska');
insert into osoby values ('Teodor', 'Braciak', 'Polska');
insert into osoby values ('Cezary', 'Braciak', 'Polska');

/* MIESZKAÑCY */
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, id_matka, id_ojciec)
	values ((select id from osoby where id = '3') , 'Mê¿czyzna', '1962-11-23', '62112356942', '2', '1');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, id_matka, id_ojciec)
	values ((select id from osoby where id = '6') , 'Mê¿czyzna', '1990-06-29', '90062945156', '5', '4');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, id_matka, id_ojciec )
	values ((select id from osoby where id = '9'), 'Kobieta', '1970-03-10', '70031046159', '8', '7');
insert into mieszkañcy (id_osoba,p³eæ, data_urodzenia, numer_paszportu, id_matka, id_ojciec )
	values ((select id from osoby where id = '12'), 'Mê¿czyzna', '1999-12-18', '12652389412', '11', '10');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, id_matka, id_ojciec )
	values ((select id from osoby where id = '15'), 'Kobieta', '1996-01-19', '96011942153', '14', '13');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, id_matka, id_ojciec )
	values ((select id from osoby where id = '18'), 'Kobieta', '1988-11-02', '88110242561', '17', '16');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '21'), 'Mê¿czyzna', '1953-05-11', '5305114256','2012-09-03', '20', '19');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, id_matka, id_ojciec )
	values ((select id from osoby where id = '24'), 'Kobieta', '1959-10-19', '59101956723', '23', '22');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, numer_paszportu, id_matka, id_ojciec )
	values ((select id from osoby where id = '27'), 'Mê¿czyzna', '1992-07-22', '67652389445', '26', '25');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '30'), 'Mê¿czyzna', '1928-03-24', '28062445156', '2017-01-15',  '29', '28');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka)
	values ((select id from osoby where id = '31'), 'Mê¿czyzna', '1928-02-26', '28062445153', '2017-01-21',  '23');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '32'), 'Mê¿czyzna', '1966-09-23', '66062445112', '2017-02-23',  '23', '19');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '33'), 'Mê¿czyzna', '1939-10-20', '39062445152', '2017-01-28',  '23', '28');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '34'), 'Mê¿czyzna', '1920-06-20', '20062445159', '2017-01-29',  '23', '22');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '35'), 'Mê¿czyzna', '2002-10-29', '02102445141', '2017-01-29',  '20', '28');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '36'), 'Mê¿czyzna', '1988-11-14', '88062445153', '2017-01-10',  '17', '28');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '37'), 'Mê¿czyzna', '1938-12-23', '38062445158', '2017-01-21',  '17', '28');
insert into mieszkañcy (id_osoba, p³eæ, data_urodzenia, pesel, data_œmierci, id_matka, id_ojciec )
	values ((select id from osoby where id = '38'), 'Mê¿czyzna', '1938-06-20', '38062445150', '2017-01-22',  '17', '25');

/* DZIELNICE */
insert into dzielnice values ('Œródmieœcie', '85-123');
insert into dzielnice values ('Makowo', '85-124');
insert into dzielnice values ('Brêtowo', '85-125');

/* ADRESY */
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('1', 'Warszawska', '5', '12', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('2', 'Korfantego', '49', '6', 'Œródmieœcie');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('3', 'Brzozowa', '52', 'Makowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('4', 'Warszawska', '29','Brêtowo');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('5', 'Lema', '26', '12', 'Makowo');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('6', 'Bydgoska', '23', '12', 'Œródmieœcie');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('7', 'Pi³sudskiego', '53', 'Œródmieœcie');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('8', 'Lema', '2', 'Makowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('9', 'Bydgoska', '12', 'Œródmieœcie');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('10', 'Warszawska', '6', '13', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('11', 'Warszawska', '6', '16', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('12', 'Warszawska', '4', '12', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('13', 'Warszawska', '5', '3', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, numer_mieszkania, nazwa_dzielnicy) 
	values ('14', 'Warszawska', '5', '8', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('15', 'Warszawska', '36', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('16', 'Warszawska', '21', 'Brêtowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('17', 'Lema', '22', 'Makowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('18', 'Lema', '2', 'Makowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('19', 'Brzozowa', '21', 'Makowo');
insert into adresy (id, ulica, numer_budynku, nazwa_dzielnicy) 
	values ('20', 'Brzozowa', '6', 'Makowo');

/* ZAMELDOWANIA */
insert into zameldowania values ('1', 'Sta³e', '2010-02-21','true','3','1');
insert into zameldowania values ('2', 'Sta³e', '2018-06-29','true','6','2');
insert into zameldowania values ('3', 'Sta³e', '2012-03-26','true','9','3');
insert into zameldowania values ('4', 'Sta³e', '2006-12-03','true','12','4');
insert into zameldowania values ('5', 'Sta³e', '2018-06-14','true','15','5');
insert into zameldowania values ('6', 'Sta³e', '2016-09-15','true','18','6');
insert into zameldowania values ('7', 'Sta³e', '2014-06-14','true','21','7');
insert into zameldowania values ('8', 'Sta³e', '2017-11-16','true','24','8');
insert into zameldowania values ('9', 'Czasowe', '2017-01-11','true','27','9');
insert into zameldowania values ('10', 'Sta³e', '2011-07-20','true','30','10');
insert into zameldowania values ('11', 'Sta³e', '2011-07-26','false','31','11');
insert into zameldowania values ('12', 'Sta³e', '2011-07-26','false','32','12');
insert into zameldowania values ('13', 'Sta³e', '2012-07-23','false','33','10');
insert into zameldowania values ('14', 'Sta³e', '2013-12-20','false','34','14');
insert into zameldowania values ('15', 'Sta³e', '2015-08-20','false','35','1');
insert into zameldowania values ('16', 'Czasowe', '2016-07-28','false','36','1');
insert into zameldowania values ('17', 'Sta³e', '2010-06-20','false','37','2');
insert into zameldowania values ('18', 'Sta³e', '2000-07-27','false','38','3');

/* DANE (DO WNIOSKÓW) */
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('1', 'Krzysztof', 'Ostrowski', 'Polska', 'Mê¿czyzna', '1962-11-23', '62112356942');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('2', 'Marek', 'Ostrowski', 'Polska', 'Mê¿czyzna', '1995-06-23', '95062345123');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('3', 'Aleksander', 'Walasek', 'Polska', 'Kobieta', '1990-06-29', '90062945156');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('4', 'Sylwia', 'Kowalska', 'Polska', 'Kobieta', '1970-03-10', '70031046159');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, numer_paszportu)
	values ('5', 'Maria', 'Chiesa', 'W³ochy', 'Kobieta', '1969-02-26', '32564821569');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('6', 'Federico', 'Chiesa', 'W³ochy', 'Mê¿czyzna', '1999-12-18', '12652389412');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('7', 'Kornelia', 'Cygan', 'Polska', 'Kobieta', '1996-01-19', '96011942153');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('8', 'Marta', 'Braciak', 'Polska', 'Kobieta', '1988-11-02', '88110242561');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('9', 'Stefan', 'Kowalkiewicz', 'Polska', 'Mê¿czyzna', '1953-05-11', '5305114256');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('10', 'Julia', 'Nowak', 'Polska', 'Kobieta', '1959-10-19', '9101956723');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, numer_paszportu)
	values ('11', 'Aleksander', 'Rode', 'Niemcy', 'Mê¿czyzna', '1992-07-22', '67652389445');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('12', 'Karol', 'Wasilewski', 'Polska', 'Mê¿czyzna', '1968-06-24', '68062445156');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('13', 'Adam', 'Banan', 'Polska', 'Mê¿czyzna', '1999-06-24', '99062445156');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('14', 'Henryk', 'Markowski', 'Polska', 'Mê¿czyzna', '1956-06-24', '56062445156');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('15', 'Ana', 'Wojtkowiak', 'Polska', 'Kobieta', '1995-06-12', '95062445156');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('16', 'Marta', 'Majchrowska', 'Polska', 'Kobieta', '1985-12-13', '85062445156');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('17', 'Agnieszka', 'Sztamp', 'Polska', 'Kobieta', '1956-06-10', '56062445156');
insert into dane (id, imiê, nazwisko, narodowoœæ, p³eæ, data_urodzenia, pesel)
	values ('18', 'Zofia', 'Wojtkowiak', 'Polska', 'Kobieta', '1975-01-03', '75062445156');

/* CENNIKI */
insert into cenniki(id, cena)
	values('1', '30');
insert into cenniki(id, cena)
	values('2', '20');
insert into cenniki(id, cena)
	values('3', '35');
insert into cenniki(id, cena)
	values('4', '46');
insert into cenniki(id, cena)
	values('5', '28');
insert into cenniki(id, cena)
	values('6', '59');

/* URZÊDNICY */
insert into urzêdnicy(imiê, nazwisko, data_urodzenia)
	values('Aleksandra', 'Macharska', '1958-02-27');
insert into urzêdnicy(imiê, nazwisko, data_urodzenia)
	values('Henryk', 'Zieliñski', '1978-12-20');
insert into urzêdnicy(imiê, nazwisko, data_urodzenia)
	values('Halina', 'Kosmyk', '1966-03-17');
insert into urzêdnicy(imiê, nazwisko, data_urodzenia)
	values('Krzysztof', 'Wêgrzyn', '1941-09-12');
insert into urzêdnicy(imiê, nazwisko, data_urodzenia)
	values('Alicja', 'Marek', '1987-03-02');

/* WNIOSKI */
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('1', 'Œmieræ mieszkañca', '2017-02-03','2017-02-04','30','1','2','3','Aleksandra','Macharska','1958-02-27');
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('2', 'Œmieræ mieszkañca', '2017-06-02','2017-06-04','31','3','4','3','Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('3', 'Œmieræ mieszkañca', '2017-02-03','32','5','6','3','Aleksandra','Macharska','1958-02-27');
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('4', 'Œmieræ mê¿a', '2017-02-03','2017-02-16','33','7','8','3','Aleksandra','Macharska','1958-02-27');
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('5', 'Œmieræ córki', '2017-02-03','2017-02-05','34','9','10','6','Aleksandra','Macharska','1958-02-27');
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('6', 'Œmieræ mieszkañca', '2017-06-28','2017-07-01','35','1','7','6','Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('7', 'Œmieræ mieszkañca', '2017-07-01','2017-07-06','36','2','12','6','Aleksandra','Macharska','1958-02-27');
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('8', 'Œmieræ mieszkañca', '2017-06-25','2017-06-30','37','6','13','6','Henryk','Zieliñski','1978-12-20');
insert into wnioski(id, powód, data_z³o¿enia, data_wydania_aktu, id_akt_zgonu, id_wnioskuj¹cy, 
	id_osoby_dotycz¹cej, id_cennik, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('9', 'Œmieræ mieszkañca', '2017-05-29','2017-05-30','38','14','15','6','Aleksandra','Macharska','1958-02-27');

/* WNIOSKI O ZMIANÊ DANYCH */
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('10', 'Nie lubiê swojego imienia', '2018-02-23','10', 'Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('11', 'Koledzy œmiej¹ siê z mojego nazwiska', '2018-06-01','1', 'Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('12', 'Moje imiê to powód do wstydu', '2018-03-26','1', 'Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('13', 'Nie lubiê swojego nazwiska', '2018-01-02','6', 'Henryk','Zieliñski','1978-12-20');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('14', 'Chcê przyj¹æ nazwisko na czeœæ Leo Messiego', '2018-01-20','11', 'Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('15', 'Czujê siê mê¿czyzn¹', '2018-01-29','4', 'Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('16', 'Czujê siê kobiet¹', '2018-02-12','9', 'Alicja','Marek','1987-03-02');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('17', 'Czujê siê kobiet¹', '2018-03-20','3', 'Henryk','Zieliñski','1978-12-20');

insert into wnioski_zmiana_danych(id, nowe_imiê, id_mieszkañca)
	values ((select id from wnioski where id = '10') , 'Amelia', '24');
insert into wnioski_zmiana_danych(id, nowe_imiê, id_mieszkañca)
	values ((select id from wnioski where id = '12') , 'Amadeusz', '3');
insert into wnioski_zmiana_danych(id, nowe_nazwisko, id_mieszkañca)
	values ((select id from wnioski where id = '11') , 'Waluszkiewicz', '3');
insert into wnioski_zmiana_danych(id, nowe_nazwisko, id_mieszkañca)
	values ((select id from wnioski where id = '13') , 'Inzaghi', '12');
insert into wnioski_zmiana_danych(id, nowe_nazwisko, id_mieszkañca)
	values ((select id from wnioski where id = '14') , 'Messi', '27');
insert into wnioski_zmiana_danych(id, nowa_p³eæ, id_mieszkañca)
	values ((select id from wnioski where id = '15') , 'Mê¿czyzna', '9');
insert into wnioski_zmiana_danych(id, nowa_p³eæ, id_mieszkañca)
	values ((select id from wnioski where id = '16') , 'Kobieta', '21');
insert into wnioski_zmiana_danych(id, nowa_p³eæ, id_mieszkañca)
	values ((select id from wnioski where id = '17') , 'Kobieta', '6');

/* WNIOSKI O ZAMELDOWANIE */
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('18', 'Zmiana adresu', '2018-03-01','1', 'Henryk','Zieliñski','1978-12-20');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('19', 'Zmiana adresu', '2018-04-09','2', 'Henryk','Zieliñski','1978-12-20');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('20', 'Zmiana adresu', '2018-04-06','3', 'Aleksandra','Macharska','1958-02-27');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('21', 'Zmiana adresu', '2018-04-06','4', 'Henryk','Zieliñski','1978-12-20');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('22', 'Zmiana adresu', '2018-04-02','5', 'Henryk','Zieliñski','1978-12-20');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('23', 'Zmiana adresu', '2018-05-02','6', 'Aleksandra','Macharska','1958-02-27');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('24', 'Zmiana adresu', '2018-04-26','7', 'Henryk','Zieliñski','1978-12-20');
insert into wnioski(id, powód, data_z³o¿enia, id_wnioskuj¹cy, imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika)
		values('25', 'Zmiana adresu', '2018-04-12','8', 'Henryk','Zieliñski','1978-12-20');

insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '18') , 'Warszawska', '36', 'Sta³e');
insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '19') , 'Warszawska', '36', 'Sta³e');
insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '20') , 'Warszawska', '21', 'Sta³e');
insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '21') , 'Lema', '22', 'Sta³e');
insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '22') , 'Brzozowa', '21', 'Sta³e');
insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '23') , 'Brzozowa', '21', 'Sta³e');
insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '24') , 'Lema', '2', 'Sta³e');
insert into wnioski_zameldowanie(id, ulica, numer_budynku, typ_zameldowania)
	values ((select id from wnioski where id = '25') , 'Brzozowa', '6', 'Sta³e');
