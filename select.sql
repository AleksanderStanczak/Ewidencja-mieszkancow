/* 1. Poka� tych urz�dnik�w, kt�rzy w roku 2017 obs�u�yli ponad 5 wniosk�w. */
select imi�_urz�dnika,nazwisko_urz�dnika, count(*) as 'ilo��_wniosk�w'
	from wnioski
	where data_z�o�enia >=  '2017-01-01' 
	and data_z�o�enia < '2018-01-01'
	group by imi�_urz�dnika, nazwisko_urz�dnika
	having COUNT(*) > 5
	 
/* 2. Ile poszczeg�lny urz�dnik zarobi� pieni�dzy dla miasta poprzez obs�ug� wniosk�w (posortowane malej�co po kwocie) */
select imi�_urz�dnika,nazwisko_urz�dnika, sum(cena) as 'zarobione'
	from wnioski, cenniki, urz�dnicy
	where wnioski.imi�_urz�dnika = urz�dnicy.imi�
	and wnioski.nazwisko_urz�dnika = urz�dnicy.nazwisko
	and wnioski.data_urodzenia_urz�dnika = urz�dnicy.data_urodzenia
	and wnioski.id_cennik = cenniki.id
	group by imi�_urz�dnika, nazwisko_urz�dnika
	order by zarobione desc
	
/* 3. Wypisz pesel, numer paszportu wszystkich pe�noletnich mieszka�c�w z ulicy Warszawskiej */
select pesel, numer_paszportu
	from mieszka�cy join zameldowania 
		on mieszka�cy.id_osoba = zameldowania.id_mieszka�ca
		where zameldowania.id_adresu in
			(select id
				from adresy
					where ulica = 'Warszawska')
		and mieszka�cy.data_urodzenia <= '2001-01-17'

/* 4. Znajd� adresy os�b pr�buj�cych zmieni� imi�, nazwisko lub p�e� (posortuj alfabetycznie po nazwisku) */
create view zmieniaj�cy_dane
	as select *
		from osoby
		where osoby.id in	
		(select mieszka�cy.id_osoba	
			from mieszka�cy join wnioski_zmiana_danych 
			on mieszka�cy.id_osoba = wnioski_zmiana_danych.id_mieszka�ca)
	with check option;

create view adresy_zmieniaj�cych_dane
	as select *
		from adresy
			where adresy.id in
			(select id_adresu
				from zameldowania
					where id_mieszka�ca in
						(select id_osoba
							from mieszka�cy
								where id_osoba in
									(select id_mieszka�ca
										from wnioski_zmiana_danych)))
	with check option;

select imi�, nazwisko, ulica, numer_budynku, numer_mieszkania
	from zmieniaj�cy_dane, adresy_zmieniaj�cych_dane
		where zmieniaj�cy_dane.id in
		(select id_mieszka�ca 
			from zameldowania
			where id_adresu = adresy_zmieniaj�cych_dane.id)
	order by nazwisko asc

--drop view zmieniaj�cy_dane	
--drop view adresy_zmieniaj�cych_dane	

/* 5. Poka� malej�co ile zameldowa� by�o we wszystkich dzielnicach w 2018 roku  */
select dzielnica, count(*) as 'liczba_mieszka�c�w'
	from dzielnice, adresy, zameldowania
	where dzielnice.dzielnica = adresy.nazwa_dzielnicy
	and adresy.id = zameldowania.id_adresu
	group by dzielnica 
	order by liczba_mieszka�c�w desc

/* 6. Wypisz wszystkie p�atno�ci mieszka�c�w (sk�adaj�cych wnioski) od najnowszej (tak jakby historia transakcji)*/
select imi�, nazwisko, pow�d, data_z�o�enia, cena
	from dane, cenniki, wnioski
	where dane.id = wnioski.id_wnioskuj�cy
	and wnioski.id_cennik = cenniki.id	order by data_z�o�enia desc

/*7. Poka� nazwe ulicy (lub ulic) na kt�rej by�o i jest najwi�cej zameldowanych os�b */
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

