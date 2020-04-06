/* 1. Poka¿ tych urzêdników, którzy w roku 2017 obs³u¿yli ponad 5 wniosków. */
select imiê_urzêdnika,nazwisko_urzêdnika, count(*) as 'iloœæ_wniosków'
	from wnioski
	where data_z³o¿enia >=  '2017-01-01' 
	and data_z³o¿enia < '2018-01-01'
	group by imiê_urzêdnika, nazwisko_urzêdnika
	having COUNT(*) > 5
	 
/* 2. Ile poszczególny urzêdnik zarobi³ pieniêdzy dla miasta poprzez obs³ugê wniosków (posortowane malej¹co po kwocie) */
select imiê_urzêdnika,nazwisko_urzêdnika, sum(cena) as 'zarobione'
	from wnioski, cenniki, urzêdnicy
	where wnioski.imiê_urzêdnika = urzêdnicy.imiê
	and wnioski.nazwisko_urzêdnika = urzêdnicy.nazwisko
	and wnioski.data_urodzenia_urzêdnika = urzêdnicy.data_urodzenia
	and wnioski.id_cennik = cenniki.id
	group by imiê_urzêdnika, nazwisko_urzêdnika
	order by zarobione desc
	
/* 3. Wypisz pesel, numer paszportu wszystkich pe³noletnich mieszkañców z ulicy Warszawskiej */
select pesel, numer_paszportu
	from mieszkañcy join zameldowania 
		on mieszkañcy.id_osoba = zameldowania.id_mieszkañca
		where zameldowania.id_adresu in
			(select id
				from adresy
					where ulica = 'Warszawska')
		and mieszkañcy.data_urodzenia <= '2001-01-17'

/* 4. ZnajdŸ adresy osób próbuj¹cych zmieniæ imiê, nazwisko lub p³eæ (posortuj alfabetycznie po nazwisku) */
create view zmieniaj¹cy_dane
	as select *
		from osoby
		where osoby.id in	
		(select mieszkañcy.id_osoba	
			from mieszkañcy join wnioski_zmiana_danych 
			on mieszkañcy.id_osoba = wnioski_zmiana_danych.id_mieszkañca)
	with check option;

create view adresy_zmieniaj¹cych_dane
	as select *
		from adresy
			where adresy.id in
			(select id_adresu
				from zameldowania
					where id_mieszkañca in
						(select id_osoba
							from mieszkañcy
								where id_osoba in
									(select id_mieszkañca
										from wnioski_zmiana_danych)))
	with check option;

select imiê, nazwisko, ulica, numer_budynku, numer_mieszkania
	from zmieniaj¹cy_dane, adresy_zmieniaj¹cych_dane
		where zmieniaj¹cy_dane.id in
		(select id_mieszkañca 
			from zameldowania
			where id_adresu = adresy_zmieniaj¹cych_dane.id)
	order by nazwisko asc

--drop view zmieniaj¹cy_dane	
--drop view adresy_zmieniaj¹cych_dane	

/* 5. Poka¿ malej¹co ile zameldowañ by³o we wszystkich dzielnicach w 2018 roku  */
select dzielnica, count(*) as 'liczba_mieszkañców'
	from dzielnice, adresy, zameldowania
	where dzielnice.dzielnica = adresy.nazwa_dzielnicy
	and adresy.id = zameldowania.id_adresu
	group by dzielnica 
	order by liczba_mieszkañców desc

/* 6. Wypisz wszystkie p³atnoœci mieszkañców (sk³adaj¹cych wnioski) od najnowszej (tak jakby historia transakcji)*/
select imiê, nazwisko, powód, data_z³o¿enia, cena
	from dane, cenniki, wnioski
	where dane.id = wnioski.id_wnioskuj¹cy
	and wnioski.id_cennik = cenniki.id	order by data_z³o¿enia desc

/*7. Poka¿ nazwe ulicy (lub ulic) na której by³o i jest najwiêcej zameldowanych osób */
select ulica, count (zameldowania.id) as ilosc_zameldowan
	from adresy, zameldowania
	where adresy.id = zameldowania.id_adresu 
	group by ulica
	having count (zameldowania.id) =
	(select top 1 count (zameldowania.id) as ilosc_zameldowan
		from adresy, zameldowania
		where adresy.id = zameldowania.id_adresu
		group by ulica
		order by ilosc_zameldowan desc)

