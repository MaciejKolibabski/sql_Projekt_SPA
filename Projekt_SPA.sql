

--Tworzenie tabel

        create database SPA

        create table Spa (
        id_spa int not null,
        Nazwa varchar(255),
        Miasto varchar (255),

        PRIMARY KEY(id_spa),
        );

        create table Stanowisko (
        id_stanowiska int not null,
        Nazwa varchar(20),
        stawka_min int,
        stawka_max int,

        PRIMARY KEY(id_stanowiska),
        );

        create table Pracownik (
        id_pracownika int not null,
        imie varchar(20),
        nazwisko varchar(25),
        nrtel varchar(12),
        wynagrodzenie int,
        data_zatrudnienia date,
        id_spa int,
        id_stanowiska int ,
        id_kierownika int,

        PRIMARY KEY (id_pracownika),
        CONSTRAINT FK_prac_spa FOREIGN KEY (id_spa) references Spa(id_spa),
        CONSTRAINT FK_prac_stan FOREIGN KEY (id_stanowiska) references Stanowisko(id_stanowiska),
        );

        create table Usluga (
        id_uslugi int not null,
        nazwa_uslugi varchar(50),
        cena int,


        PRIMARY KEY(id_uslugi),
        );

        create table Klient (
        id_klienta int not null,
        imie varchar(20),
        nazwisko varchar(25),
        nrtel varchar(12),
        email varchar(50),

        PRIMARY KEY(id_klienta),
        );

        create table Rezerwacja (
        id_rezerwacji int not null,
        id_spa int,
        id_klienta int,
        id_uslugi int,
        data_rozpoczecia date,
        data_zakonczenia date,
        liczba_osob int,

        PRIMARY KEY(id_rezerwacji),
        CONSTRAINT FK_rez_spa FOREIGN KEY (id_spa) references Spa(id_spa),
        CONSTRAINT FK_rez_kli FOREIGN KEY (id_klienta) references Klient(id_klienta),
        CONSTRAINT FK_rez_usl FOREIGN KEY (id_uslugi) references Usluga(id_uslugi),
        );



--Uzupełnianie tabel

--Spa
        insert into Spa values (1, 'Nosalowy Dwór Resort&SPA', 'Zakopane')
        insert into Spa values (2, 'Royal Baltic', 'Ustka')
        insert into Spa values (3, 'Marriott', 'Sopot')

--Stanowisko
        insert into Stanowisko values (100, 'Dyrektor', 30000, 80000)
        insert into Stanowisko values (101, 'Manager', 12000, 19000)
        insert into Stanowisko values (102, 'Recepcja', 4300, 6900)
        insert into Stanowisko values (103, 'Kosmetyczka', 4400, 8100)
        insert into Stanowisko values (104, 'Masażysta', 4500, 10500)
        insert into Stanowisko values (105, 'Fizjoterapeuta', 5700, 9200)
        insert into Stanowisko values (106, 'Sprzątaczka', 2000, 4300)
        insert into Stanowisko values (107, 'Ratownik', 3100, 5400)
        insert into Stanowisko values (108, 'Trener personalny', 4300, 6700)

