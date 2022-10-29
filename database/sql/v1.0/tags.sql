DELETE FROM uniquanda."Tags";
-- Main level tags
INSERT INTO uniquanda."Tags" ("Name", "Description") VALUES 
('Informatyka', 'Programowanie i tematy pokrewne dotyczące informatyki'),
('Matematyka', 'Zagadnienia z dziedziny matematyki'),
('Fizyka', 'Zagadnienia z dziedziny fizyki'),
('Chemia', 'Zagadnienia z dziedziny chemii'),
('Biologia', 'Zagadnienia z dziedziny biologii'),
('Geografia', 'Zagadnienia z dziedziny geografii'),
('Historia', 'Zagadnienia z dziedziny historii'),
('Filozofia', 'Zagadnienia z dziedziny filozofii'),
('Psychologia', 'Zagadnienia z dziedziny psychologii'),
('Sztuka', 'Zagadnienia z dziedziny dziedzin sztuki'),
('Filologia', 'Zagadnienia z dziedziny języków obcych'),
('Prawo', 'Zagadnienia z dziedziny polskiego prawa'),
('Prawo międzynarodowe', 'Zagadnienia z dziedziny międzynarodowego prawa'),
('Medycyna', 'Zagadnienia z dziedziny medycyny'),
('Inżyneria', 'Zagadnienia z dziedziny inżynierii'),
('Ekonomia', 'Zagadnienia z dziedziny ekonomii i finansów'),
('Politologia', 'Nauki polityczne, nauki o polityce, nauka o polityce. Nauka społeczna zajmująca się działalnością związaną ze sprawowaniem władzy polityczne'),
('Teologia', 'Zagadnienia z dziedziny religii'),
('Pedagogika', 'Zagadnienia z dziedziny edukacji i wychowania'),
('Sport', 'Zagadnienia z dziedziny sportu'),
('Turystyka', 'Zagadnienia z dziedziny turystyki i podróży'),
('Logistyka', 'Zagadnienia z dziedziny logistyki i transportu'),
('Marketing', 'Zagadnienia z dziedziny marketingu i reklamy'),
('Dziennikarstwo', 'Zagadnienia z dziedziny dziennikarstwa'),
('Architektura', 'Zagadnienia z dziedziny architektury'),
('Lotnictwo', 'Zagadnienia związane z lotnictwem');

