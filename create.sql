create table osoby(
	id int identity(1,1) primary key,
	imiê varchar(30) not null,
	nazwisko varchar(30) not null,
	narodowoœæ varchar(30) not null
);

create table mieszkañcy(
	id_osoba int references osoby 
		on delete cascade
		primary key,
	p³eæ varchar(20) check (p³eæ in ('Kobieta', 'Mê¿czyzna')) not null,
	data_urodzenia date not null,
	pesel char(11),
	numer_paszportu varchar(20),
	data_œmierci date,
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
	typ_zameldowania varchar(20) check (typ_zameldowania in ('Sta³e', 'Czasowe')),
	data_zameldowania date not null,
	aktualne_zameldowanie bit not null,
	id_mieszkañca int references mieszkañcy
		on delete cascade
		not null,
	id_adresu int references adresy not null
);

create table dane(
	id int primary key,
	imiê varchar(30) not null,
	nazwisko varchar(30) not null,
	narodowoœæ varchar(30) not null,
	p³eæ varchar(20) check (p³eæ in ('Kobieta', 'Mê¿czyzna')),
	data_urodzenia date not null,
	pesel char(11)
);

alter table dane
	add numer_paszportu varchar(20);

create table cenniki(
	id int primary key,
	cena int check (cena > 0) 
);

create table urzêdnicy(
	imiê varchar(30),
	nazwisko varchar(30),
	data_urodzenia date,
	primary key (imiê, nazwisko, data_urodzenia)
);

create table wnioski(
	id int primary key,
	powód varchar(50) not null,
	data_z³o¿enia date not null,
	data_wydania_aktu date,
	id_akt_zgonu int references mieszkañcy
		on delete cascade,
	id_wnioskuj¹cy int references dane not null,
	id_osoby_dotycz¹cej int references dane,
	id_cennik int references cenniki,
	imiê_urzêdnika varchar(30),
	nazwisko_urzêdnika varchar(30),
	data_urodzenia_urzêdnika date,
	foreign key (imiê_urzêdnika, nazwisko_urzêdnika, data_urodzenia_urzêdnika) references urzêdnicy
);

create table wnioski_zmiana_danych(
	id int primary key references wnioski,
	nowe_imiê varchar(30),
	nowe_nazwisko varchar(30),
	nowa_p³eæ varchar(20) check (nowa_p³eæ in ('Kobieta', 'Mê¿czyzna')),
	id_mieszkañca int references mieszkañcy
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