--Pracownik
        insert into Pracownik VALUES (1, 'Andrzej', 'Kwiatkowski', '509898223' ,67000, '2018-07-22', 1, 100, NULL)
        insert into Pracownik VALUES (2, 'Jakub', 'Kowalski', '679456324' ,13000, '2018-09-18', 1, 101, 1)
        insert into Pracownik VALUES (3, 'Julia', 'Sadowska', '709854223' ,6000, '2018-07-24', 1, 102, 2)
        insert into Pracownik VALUES (4, 'Amelia', 'Lewandowska', '894554243' ,6000, '2018-07-25', 1, 102, 2)
        insert into Pracownik VALUES (5, 'Zuzanna', 'Tomaszewska', '854123243' ,7800, '2018-08-24', 1, 103, 2)
        insert into Pracownik VALUES (6, 'Aniela', 'Chmielewska', '895683122' ,5600, '2018-07-24', 1, 103, 2)
        insert into Pracownik VALUES (7, 'Alfred', 'Makowski', '345712978' ,9300, '2018-09-01', 1, 104, 2)
        insert into Pracownik VALUES (8, 'Konrad', 'Górski', '899567223' ,5700, '2018-09-05', 1, 105, 2)
        insert into Pracownik VALUES (9, 'Aleksandra', 'Pawlak', '543684678' ,4300, '2018-07-29', 1, 106, 2)
        insert into Pracownik VALUES (10, 'Martin', 'Jaworski', '216735070' ,5400, '2018-08-01', 1, 107, 2)

        insert into Pracownik VALUES (11, 'Kornelia', 'Kamińska', '539177778' ,79000, '2017-02-21', 2, 100, NULL)
        insert into Pracownik VALUES (12, 'Adrianna ', 'Kubiak', '896651401' ,12000, '2017-02-22', 2, 101, 11)
        insert into Pracownik VALUES (13, 'Pamela ', 'Szczepańska', '515432304' ,5600, '2017-07-24', 2, 102, 12)
        insert into Pracownik VALUES (14, 'Juliusz ', 'Wiśniewski', '604997524' ,4300, '2017-07-30', 2, 102, 12)
        insert into Pracownik VALUES (15, 'Marcelina ', 'Pietrzak', '380690347' ,6200, '2017-09-03', 2, 103, 12)
        insert into Pracownik VALUES (16, 'Diego ', 'Górecki', '696734241' ,10100, '2017-09-12', 2, 104, 12)
        insert into Pracownik VALUES (17, 'Ewelina ', 'Maciejewska', '306540318' ,8800, '2017-09-05', 2, 105, 12)
        insert into Pracownik VALUES (18, 'Maksymilian ', 'Michalak', '591714408' ,2100, '2017-10-05', 2, 106, 12)
        insert into Pracownik VALUES (19, 'Eleonora ', 'Czarnecka', '679857089' ,4200, '2017-11-02', 2, 107, 12)

        insert into Pracownik VALUES (20, 'Jowita', 'Jaworska', '455718700' ,65000, '2020-12-01', 3, 100, NULL)
        insert into Pracownik VALUES (21, 'Agnieszka', 'Laskowska', '363025092' ,15600, '2020-12-04', 3, 101, 20)
        insert into Pracownik VALUES (22, 'Natasza', 'Krupa', '829785416' ,6900, '2020-12-06', 3, 102, 21)
        insert into Pracownik VALUES (23, 'Urszula', 'Stępień', '111801075' ,8100, '2020-12-08', 3, 103, 21)
        insert into Pracownik VALUES (24, 'Jerzy', 'Mazurek', '289811912' ,8700, '2020-12-11', 3, 104, 21)
        insert into Pracownik VALUES (25, 'Konstanty', 'Szymański', '210797538' ,7400, '2020-12-12', 3, 105, 21)
        insert into Pracownik VALUES (26, 'Asia', 'Pietrzak', '111801075' ,3900, '2020-12-16', 3, 106, 21)
        insert into Pracownik VALUES (27, 'Żaneta ', 'Nowak', '413671813' ,4900, '2020-12-21', 3, 107, 21)



--usluga
        insert into Usluga values (1, 'masaż twarzy', 100)
        insert into Usluga values (2, 'masaż klasyczny', 250)
        insert into Usluga values (3, 'masaż relaksacyjny', 250)
        insert into Usluga values (4, 'masaż sportowy', 300)
        insert into Usluga values (5, 'masaż świecą', 150)
        insert into Usluga values (6, 'masaż stóp', 140)
        insert into Usluga values (7, 'masaż gorącymi kamieniami', 220)
        insert into Usluga values (8, 'elektrostymulacja', 320)
        insert into Usluga values (9, 'jacuzzi', 50)
        insert into Usluga values (10, 'sauna', 50)
        insert into Usluga values (11, 'manicure', 120)
        insert into Usluga values (12, 'pedicure', 120)

