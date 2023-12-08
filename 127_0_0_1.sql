-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1:3306
-- Genereringstid: 08. 12 2023 kl. 08:12:34
-- Serverversion: 8.0.31
-- PHP-version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filmfinder`
--
CREATE DATABASE IF NOT EXISTS `filmfinder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_danish_ci;
USE `filmfinder`;
--
-- Database: `webshop.lea`
--
CREATE DATABASE IF NOT EXISTS `webshop.lea` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `webshop.lea`;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `produkter`
--

DROP TABLE IF EXISTS `produkter`;
CREATE TABLE IF NOT EXISTS `produkter` (
  `prodId` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `prodNavn` varchar(100) NOT NULL,
  `prodBeskrivelse` text,
  `prodPris` decimal(9,2) NOT NULL,
  `prodDato` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prodDirector` varchar(100) NOT NULL,
  `prodStars` varchar(100) NOT NULL,
  `prodTid` time DEFAULT NULL,
  `prodGenre` varchar(100) NOT NULL,
  `prodBillede` varchar(100) NOT NULL,
  PRIMARY KEY (`prodId`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Data dump for tabellen `produkter`
--

INSERT INTO `produkter` (`prodId`, `prodNavn`, `prodBeskrivelse`, `prodPris`, `prodDato`, `prodDirector`, `prodStars`, `prodTid`, `prodGenre`, `prodBillede`) VALUES
(1, 'Family Switch', 'Når et tilfældigt møde med en astrologisk læser får Walker-familien til at vågne op til et fuldstændigt kropsskifte, kan de så samarbejde om at sikre en forfremmelse, et universitetsinterview, en pladekontrakt og en fodboldprøve?', '100.00', '2023-11-30 02:17:24', 'McG', 'Jennifer Garner, Ed Helms, Emma Myers', '01:46:00', 'Komedie', 'familySwatch.png'),
(2, 'Godfather', 'Don Vito Corleone, leder af en mafiaklan, beslutter at overdrage sit imperium til sin yngste søn Michael. Dog fører hans beslutning utilsigtet til, at hans kæres liv bliver sat i alvorlig fare.', '100.00', '1972-10-07 02:17:24', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', '02:56:00', 'Drama', 'TheGodfather.png'),
(3, 'Forrest Gump', 'Historien om USA fra 1950\'erne til 70\'erne udfolder sig fra perspektivet af en mand fra Alabama med en IQ på 75, som længes efter at blive genforenet med sin barndomskæreste.', '100.00', '1994-06-23 04:29:44', 'Robert Zemeckis', '\r\nTom Hanks, Robin Wright, Gary Sinise', '02:22:00', 'Drama', 'ForrestGump.png'),
(4, 'Leo', 'En 74-årig øgle ved navn Leo og hans skildpaddeven beslutter at flygte fra terrariet i et klasseværelse i en skole i Florida, hvor de har boet i årtier.', '100.00', '2023-11-21 00:00:00', 'Robert Marianetti Robert Smigel David Wachtenheim', 'Adam Sandler', '01:02:00', 'Komedie', 'Leo.png'),
(5, 'The Matrix', 'Når en smuk fremmed leder computerhackeren Neo til en forbudt underverden, opdager han den chokerende sandhed - det liv, han kender, er den detaljerede bedrag af en ond cyber-intelligens.', '100.00', '1999-04-19 00:00:00', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', '02:16:00', 'Sci-fi', 'Matix.png'),
(6, 'Livet er smukt', 'Da en åbensindet jødisk tjener og hans søn bliver ofre for Holocaust, bruger han en perfekt blanding af vilje, humor og fantasi til at beskytte sin søn mod farerne omkring deres lejr.', '100.00', '1997-12-20 00:00:00', 'Roberto Benigni', 'Roberto Benigni, Nicoletta Braschi, Giorgio Cantarini', '01:56:00', 'Drama', 'LivetErSmukt.png'),
(7, 'Saving Private Ryan', 'Efter landgangen i Normandiet drager en gruppe amerikanske soldater bag fjendens linjer for at hente en faldskærmssoldat, hvis brødre er blevet dræbt i kamp.', '100.00', '1998-10-17 00:00:00', 'Steven Spielberg', 'Tom Hanks, Matt Damon, Tom Sizemore', '02:49:00', 'Drama', 'SavingPrivateRyan.png'),
(8, 'Tilbage til fremtiden', 'Marty McFly, en 17-årig gymnasieelev, bliver ved et uheld sendt 30 år tilbage i tiden i en tidsrejsende DeLorean opfundet af hans nære ven, den maverick-videnskabsmand Doc Brown.', '100.00', '1985-07-03 00:00:00', 'Robert Zemeckis', 'Michael J. FoxChristopher LloydLea Thompson', '01:56:00', 'Komedie', 'TilbageTilFremtiden.png'),
(9, 'American History X', 'Derek, der lever et liv præget af vold, ender i fængsel efter at have dræbt to sorte unge. Efter sin løsladelse lover Derek at ændre sig; han håber at forhindre sin bror, Danny, der ser op til Derek, i at følge i hans fodspor.', '100.00', '1998-10-10 00:00:00', 'Tony Kaye', 'Edward Norton, Edward Furlong, Beverly D\'Angelo', '01:59:00', 'Drama', 'AmericanHistoryX.png'),
(10, 'Løvernes konge', 'Løveprinsen Simba og hans far bliver mål for hans bitre onkel, der ønsker at bestige tronen selv. En elsket Disney klassiker, for store og små.', '100.00', '1994-06-12 00:00:00', 'Roger Allers, Rob Minkoff', 'Matthew Broderick, Jeremy Irons, James Earl Jones', '01:28:00', 'Animation', 'LionKing.png'),
(11, 'Avengers - Infinity War', '\"Avengers: Infinity War\" er en actionfyldt Marvel-film, hvor Avengers og Guardians of the Galaxy forener kræfter for at stoppe skurken Thanos. Filmen byder på spektakulære kampscener og ender med en dramatisk og uventet afslutning.', '100.00', '2018-04-22 00:00:00', 'Anthony Russo, Joe Russo', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', '02:29:00', 'Adventure', 'Avengers.png'),
(12, 'Django Unchained', '\"Django Unchained\" er en amerikansk westernfilm, hvor vi følger Django, en frigivet slave, som sammen med en tysk dusørjæger sætter ud for at redde sin kone fra en brutal plantageejer. Filmen er kendt for sin stilistiske tilgang, skarpe dialog og rå skildring af slaveriets brutalitet i USA.', '100.00', '2012-12-11 00:00:00', 'Quentin Tarantino', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio', '02:45:00', 'Drama', 'DjangoUnchained.png'),
(13, 'Ondskabens Hotel (The Shining)', 'Filmen er psykologisk horror film og fortæller historien om Jack Torrance, der bliver vinteropsynsmand på et isoleret hotel, hvor han langsomt bliver vanvittig, påvirket af hotellets overnaturlige kræfter. ', '100.00', '1980-05-23 00:00:00', 'Stanley Kubrick', 'Jack Nicholson, Shelley Duvall, Danny Lloyd', '02:26:00', 'Horror', 'TheShining.png'),
(14, 'American Beauty', '\"American Beauty\" er en dramafilm instrueret af Sam Mendes, som skildrer historien om Lester Burnham, en mand i midtlivskrisen, der bliver besat af sin datters teenageveninde. Filmen udforsker temaer om utilfredshed i forstæderne, seksuel undertrykkelse og personlig frihed. Den er kendt for sin dybe karakteranalyse og vandt en Oscar for Bedste Film.', '100.00', '1999-11-08 00:00:00', 'Sam Mendes', 'Kevin Spacey, Annette Bening, Thora Birch', '02:02:00', 'Drama', 'AmericanBeauty.png'),
(15, 'Braveheart', 'Filmen fortæller historien om William Wallace, en skotsk frihedskæmper, der leder sit folk i oprør mod den engelske besættelse i det 13. århundrede. Kendt for sine kraftfulde kampscener og dybt emotionelle fortælling, blev \"Braveheart\" rost for sin skildring af kampen for frihed og retfærdighed.', '100.00', '1995-05-18 00:00:00', 'Mel Gibson', 'Mel Gibson, Sophie Marceau, Patrick McGoohan', '02:58:00', 'Drama', 'Braveheart.png'),
(16, 'Coco', 'Filmen fortæller historien om William Wallace, en skotsk frihedskæmper, der leder sit folk i oprør mod den engelske besættelse i det 13. århundrede. Kendt for sine kraftfulde kampscener og dybt emotionelle fortælling, blev \"Braveheart\" rost for sin skildring af kampen for frihed og retfærdighed.', '100.00', '2017-10-20 00:00:00', 'Lee Unkrich, Adrian Molina', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt', '01:45:00', 'Animation', 'Coco.png'),
(17, 'Good Will Hunting', '\"Good Will Hunting\" er en dramafilm med Matt Damon og Robin Williams, instrueret af Gus Van Sant. Filmen fortæller historien om Will Hunting, et uopdaget geni, der arbejder som pedel på MIT, og hans terapeutiske rejse med en psykolog, som hjælper ham med at konfrontere sin fortid og realisere sit potentiale. ', '100.00', '1997-12-02 00:00:00', 'Gus Van Sant', 'Robin Williams, Matt Damon, Ben Affleck', '02:06:00', 'Drama', 'GoodWillHunting.png'),
(18, 'Indiana Jones og det sidste korstog', 'Et ægte action eventyr instrueret af Steven Spielberg, med Harrison Ford som den ikoniske arkæolog Indiana Jones. I denne tredje film i serien, slår Jones sig sammen med sin far for at finde det legendariske Hellighedens Gral, før nazisterne gør det.', '100.00', '1989-05-24 00:00:00', 'Steven Spielberg', 'Harrison Ford, Sean Connery, Alison Doody', '02:07:00', 'Adventure', 'IndianaJones.png'),
(19, 'Die Hard', '\"Die Hard\" er en actionfyldt thriller instrueret af John McTiernan med Bruce Willis i hovedrollen som NYPD-detektiv John McClane. Filmen følger McClane, der er fanget i en skyskraber under et terrorangreb og kæmper alene for at redde gidslerne, herunder hans kone. \"Die Hard\" er blevet en ægte klassiker inden for action genren.', '100.00', '1988-07-12 00:00:00', 'John McTiernan', 'Bruce Willis, Alan Rickman, Bonnie Bedelia', '02:12:00', 'Action', 'DieHard.png'),
(20, 'Den sjette sans (The Sixth Sense)', '\"The Sixth Sense\" er en psykologisk thriller instrueret af M. Night Shyamalan. Filmen følger en dreng, der kan se og tale med de døde, og hans terapeut, der forsøger at hjælpe ham. Kendt for sin intense atmosfære og en af de mest berømte plot-twists i filmhistorien, har den opnået kultstatus.', '100.00', '1999-08-06 00:00:00', 'M. Night Shyamalan', 'Bruce Willis, Haley Joel Osment, Toni Collette', '01:47:00', 'Thriller', 'TheSixthSense.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
