/* DELETE */
select *
	from mieszka�cy
select *
	from zameldowania

delete mieszka�cy
	where id_osoba= '27'

select *
	from mieszka�cy
select *
	from zameldowania

/* UPDATE po zmianie danych */
update osoby set imi� = 'Amelia' where id = '24';
update osoby set nazwisko = 'Inzaghi' where id = '12';
update mieszka�cy set p�e� = 'Kobieta' where id_osoba = '6';
select *
	from mieszka�cy
select *
	from osoby

/* Zmiana poprzedniego zameldowania na nieaktualne, dodanie nowego zameldowania i powi�zanie go z wnioskiem */
select *
	from wnioski_zameldowanie
select *
	from zameldowania

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '3';
insert into zameldowania values ('19', 'Sta�e', '2018-06-11','true','3','15');
update wnioski_zameldowanie set id_zameldowania = '19' where id = '18';

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '6';
insert into zameldowania values ('20', 'Sta�e', '2018-06-22','true','6','15');
update wnioski_zameldowanie set id_zameldowania = '20' where id = '19';

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '9';
insert into zameldowania values ('21', 'Sta�e', '2018-06-23','true','9','16');
update wnioski_zameldowanie set id_zameldowania = '21' where id = '20';

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '12';
insert into zameldowania values ('22', 'Sta�e', '2018-06-03','true','12','17');
update wnioski_zameldowanie set id_zameldowania = '22' where id = '21';

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '15';
insert into zameldowania values ('23', 'Sta�e', '2018-06-08','true','15','19');
update wnioski_zameldowanie set id_zameldowania = '23' where id = '22';

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '18';
insert into zameldowania values ('24', 'Sta�e', '2018-09-11','true','18','19');
update wnioski_zameldowanie set id_zameldowania = '24' where id = '23';

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '21';
insert into zameldowania values ('25', 'Sta�e', '2018-06-16','true','21','18');
update wnioski_zameldowanie set id_zameldowania = '25' where id = '24';

update zameldowania set aktualne_zameldowanie = 'false' where id_mieszka�ca = '24';
insert into zameldowania values ('26', 'Sta�e', '2018-06-24','true','24','20');
update wnioski_zameldowanie set id_zameldowania = '26' where id = '25';

select *
	from wnioski_zameldowanie
select *
	from zameldowania