--klient
        insert into Klient values (1, 'Kamil', 'Ślimak', 'kamilos@gmail.com', '541524531')
        insert into Klient values (2, 'Kacper', 'Kowalski', 'kapi@gmail.com', '876135876')
        insert into Klient values (3, 'Maja', 'Konieczna', 'majka@gmail.com', '756187564')
        insert into Klient values (4, 'Daria', 'Wilk', 'dariusia@gmail.com', '567987567')
        insert into Klient values (5, 'Natalia', 'Błaszczak', 'natka@gmail.com', '789099876')
        insert into Klient values (6, 'Karolina', 'Marynarz', 'mari123@gmail.com', '654123654')
        insert into Klient values (7, 'Dariusz', 'Morzejewski', 'daroo@gmail.com', '765456123')
        insert into Klient values (8, 'Monika', 'Brzęczek', 'moniatoja@gmail.com', '876456123')
        insert into Klient values (9, 'Kinga', 'Małecka', 'kiniahehe@gmail.com', '555443765')
        insert into Klient values (10, 'Julia', 'Nowak', 'julix@gmail.com', '543122876')
        insert into Klient values (11, 'Krzysztof', 'Piątek', 'piopio@gmail.com', '654987654')
        insert into Klient values (12, 'Robert', 'Lewandowski', 'rl9@gmail.com', '601391425')
        insert into Klient values (13, 'Anna', 'Lewandowska', 'annalew@gmail.com', '504356876')
        insert into Klient values (14, 'Weronika', 'Sowa', 'wersow@gmail.com', '632876509')
        insert into Klient values (15, 'Karol', 'Wiśniewski', 'wisnia@gmail.com', '655412351')
        insert into Klient values (16, 'Mateusz', 'Trąbka', 'tromba@gmail.com', '576986312')
        insert into Klient values (17, 'Mateusz', 'Zawistowski', 'zabson@gmail.com', '61957195')
        insert into Klient values (18, 'Angelika', 'Mucha', 'moonster@gmail.com', '777666111')
        insert into Klient values (19, 'Wiktoria', 'Gąsiewska', 'wikawika@gmail.com', '701456876')
        insert into Klient values (20, 'Nicole', 'Gąsiewska', 'nicoleyoung@gmail.com', '541524531')
        insert into Klient values (21, 'Łukasz', 'Fabiański', 'fabiano@gmail.com', '541524531')

--rezerwacje
        insert into Rezerwacja values (1, 1, 2, 8, '2021-10-01', '2021-10-05', 2)
        insert into Rezerwacja values (2, 3, 1, 1, '2021-10-04', '2021-10-06', 4)
        insert into Rezerwacja values (3, 2, 3, 5, '2021-10-05', '2021-10-8', 2)
        insert into Rezerwacja values (4, 2, 10, 7, '2021-10-05', '2021-10-10', 3)
        insert into Rezerwacja values (5, 1, 20, 12, '2021-10-07', '2021-10-09', 1)
        insert into Rezerwacja values (6, 2, 21, 10, '2021-10-10', '2021-10-15', 5)
        insert into Rezerwacja values (7, 2, 14, 10, '2021-10-15', '2021-10-20', 5)
        insert into Rezerwacja values (8, 3, 11, 11, '2021-10-19', '2021-10-21', 3)
        insert into Rezerwacja values (9, 3, 12, 4, '2021-10-21', '2021-10-24', 4)
        insert into Rezerwacja values (10, 1, 10, 1, '2021-10-28', '2021-10-30', 4)
        insert into Rezerwacja values (11, 2, 5, 2, '2021-11-01', '2021-11-04', 4)
        insert into Rezerwacja values (12, 1, 9, 2, '2021-11-04', '2021-11-05', 2)
        insert into Rezerwacja values (13, 2, 1, 4, '2021-11-05', '2021-11-06', 2)
        insert into Rezerwacja values (14, 1, 4, 5, '2021-11-09', '2021-11-14', 2)
        insert into Rezerwacja values (15, 2, 5, 6, '2021-11-11', '2021-11-14', 1)
        insert into Rezerwacja values (16, 2, 7, 9, '2021-11-15', '2021-11-18', 8)
        insert into Rezerwacja values (17, 2, 6, 7, '2021-11-15', '2021-11-17', 10)
        insert into Rezerwacja values (18, 3, 9, 8, '2021-11-15', '2021-11-18', 2)
        insert into Rezerwacja values (19, 1, 13, 1, '2021-11-16', '2021-11-20', 2)
        insert into Rezerwacja values (20, 1, 14, 2, '2021-11-20', '2021-11-24', 2)


