CREATE DATABASE anime;
use anime;

create table tlumacze (
    id int(10) unsigned not null,
    nazwa_strony VARCHAR(40) CHARACTER set utf8 DEFAULT NULL,
    glowna VARCHAR(90) CHARACTER set utf8 DEFAULT NULL
);

insert into tlumacze (id, nazwa_strony, glowna) values 
(1, 'Wbijam', 'https://wbijam.pl/'),
(2, 'Shinden', 'https://shinden.pl/?r307=1'),
(3, 'Desu-Online','https://desu-online.pl/'),
(4, 'brak danych','null');

create table anime(
    id int(10) unsigned not null AUTO_INCREMENT,
    rodzaj int(10) unsigned not null,
    tytul VARCHAR(90),
    ocena int(5),
    opis VARCHAR(250),
    emisja BIT,
    tlumacz int(1) unsigned not null,
	PRIMARY KEY (id)
);


insert into anime (rodzaj ,tytul ,ocena ,opis ,emisja ,tlumacz) VALUES
(1, 'Mushoku Tensei', 5 ,'Mushoku Tensei (Reinkarnacja Bezrobotnego) to anime isekai, fantasy Studia Bind oparte na powieści light novel pisarza o pseudonimie Rifujin na Magonote. Historia przedstawia losy 34-letniego mężczyzny, który w próbie ocalenia komuś życia ginie pod kołami samochodu. Jednak wkrótce odradza się w świecie magii i miecza jako Rudeus Greyrat. Mimo że całe jego życie zostaje zresetowane i zaczyna jako noworodek, zachowuje wiedzę z poprzedniego wcielenia, a także zyskuje talent magiczny, dzięki czemu szybko staje się potężnym wojownikiem gotowym, by wyruszyć w świat i przeżywać niezliczone, barwne i niebezpieczne przygody. I jeszcze jedno... wciąż jest kompletnym zboczkiem...', false,1),
(6, 'Boku dake ga Inai Machi', 5, 'Boku dake ga Inai Machi (Miasto beze mnie) Historia podąża tropem Satoru – mangaki posiadającego umiejętność cofania się w czasie. Jednak dzięki tej zdolności mężczyzna jest zmuszany do zapobiegania śmierciom i katastrofom, zanim te miałyby dojść do skutku. Wiąże się to z ciągłym powtarzaniem czasu, dopóki nie ma pewności, że dokonał prewencji zdarzenia. Wskutek wplątania w pewną sytuację, zostaje uznany za mordercę. Próbując ocalić ofiarę, cofa się do czasów szkoły podstawowej, dokładnie miesiąc przed zaginięciem Kayo Hinazuki, jego koleżanki. Satoru postanawia ocalić dziewczynę i zapobiec jej zaginięciu, a także odnaleźć sprawcę morderstwa.',false, 2),
(1, 'Sword Art Online', 5,'Mamy rok 2022 – Kazuto Kirigaya, uczeń gimnazjum jest znudzony prozą swojego codziennego życia. Właśnie wprowadzono na rynek innowacyjną technologię NerveGear, która pozwoli mu się przenieść całkowicie w świat swojej ulubionej rozrywki. To urządzenie służące do transportowania bodźców wysyłanych przez mózg do pierwszej tego typu wirtualnej gry, Sword Art Online. Aby bez wytchnienia oddać się podróży do świata przedstawionego, Kazuto Kirigaya kupił jedną z dziesięciu tysięcy kopii SAO tuż po premierze.
Zaraz po pierwszym zalogowaniu do gry wszyscy gracze pojawiają się na wielkim placu, gdzie wita ich administrator gry, a także jej twórca – Kayaba Akihiko. Informuje graczy między innymi o tym, że z gry nie można się wylogować i, że to nie jest żaden błąd. Dodaje również, że jeśli ktoś umrze podczas trwania gry to zginie również w świecie realnym. Jedynym sposobem na uwolnienie się jest ukończenie stu pięter latającego zamku – Aincrad. Kirito (taką nazwę przybiera Kazuto) postanawia przejść grę jako samotny wojownik. W drodze na szczyt w pojedynkę walczy z potworami i bossami oraz pokonuje wszystkie przeciwności losu. W końcu jednak zostaje zmuszony przez Asunę, mistrzynię rapiera, do zawiązania z nią drużyny. To spotkanie okaże się brzemienne w skutki i wciągnie Kirito w wir nieprzewidzianych zdarzeń.',false, 1);