-- Sublevel tags
INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES
('Programowanie', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Bazy danych', 'https://dev.uniquanda.pl:2002/api/Image/Tags/bazy_danych.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Sieci komputerowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/sieci_komputerowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Systemy operacyjne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/systemy_operacyjne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Angular', 'https://dev.uniquanda.pl:2002/api/Image/Tags/angular.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('ASP.NET', 'https://dev.uniquanda.pl:2002/api/Image/Tags/asp_net.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('C#', 'https://dev.uniquanda.pl:2002/api/Image/Tags/c_sharp.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('C++', 'https://dev.uniquanda.pl:2002/api/Image/Tags/c_plus_plus.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Java', 'https://dev.uniquanda.pl:2002/api/Image/Tags/java.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('JavaScript', 'https://dev.uniquanda.pl:2002/api/Image/Tags/javascript.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('PHP', 'https://dev.uniquanda.pl:2002/api/Image/Tags/php.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Python', 'https://dev.uniquanda.pl:2002/api/Image/Tags/python.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Ruby', 'https://dev.uniquanda.pl:2002/api/Image/Tags/ruby.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('SQL', 'https://dev.uniquanda.pl:2002/api/Image/Tags/sql.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('TypeScript', 'https://dev.uniquanda.pl:2002/api/Image/Tags/typescript.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('WPF', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wpf.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Xamarin', 'https://dev.uniquanda.pl:2002/api/Image/Tags/xamarin.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Inżynieria oprogramowania', 'https://dev.uniquanda.pl:2002/api/Image/Tags/inzynieria_oprogramowania.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Architektura oprogramowania', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_oprogramowania.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Testowanie oprogramowania', 'https://dev.uniquanda.pl:2002/api/Image/Tags/testowanie_oprogramowania.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Sztuczna inteligencja', 'https://dev.uniquanda.pl:2002/api/Image/Tags/sztuczna_inteligencja.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie obiektowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_obiektowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie funkcyjne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_funkcyjne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie proceduralne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_proceduralne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie zdarzeniowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_zdarzeniowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie asynchroniczne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_asynchroniczne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie równoległe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_równoległe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie wielowątkowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_wielowątkowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie wieloprocesowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_wieloprocesowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie wielokomputerowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_wielokomputerowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie rozproszone', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_rozproszone.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie rozproszone', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_rozproszone.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie równoległe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_równoległe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka')),
('Programowanie wielowątkowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/programowanie_wielowątkowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Informatyka'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES
('Matematyka dyskretna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/matematyka_dyskretna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Planimetria', 'https://dev.uniquanda.pl:2002/api/Image/Tags/planimetria.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza matematyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_matematyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Algebra liniowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/algebra_liniowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Geometria', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geometria.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Logika matematyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/logika_matematyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Teoria liczb', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teoria_liczb.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Teoria mnogości', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teoria_mnogości.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Teoria grafów', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teoria_grafów.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Teoria gier', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teoria_gier.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Teoria kodowania', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teoria_kodowania.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Teoria obliczeń', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teoria_obliczeń.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Teoria algorytmów', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teoria_algorytmów.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Algebra nieliniowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/algebra_nieliniowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Staystyka', 'https://dev.uniquanda.pl:2002/api/Image/Tags/staystyka.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Matematyka stosowana', 'https://dev.uniquanda.pl:2002/api/Image/Tags/matematyka_stosowana.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Topologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/topologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza numeryczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_numeryczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza funkcjonalna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_funkcjonalna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza zespolona', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_zespolona.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza Fouriera', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_fouriera.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza graniczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_graniczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza różnicowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_różnicowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza integralna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_integralna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza funkcji wielu zmiennych', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_funkcji_wielu_zmiennych.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza funkcji rzeczywistych', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_funkcji_rzeczywistych.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka')),
('Analiza funkcji zespolonych', 'https://dev.uniquanda.pl:2002/api/Image/Tags/analiza_funkcji_zespolonych.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Matematyka'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Fizyka Kwantowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_kwantowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka atomowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_atomowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka molekularna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_molekularna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka ciała stałego', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_ciała_stałego.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka ciała rzadkiego', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_ciała_rzadkiego.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka ciała płynnego', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_ciała_płynnego.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka ciała gazowego', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_ciała_gazowego.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka ciała promieniotwórczego', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_ciała_promieniotwórczego.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka')),
('Fizyka ciała złożonego', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fizyka_ciała_złożonego.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Fizyka'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Chemia organiczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/chemia_organiczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Chemia')),
('Chemia analityczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/chemia_analityczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Chemia')),
('Chemia fizyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/chemia_fizyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Chemia')),
('Chemia inorganiczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/chemia_inorganiczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Chemia')),
('Chemia biologiczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/chemia_biologiczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Chemia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Biologia molekularna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_molekularna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia komórkowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_komórkowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia ewolucyjna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_ewolucyjna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia systematyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_systematyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia populacyjna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_populacyjna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia ekologiczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_ekologiczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia ekonomii', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_ekonomii.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia roślin', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_roślin.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia')),
('Biologia zwierząt', 'https://dev.uniquanda.pl:2002/api/Image/Tags/biologia_zwierząt.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Biologia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Geomorfologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geomorfologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia fizyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_fizyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia polityczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_polityczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia ekonomiczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_ekonomiczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia społeczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_społeczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia kulturowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_kulturowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia regionalna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_regionalna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia turystyki', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_turystyki.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia')),
('Geografia fizyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/geografia_fizyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Geografia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Historia starożytna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/historia_starożytna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Historia')),
('Historia średniowiecza', 'https://dev.uniquanda.pl:2002/api/Image/Tags/historia_średniowiecza.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Historia')),
('Historia nowożytna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/historia_nowożytna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Historia')),
('Historia współczesna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/historia_współczesna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Historia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Filozofia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/filozofia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filozofia')),
('Nauki społeczne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/nauki_społeczne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filozofia')),
('Socjologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/socjologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filozofia')),
('Antropologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/antropologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filozofia')),
('Etnografia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/etnografia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filozofia')),
('Etnologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/etnologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filozofia')),
('Etnomuzykologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/etnomuzykologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filozofia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Język polski', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_polski.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia')),
('Język angielski', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_angielski.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia')),
('Język niemiecki', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_niemiecki.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia')),
('Język rosyjski', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_rosyjski.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia')),
('Język francuski', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_francuski.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia')),
('Język hiszpański', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_hiszpański.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia')),
('Język włoski', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_włoski.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia')),
('Język portugalski', 'https://dev.uniquanda.pl:2002/api/Image/Tags/język_portugalski.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Filologia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Psychologia poznawcza', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_poznawcza.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia rozwojowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_rozwojowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia społeczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_społeczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia kliniczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_kliniczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia pracy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_pracy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia edukacyjna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_edukacyjna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia sportu', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_sportu.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia kryminalna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_kryminalna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia')),
('Psychologia medyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/psychologia_medyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Psychologia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Malarstwo', 'https://dev.uniquanda.pl:2002/api/Image/Tags/malarstwo.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka')),
('Rzeźba', 'https://dev.uniquanda.pl:2002/api/Image/Tags/rzeźba.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka')),
('Grafika', 'https://dev.uniquanda.pl:2002/api/Image/Tags/grafika.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka')),
('Fotografia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/fotografia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka')),
('Film', 'https://dev.uniquanda.pl:2002/api/Image/Tags/film.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka')),
('Muzyka', 'https://dev.uniquanda.pl:2002/api/Image/Tags/muzyka.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka')),
('Teatr', 'https://dev.uniquanda.pl:2002/api/Image/Tags/teatr.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka')),
('Literatura', 'https://dev.uniquanda.pl:2002/api/Image/Tags/literatura.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sztuka'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Prawo podatkowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_podatkowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo')),
('Prawo cywilne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_cywilne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo')),
('Prawo karne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_karne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo')),
('Prawo administracyjne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_administracyjne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo')),
('Prawo pracy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_pracy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo')),
('Prawo gospodarcze', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_gospodarcze.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo')),
('Prawo handlowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_handlowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Prawo traktatów', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_traktatów.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo międzynarodowe')),
('Prawo dyplomatyczne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_dyplomatyczne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo międzynarodowe')),
('Prawo konsularne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_konsularne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo międzynarodowe')),
('Prawo kosmiczne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/prawo_kosmiczne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Prawo międzynarodowe'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Anatomia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/anatomia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Chirurgia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/chirurgia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Farmakologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/farmakologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Gastroenterologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/gastroenterologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Ginekologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/ginekologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Hematologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/hematologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Kardiologia', 'https://dev.uniquanda.pl:2002/api/Image/Tags/kardiologia.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Medycyna rodzinna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/medycyna_rodzinna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna')),
('Medycyna pracy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/medycyna_pracy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Medycyna'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Automatyka i robotyka', 'https://dev.uniquanda.pl:2002/api/Image/Tags/automatyka_i_robotyka.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Elektronika', 'https://dev.uniquanda.pl:2002/api/Image/Tags/elektronika.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Elektrotechnika', 'https://dev.uniquanda.pl:2002/api/Image/Tags/elektrotechnika.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Mechanika', 'https://dev.uniquanda.pl:2002/api/Image/Tags/mechanika.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Nauki o Ziemi', 'https://dev.uniquanda.pl:2002/api/Image/Tags/nauki_o_ziemi.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Nauki o materiałach', 'https://dev.uniquanda.pl:2002/api/Image/Tags/nauki_o_materiałach.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Nauki o transportie', 'https://dev.uniquanda.pl:2002/api/Image/Tags/nauki_o_transportie.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Nauki o wodzie', 'https://dev.uniquanda.pl:2002/api/Image/Tags/nauki_o_wodzie.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria')),
('Nauki o zrównoważonym rozwoju', 'https://dev.uniquanda.pl:2002/api/Image/Tags/nauki_o_zrównoważonym_rozwoju.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Inżyneria'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Kryptowaluty', 'https://dev.uniquanda.pl:2002/api/Image/Tags/kryptowaluty.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Ekonomia')),
('Giełda', 'https://dev.uniquanda.pl:2002/api/Image/Tags/gielda.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Ekonomia')),
('Finanse', 'https://dev.uniquanda.pl:2002/api/Image/Tags/finanse.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Ekonomia')),
('Podatki', 'https://dev.uniquanda.pl:2002/api/Image/Tags/podatki.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Ekonomia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Polityka społeczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/polityka_społeczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Politologia')),
('Polityka zagraniczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/polityka_zagraniczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Politologia')),
('Europeistyka', 'https://dev.uniquanda.pl:2002/api/Image/Tags/europeistyka.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Politologia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Chrześcijaństwo', 'https://dev.uniquanda.pl:2002/api/Image/Tags/chrześcijaństwo.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia')),
('Islam', 'https://dev.uniquanda.pl:2002/api/Image/Tags/islam.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia')),
('Judaizm', 'https://dev.uniquanda.pl:2002/api/Image/Tags/judaizm.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia')),
('Buddyzm', 'https://dev.uniquanda.pl:2002/api/Image/Tags/buddyzm.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia')),
('Hinduizm', 'https://dev.uniquanda.pl:2002/api/Image/Tags/hinduizm.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia')),
('Bahaizm', 'https://dev.uniquanda.pl:2002/api/Image/Tags/bahaizm.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia')),
('Protestantyzm', 'https://dev.uniquanda.pl:2002/api/Image/Tags/protestantyzm.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia')),
('Świadkowie Jehowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/świadkowie_jehowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Teologia'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Wychowanie wczesnoszkolne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_wczesnoszkolne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie przedszkolne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_przedszkolne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie szkolne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_szkolne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie gimnazjalne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_gimnazjalne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie licealne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_licealne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie studenckie', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_studenckie.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie dorosłych', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_dorosłych.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie specjalne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_specjalne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika')),
('Wychowanie w rodzinie', 'https://dev.uniquanda.pl:2002/api/Image/Tags/wychowanie_w_rodzinie.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Pedagogika'));


INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Piłka nożna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/piłka_nożna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Koszykówka', 'https://dev.uniquanda.pl:2002/api/Image/Tags/koszykówka.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Siatkówka', 'https://dev.uniquanda.pl:2002/api/Image/Tags/siatkówka.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Tenis', 'https://dev.uniquanda.pl:2002/api/Image/Tags/tenis.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Siatkówka plażowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/siatkówka_plażowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Piłka ręczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/piłka_ręczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Piłka siatkowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/piłka_siatkowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Piłka wodna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/piłka_wodna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Kolarstwo', 'https://dev.uniquanda.pl:2002/api/Image/Tags/kolarstwo.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport')),
('Bieganie', 'https://dev.uniquanda.pl:2002/api/Image/Tags/bieganie.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Sport'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Turystyka poznawczawa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/turystyka_poznawczawa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Turystyka')),
('Turystyka rekreacyjna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/turystyka_rekreacyjna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Turystyka')),
('Turystyka sportowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/turystyka_sportowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Turystyka')),
('Turystyka biznesowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/turystyka_biznesowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Turystyka')),
('Turystyka medyczna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/turystyka_medyczna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Turystyka')),
('Turystyka kulturowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/turystyka_kulturowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Turystyka')),
('Turystyka religijna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/turystyka_religijna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Turystyka'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Transport lotniczy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/transport_lotniczy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Logistyka')),
('Transport drogowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/transport_drogowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Logistyka')),
('Transport wodny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/transport_wodny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Logistyka')),
('Transport kolejowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/transport_kolejowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Logistyka')),
('Transport morski', 'https://dev.uniquanda.pl:2002/api/Image/Tags/transport_morski.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Logistyka')),
('Planowanie trasy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/planowanie_trasy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Logistyka'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Airbus A320', 'https://dev.uniquanda.pl:2002/api/Image/Tags/a320.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo')),
('Airbus A380', 'https://dev.uniquanda.pl:2002/api/Image/Tags/a380.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo')),
('Boeing 747', 'https://dev.uniquanda.pl:2002/api/Image/Tags/boeing_747.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo')),
('Boeing 777', 'https://dev.uniquanda.pl:2002/api/Image/Tags/boeing_777.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo')),
('Boeing 787', 'https://dev.uniquanda.pl:2002/api/Image/Tags/boeing_787.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo')),
('Boeing 737', 'https://dev.uniquanda.pl:2002/api/Image/Tags/boeing_737.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo')),
('Boeing 767', 'https://dev.uniquanda.pl:2002/api/Image/Tags/boeing_767.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo')),
('Airbus A350', 'https://dev.uniquanda.pl:2002/api/Image/Tags/a350.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Lotnictwo'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Reklama', 'https://dev.uniquanda.pl:2002/api/Image/Tags/reklama.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('PR', 'https://dev.uniquanda.pl:2002/api/Image/Tags/pr.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Social Media', 'https://dev.uniquanda.pl:2002/api/Image/Tags/social_media.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('E-mail marketing', 'https://dev.uniquanda.pl:2002/api/Image/Tags/email_marketing.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing wizualny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_wizualny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing wewnętrzny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_wewnetrzny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing internetowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_internetowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing telewizyjny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_telewizyjny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing mobilny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_mobilny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing bezpośredni', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_bezposredni.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing mix', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_mix.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing relacji publicznych', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_relacji_publicznych.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing strategiczny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_strategiczny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing operacyjny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_operacyjny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing terytorialny', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_terytorialny.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing usługowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_uslugowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing produktowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_produktowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing segmentowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_segmentowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing')),
('Marketing kanałowy', 'https://dev.uniquanda.pl:2002/api/Image/Tags/marketing_kanalowy.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Marketing'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Dziennikrastwo śledcze', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_sledcze.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo internetowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_internetowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo lokalne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_lokalne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo międzynarodowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_miedzynarodowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo prasowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_prasowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo publicystyczne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_publicystyczne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo radiowe', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_radiowe.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo telewizyjne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_telewizyjne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo wideo', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_wideo.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo')),
('Dziennikarstwo społeczne', 'https://dev.uniquanda.pl:2002/api/Image/Tags/dziennikarstwo_spoleczne.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Dziennikarstwo'));

INSERT INTO uniquanda."Tags" ("Name", "ImageUrl", "ParentTagId") VALUES 
('Architektura mieszkalna', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_mieszkalna.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura')),
('Architektura wnętrz', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_wnetrz.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura')),
('Architektura krajobrazu', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_krajobrazu.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura')),
('Architektura przestrzeni publicznej', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_przestrzeni_publicznej.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura')),
('Architektura przemysłowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_przemyslowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura')),
('Architektura ogrodowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_ogrodowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura')),
('Architektura przemysłowa', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_przemyslowa.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura')),
('Architektura przestrzeni publicznej', 'https://dev.uniquanda.pl:2002/api/Image/Tags/architektura_przestrzeni_publicznej.jpg', (SELECT "Id" FROM uniquanda."Tags" WHERE "Name" = 'Architektura'));