--15 selectów 

--1 Wyświetl pracowników zarabiających kwotę określoną jako minimalną stawkę na swoim stanowisku 
        select imie, nazwisko
        from Pracownik, Stanowisko
        where Pracownik.id_stanowiska=Stanowisko.id_stanowiska
        and Pracownik.wynagrodzenie=Stanowisko.stawka_min

--2 W którym z ośrodków SPA dokonano najwięcej rezerwacji
        select top 1 s.Nazwa, count(*) as liczba_rezerwacji
        from Spa s, Rezerwacja r
        where r.id_spa = s.id_spa
        group by s.Nazwa
        order by liczba_rezerwacji desc

--3 Wyświetl imie i nazwisko pracowników zatrudnionych w SPA których nazwisko managera zaczyna się na litere 'K'
        Select p1.imie, p1.nazwisko
        from Pracownik p1, Pracownik p2
        where p1.id_kierownika = p2.id_pracownika
        and SUBSTRING(p2.nazwisko, 1,1) ='K'

--4 Podaj nazwy stanowisk i srednie zarobki pracownikow którzy na nich pracują
        select s.Nazwa, (select AVG(p.wynagrodzenie) from Pracownik p where p.id_stanowiska = s.id_stanowiska )
        from Stanowisko s

--5 Podaj imię i nazwisko pracownika który jest najdłużej zatrudniony w danym ośrodku SPA
        select top 1 p.imie, p.nazwisko, s.Nazwa
        from Pracownik p, Spa s
        where p.id_spa=s.id_spa
        order by DATEDIFF(DD, p.data_zatrudnienia, GETDATE()) desc

--6 Podaj imię , nazwisko i numer telefonu który dokonał co najmniej 2 rezerwacji
        select k.imie, k.nazwisko, k.nrtel,  COUNT(*) as liczba_rezerwacji
        from Rezerwacja r, Klient k
        where r.id_klienta = k.id_klienta
        group by k.nazwisko, k.imie, k.nrtel
        having count(*) >= 2

--7 Który z dyrektorów ma najwięcej podwładnych, uwzględniając tylko związki pośrednie 
        WITH pośrednie_zależności as
        (Select a.id_pracownika, a.id_kierownika, 1 as P from Pracownik a where a.id_kierownika is not null
        UNION ALL
        (Select a.id_pracownika, b.id_kierownika, 2 from Pracownik a , Pracownik b
        where a.id_kierownika=b.id_pracownika))
        Select * from pośrednie_zależności where id_kierownika is not null and P >1 order by id_kierownika ,id_pracownika

--8 Wyświetl klientów którzy rezerwowali masaż twarzy i ich nr telefonu zaczyna się od cyfry 5
        select k.imie, k.nazwisko, k.nrtel, k.email
        from Rezerwacja r, Usluga u, Klient k
        where r.id_uslugi = u.id_uslugi and k.id_klienta = r.id_klienta and u.nazwa_uslugi = 'masaż twarzy'
        and k.nrtel like '5%'

