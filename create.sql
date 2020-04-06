create table osoby(
	id int identity(1,1) primary key,
	imi� varchar(30) not null,
	nazwisko varchar(30) not null,
	narodowo�� varchar(30) not null
);

create table mieszka�cy(
	id_osoba int references osoby 
		on delete cascade
		primary key,
	p�e� varchar(20) check (p�e� in ('Kobieta', 'M�czyzna')) not null,
	data_urodzenia date not null,
	pesel char(11),
	numer_paszportu varchar(20),
	data_�mierci date,
	id_matka int references osoby,
	id_ojciec int references osoby,
);

create table dzielnice(
	dzielnica varchar(30) primary key,
	kod_pocztowy char(6) unique
);

create table adresy(
	id int primary key,
	ulica varchar(30) not null,
	numer_budynku int not null,
	numer_mieszkania int,
	nazwa_dzielnicy varchar(30) references dzielnice not null
);

create table zameldowania(
	id int primary key,
	typ_zameldowania varchar(20) check (typ_zameldowania in ('Sta�e', 'Czasowe')),
	data_zameldowania date not null,
	aktualne_zameldowanie bit not null,
	id_mieszka�ca int references mieszka�cy
		on delete cascade
		not null,
	id_adresu int references adresy not null
);

create table dane(
	id int primary key,
	imi� varchar(30) not null,
	nazwisko varchar(30) not null,
	narodowo�� varchar(30) not null,
	p�e� varchar(20) check (p�e� in ('Kobieta', 'M�czyzna')),
	data_urodzenia date not null,
	pesel char(11)
);

alter table dane
	add numer_paszportu varchar(20);

create table cenniki(
	id int primary key,
	cena int check (cena > 0) 
);

create table urz�dnicy(
	imi� varchar(30),
	nazwisko varchar(30),
	data_urodzenia date,
	primary key (imi�, nazwisko, data_urodzenia)
);

create table wnioski(
	id int primary key,
	pow�d varchar(50) not null,
	data_z�o�enia date not null,
	data_wydania_aktu date,
	id_akt_zgonu int references mieszka�cy
		on delete cascade,
	id_wnioskuj�cy int references dane not null,
	id_osoby_dotycz�cej int references dane,
	id_cennik int references cenniki,
	imi�_urz�dnika varchar(30),
	nazwisko_urz�dnika varchar(30),
	data_urodzenia_urz�dnika date,
	foreign key (imi�_urz�dnika, nazwisko_urz�dnika, data_urodzenia_urz�dnika) references urz�dnicy
);

create table wnioski_zmiana_danych(
	id int primary key references wnioski,
	nowe_imi� varchar(30),
	nowe_nazwisko varchar(30),
	nowa_p�e� varchar(20) check (nowa_p�e� in ('Kobieta', 'M�czyzna')),
	id_mieszka�ca int references mieszka�cy
		on delete cascade,
);

create table wnioski_zameldowanie(
	id int primary key references wnioski,
	ulica varchar(30) not null,
	numer_budynku int not null,
	numer_mieszkania int,
	typ_zameldowania varchar(20) not null,
	id_zameldowania int references zameldowania
		on delete cascade,
);