--9 Wyświetl imiona i nazwiska klientów oraz rezerwacje które zaczęły się w piątek a zakończyły się w sobotę lub niedzielę
        select k.imie, k.nazwisko, r.id_rezerwacji, r.data_rozpoczecia, r.data_zakonczenia
        from Rezerwacja r, Klient k
        where DATENAME(WEEKDAY, data_rozpoczecia) = 'Friday' and
        (DATENAME(WEEKDAY, data_zakonczenia) = 'Saturday' or DATENAME(WEEKDAY, data_zakonczenia) = 'Sunday') and
        r.id_klienta = k.id_klienta

--10 Wyświetl rezerwacje dokonaną na najwięcej dni
        select id_rezerwacji
        from Rezerwacja where DATEDIFF(day, data_rozpoczecia, data_zakonczenia) = (
        select top 1 DATEDIFF(day, data_rozpoczecia, data_zakonczenia) as liczba_dni
        from Rezerwacja
        order by liczba_dni desc)

--11 Wyświetl ile razy dana usługa była zarezerwowana
        select u.nazwa_uslugi, count(*) as ilosc
        from Rezerwacja r, Usluga u
        where r.id_uslugi = u.id_uslugi
        group by u.nazwa_uslugi
        order by ilosc desc

--12 Który ośrodek SPA którego utrzymanie pracowników kosztuje najwięcej, oraz wyświetl tę kwotę 
        select top 1 s.Nazwa, (select SUM(p.wynagrodzenie)) as ile
        from Spa s, Pracownik p
        where s.id_spa=p.id_spa
        group by s.Nazwa
        order by ile desc

--13 Wyświetl imiona i nazwiska pracowników którzy zarabiają więcej niż 60% pensji swojego managera 
        select p.imie, p.nazwisko
        from Pracownik p, Pracownik p1
        where p.id_kierownika=p1.id_pracownika
        and p.wynagrodzenie > 0.6*p1.wynagrodzenie

--14 Jaka jest średnia liczba osób w dokonanych rezerwacjach
        select avg(liczba_osob) as srednia
        from Rezerwacja

--15 Wyświetl cene i nazwę najdroższej usługi w najrzadziej wybieranym SPA
        select top 1 u.cena, u.nazwa_uslugi
        from Spa s, Rezerwacja r, Usluga u
        where s.id_spa=r.id_spa
        and r.id_uslugi=u.id_uslugi
        and s.Nazwa = (select top 1 Spa.Nazwa
        from Rezerwacja, Spa
        where Rezerwacja.id_spa=Spa.id_spa
        group by Spa.Nazwa
        order by (COUNT(*)) asc)
        order by u.cena desc



--------------------------------------------------------------------------------------------------------Triggery (3)

--1. Wyzwalacz który po usunięciu pracownika z tabeli Pracownik, utowrzy wpis do nowo utworzonej
--tabeli Pracownik_archiwum (utworzonej na wzór tabeli Pracownik z dodatkową kolumną 'Data zwolnienia' ) i
--wpisze do niej date zwolnienia.

        CREATE TRIGGER zwolnienie_pracownika
        ON Pracownik
        INSTEAD OF DELETE
        AS
        BEGIN
        SET NOCOUNT ON
        declare @idpracownika int = (select id_pracownika from deleted)
        declare @imiepracownika varchar(20) = (select imie from deleted)
        declare @nazwiskopracownika varchar(25) = (select nazwisko from deleted)
        declare @nrtelpracownika varchar(20) = (select nrtel from deleted)
        declare @wynagrodzeniepracownika int = (select wynagrodzenie from deleted)
        declare @datazatrudnieniapracownika date = (select data_zatrudnienia from deleted)
        declare @idspapracownika int = (select id_spa from deleted)
        declare @idstanowiskapracownika int = (select id_stanowiska from deleted)
        declare @idkierownikapracownika int = (select id_kierownika from deleted)

        if not exists (SELECT DISTINCT NAME
        FROM SYS.OBJECTS
        WHERE TYPE IN ('U','V')
        AND NAME= 'Pracownik_Archiwum')
        begin
        select * into Pracownik_Archiwum from Pracownik
        delete from Pracownik_Archiwum
        alter table Pracownik_Archiwum add data_zwolnienia DATE;
        end

        insert into Pracownik_Archiwum VALUES (@idpracownika, @imiepracownika, @nazwiskopracownika, @nrtelpracownika, @wynagrodzeniepracownika,
        @datazatrudnieniapracownika, @idspapracownika, @idstanowiskapracownika, @idkierownikapracownika, GETDATE());
        delete from Pracownik where id_pracownika = @idpracownika;

        print('Pracownik o identyfikatorze ' + CONVERT(varchar,@idpracownika) + ' został zwolniony z dniem ' + CONVERT(varchar,GETDATE()) + '. Został dodany wpis do tabeli Pracownik_Archiwum. ')
        END



--Wyzwalacz który w przypadku nie podania nazwy nowo wprowadzanej usługi, nazwie ją domyślnie 'Nowa usługa SPA'

        CREATE TRIGGER domyslna_nazwa
        ON Usluga
        INSTEAD OF INSERT
        AS
        BEGIN
        SET NOCOUNT ON
        declare @idnowejuslugi int = (select id_uslugi from inserted)
        declare @nazwanowejuslugi varchar(50) = (select nazwa_uslugi from inserted)
        declare @cenanowejuslugi int = (select cena from inserted)
        if (@nazwanowejuslugi is null or @nazwanowejuslugi='' or @nazwanowejuslugi=' ')
        begin
        set @nazwanowejuslugi = 'Nowa usługa w naszym ośrodku SPA'
        end
        insert into Usluga VALUES (@idnowejuslugi, @nazwanowejuslugi, @cenanowejuslugi)
        print('Nie podano nazwy nowo wprowadzanej usługi, nazwa została nadana domyślnie')
        END


--Wyzwalacz który po zmianie stawiki minimalnej bądź maksymalnej w tabeli Stanowisko, zmieni wynagrodzenia tym osobom
--które zarabiają minimalną bądź maksymalną stawkę na danym stanowisko na nowo zaktualizaowaną kwotę.
        CREATE TRIGGER aktualizacja_stawki
        on Stanowisko
        AFTER UPDATE
        as
        BEGIN
        declare @stanowisko int = (select id_stanowiska from inserted)
        declare @zwiekszonastawkaminimalna int = (select stawka_min from inserted where id_stanowiska=@stanowisko)
        declare @zmniejszonastawkamaksymalna int = (select stawka_max from inserted where id_stanowiska=@stanowisko)

        update Pracownik set wynagrodzenie = @zwiekszonastawkaminimalna where wynagrodzenie < @zwiekszonastawkaminimalna and id_stanowiska=@stanowisko
        update Pracownik set wynagrodzenie = @zmniejszonastawkamaksymalna where wynagrodzenie > @zmniejszonastawkamaksymalna and id_stanowiska=@stanowisko

        END



----------------------------------------------------------------------------------------------------------Procedury (3)

----------------------------------------------------------------------------------------------------------Funkcje  (1)

--Funkcja która po wpisaniu ID klienta oraz ID wybranego ośrodka SPA zwróci ilośc rezerwachji dokonanych przez danego klienta
--w danym ośrodku

        drop function ilosc_rezerwacji
        go
        create function ilosc_rezerwacji (@idklienta int, @idspa int) returns int as
        begin
        declare @iloscrezerwacji int
        set @iloscrezerwacji= (select COUNT(*) from Rezerwacja where id_klienta=@idklienta and id_spa=@idspa)
        return @iloscrezerwacji
        end
        go
        --Przykładowe wywołanie
        --select dbo.ilosc_rezerwacji (2,1)