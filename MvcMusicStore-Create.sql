
CREATE TABLE ORDER_INFO(
	ORDER_INFO_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ORDER_DATE TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	USER_NAME VARCHAR (256) NULL,
	FIRST_NAME VARCHAR (160) NULL,
	LAST_NAME VARCHAR (160) NULL,
	ADDRESS VARCHAR (70) NULL,
	CITY VARCHAR (40) NULL,
	STATE VARCHAR (40) NULL,
	POSTAL_CODE VARCHAR (10) NULL,
	COUNTRY VARCHAR (40) NULL,
	PHONE VARCHAR (24) NULL,
	EMAIL VARCHAR (160) NULL,
	TOTAL DECIMAL (10, 2) NOT NULL);

CREATE TABLE GENRE(
	GENRE_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR (120) NULL,
	DESCRIPTION VARCHAR (4000) NULL);
	
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (1, 'Rock', 'Rock and Roll is a form of rock music developed in the 1950s and 1960s. Rock music combines many kinds of music from the United States, such as country music, folk music, church music, work songs, blues and jazz.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (2, 'Jazz', 'Jazz is a type of music which was invented in the United States. Jazz music combines African-American music with European music. Some common jazz instruments include the saxophone, trumpet, piano, double bass, and drums.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (3, 'Metal', 'Heavy Metal is a loud, aggressive style of Rock music. The bands who play heavy-metal music usually have one or two guitars, a bass guitar and drums. In some bands, electronic keyboards, organs, or other instruments are used. Heavy metal songs are loud and powerful-sounding, and have strong rhythms that are repeated. There are many different types of Heavy Metal, some of which are described below. Heavy metal bands sometimes dress in jeans, leather jackets, and leather boots, and have long hair. Heavy metal bands sometimes behave in a dramatic way when they play their instruments or sing. However, many heavy metal bands do not like to do this.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (4, 'Alternative', 'Alternative rock is a type of rock music that became popular in the 1980s and became widely popular in the 1990s. Alternative rock is made up of various subgenres that have come out of the indie music scene since the 1980s, such as grunge, indie rock, Britpop, gothic rock, and indie pop. These genres are sorted by their collective types of punk, which laid the groundwork for alternative music in the 1970s.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (5, 'Disco', 'Disco is a style of pop music that was popular in the mid-1970s. Disco music has a strong beat that people can dance to. People usually dance to disco music at bars called disco clubs. The word "disco" is also used to refer to the style of dancing that people do to disco music, or to the style of clothes that people wear to go disco dancing. Disco was at its most popular in the United States and Europe in the 1970s and early 1980s. Disco was brought into the mainstream by the hit movie Saturday Night Fever, which was released in 1977. This movie, which starred John Travolta, showed people doing disco dancing. Many radio stations played disco in the late 1970s.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (6, 'Blues', 'The blues is a form of music that started in the United States during the start of the 20th century. It was started by former African slaves from spirituals, praise songs, and chants. The first blues songs were called Delta blues. These songs came from the area near the mouth of the Mississippi River.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (7, 'Lati', 'Latin American music is the music of all countries in Latin America (and the Caribbean) and comes in many varieties. Latin America is home to musical styles such as the simple, rural conjunto music of northern Mexico, the sophisticated habanera of Cuba, the rhythmic sounds of the Puerto Rican plena, the symphonies of Heitor Villa-Lobos, and the simple and moving Andean flute. Music has played an important part recently in Latin America''s politics, the nueva canción movement being a prime example. Latin music is very diverse, with the only truly unifying thread being the use of Latin-derived languages, predominantly the Spanish language, the Portuguese language in Brazil, and to a lesser extent, Latin-derived creole languages, such as those found in Haiti.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (8, 'Reggae', 'Reggae is a music genre first developed in Jamaica in the late 1960s. While sometimes used in a broader sense to refer to most types of Jamaican music, the term reggae more properly denotes a particular music style that originated following on the development of ska and rocksteady.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (9, 'Pop', 'Pop music is a music genre that developed from the mid-1950s as a softer alternative to rock '''' roll and later to rock music. It has a focus on commercial recording, often oriented towards a youth market, usually through the medium of relatively short and simple love songs. While these basic elements of the genre have remained fairly constant, pop music has absorbed influences from most other forms of popular music, particularly borrowing from the development of rock music, and utilizing key technological innovations to produce new variations on existing themes.');
INSERT INTO Genre (GENRE_ID, NAME, DESCRIPTION) VALUES (10, 'Classical', 'Classical music is a very general term which normally refers to the standard music of countries in the Western world. It is music that has been composed by musicians who are trained in the art of writing music (composing) and written down in music notation so that other musicians can play it. Classical music can also be described as "art music" because great art (skill) is needed to compose it and to perform it well. Classical music differs from pop music because it is not made just in order to be popular for a short time or just to be a commercial success.');

CREATE TABLE ARTIST(
	ARTIST_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR (120) NULL);
	
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (1, 'AC/DC');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (2, 'Accept');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (3, 'Aerosmith');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (4, 'Alanis Morissette');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (5, 'Alice In Chains');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (6, 'Antônio Carlos Jobim');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (7, 'Apocalyptica');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (8, 'Audioslave');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (10, 'Billy Cobham');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (11, 'Black Label Society');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (12, 'Black Sabbath');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (14, 'Bruce Dickinso');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (15, 'Buddy Guy');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (16, 'Caetano Veloso');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (17, 'Chico Buarque');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (18, 'Chico Science & Nação Zumbi');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (19, 'Cidade Negra');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (20, 'Cláudio Zoli');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (21, 'Various Artists');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (22, 'Led Zeppeli');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (23, 'Frank Zappa & Captain Beefheart');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (24, 'Marcos Valle');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (27, 'Gilberto Gil');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (37, 'Ed Motta');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (41, 'Elis Regina');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (42, 'Milton Nascimento');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (46, 'Jorge Be');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (50, 'Metallica');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (51, 'Quee');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (52, 'Kiss');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (53, 'Spyro Gyra');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (55, 'David Coverdale');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (56, 'Gonzaguinha');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (58, 'Deep Purple');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (59, 'Santana');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (68, 'Miles Davis');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (72, 'Vinícius De Moraes');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (76, 'Creedence Clearwater Revival');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (77, 'Cássia Eller');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (79, 'Dennis Chambers');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (80, 'Djava');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (81, 'Eric Clapto');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (82, 'Faith No More');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (83, 'Falamansa');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (84, 'Foo Fighters');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (86, 'Funk Como Le Gusta');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (87, 'Godsmack');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (88, 'Guns '' Roses');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (89, 'Incognito');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (90, 'Iron Maide');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (92, 'Jamiroquai');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (94, 'Jimi Hendrix');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (95, 'Joe Satriani');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (96, 'Jota Quest');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (98, 'Judas Priest');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (99, 'Legião Urbana');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (100, 'Lenny Kravitz');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (101, 'Lulu Santos');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (102, 'Marillio');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (103, 'Marisa Monte');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (105, 'Men At Work');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (106, 'Motörhead');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (109, 'Mötley Crüe');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (110, 'Nirvana');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (111, 'O Terço');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (112, 'Olodum');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (113, 'Os Paralamas Do Sucesso');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (114, 'Ozzy Osbourne');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (115, 'Page & Plant');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (117, 'Paul D''Ianno');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (118, 'Pearl Jam');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (120, 'Pink Floyd');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (124, 'R.E.M.');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (126, 'Raul Seixas');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (127, 'Red Hot Chili Peppers');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (128, 'Rush');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (130, 'Skank');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (132, 'Soundgarde');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (133, 'Stevie Ray Vaughan & Double Trouble');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (134, 'Stone Temple Pilots');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (135, 'System Of A Dow');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (136, 'Terry Bozzio, Tony Levin & Steve Stevens');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (137, 'The Black Crowes');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (139, 'The Cult');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (140, 'The Doors');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (141, 'The Police');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (142, 'The Rolling Stones');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (144, 'The Who');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (145, 'Tim Maia');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (150, 'U2');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (151, 'UB40');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (152, 'Van Hale');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (153, 'Velvet Revolver');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (155, 'Zeca Pagodinho');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (157, 'Dread Zeppeli');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (179, 'Scorpions');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (196, 'Cake');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (197, 'Aisha Duo');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (200, 'The Posies');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (201, 'Luciana Souza/Romero Lubambo');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (202, 'Aaron Goldberg');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (203, 'Nicolaus Esterhazy Sinfonia');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (204, 'Temple of the Dog');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (205, 'Chris Cornell');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (206, 'Alberto Turco & Nova Schola Gregoriana');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (208, 'English Concert & Trevor Pinnock');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (211, 'Wilhelm Kempff');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (212, 'Yo-Yo Ma');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (213, 'Scholars Baroque Ensemble');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (217, 'Royal Philharmonic Orchestra & Sir Thomas Beecham');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (219, 'Britten Sinfonia, Ivor Bolton & Lesley Garrett');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (221, 'Sir Georg Solti & Wiener Philharmoniker');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (223, 'London Symphony Orchestra & Sir Charles Mackerras');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (224, 'Barry Wordsworth & BBC Concert Orchestra');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (226, 'Eugene Ormandy');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (229, 'Boston Symphony Orchestra & Seiji Ozawa');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (230, 'Aaron Copland & London Symphony Orchestra');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (231, 'Ton Koopma');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (232, 'Sergei Prokofiev & Yuri Temirkanov');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (233, 'Chicago Symphony Orchestra & Fritz Reiner');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (234, 'Orchestra of The Age of Enlightenment');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (236, 'James Levine');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (237, 'Berliner Philharmoniker & Hans Rosbaud');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (238, 'Maurizio Pollini');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (240, 'Gustav Mahler');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (242, 'Edo de Waart & San Francisco Symphony');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (244, 'Choir Of Westminster Abbey & Simon Presto');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (245, 'Michael Tilson Thomas & San Francisco Symphony');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (247, 'The King''s Singers');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (248, 'Berliner Philharmoniker & Herbert Von Karaja');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (250, 'Christopher O''Riley');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (251, 'Fretwork');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (252, 'Amy Winehouse');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (253, 'Calexico');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (255, 'Yehudi Menuhi');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (258, 'Les Arts Florissants & William Christie');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (259, 'The 12 Cellists of The Berlin Philharmonic');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (260, 'Adrian Leaper & Doreen de Feis');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (261, 'Roger Norrington, London Classical Players');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (264, 'Kent Nagano and Orchestre de l''Opéra de Lyo');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (265, 'Julian Bream');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (266, 'Martin Roscoe');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (267, 'Göteborgs Symfoniker & Neeme Järvi');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (270, 'Gerald Moore');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (271, 'Mela Tenenbaum, Pro Musica Prague & Richard Kapp');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (274, 'Nash Ensemble');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (276, 'Chic');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (277, 'Anita Ward');
INSERT INTO ARTIST (ARTIST_ID, NAME) VALUES (278, 'Donna Summer');

CREATE TABLE ALBUM(
	ALBUM_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	GENRE_ID INT NOT NULL,
	ARTIST_ID INT NOT NULL,
	TITLE VARCHAR (160) NOT NULL,
	PRICE DECIMAL (10, 2) NOT NULL,
	ALBUM_ART_URL VARCHAR (1024) NULL /*DEFAULT ('/Content/Images/placeholder.gif')*/,
	FOREIGN KEY(GENRE_ID) REFERENCES GENRE(GENRE_ID),
	FOREIGN KEY(ARTIST_ID) REFERENCES ARTIST(ARTIST_ID));
	
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (386, 1, 1, 'For Those About To Rock We Salute You', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (387, 1, 1, 'Let There Be Rock', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (388, 1, 100, 'Greatest Hits', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (389, 1, 102, 'Misplaced Childhood', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (390, 1, 105, 'The Best Of Men At Work', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (392, 1, 110, 'Nevermind', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (393, 1, 111, 'Compositores', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (394, 1, 114, 'Bark at the Moon (Remastered)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (395, 1, 114, 'Blizzard of Ozz', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (396, 1, 114, 'Diary of a Madman (Remastered)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (397, 1, 114, 'No More Tears (Remastered)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (398, 1, 114, 'Speak of the Devil', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (399, 1, 115, 'Walking Into Clarksdale', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (400, 1, 117, 'The Beast Live', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (401, 1, 118, 'Live On Two Legs [Live]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (402, 1, 118, 'Riot Act', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (403, 1, 118, 'Te', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (404, 1, 118, 'Vs.', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (405, 1, 120, 'Dark Side Of The Moo', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (406, 1, 124, 'New Adventures In Hi-Fi', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (407, 1, 126, 'Raul Seixas', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (408, 1, 127, 'By The Way', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (409, 1, 127, 'Californicatio', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (410, 1, 128, 'Retrospective I (1974-1980)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (411, 1, 130, 'Maquinarama', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (412, 1, 130, 'O Samba Poconé', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (413, 1, 132, 'A-Sides', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (414, 1, 134, 'Core', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (415, 1, 136, '[1997] Black Light Syndrome', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (416, 1, 139, 'Beyond Good And Evil', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (418, 1, 140, 'The Doors', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (419, 1, 141, 'The Police Greatest Hits', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (420, 1, 142, 'Hot Rocks, 1964-1971 (Disc 1)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (421, 1, 142, 'No Security', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (422, 1, 142, 'Voodoo Lounge', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (423, 1, 144, 'My Generation - The Very Best Of The Who', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (424, 1, 150, 'Achtung Baby', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (425, 1, 150, 'B-Sides 1980-1990', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (426, 1, 150, 'How To Dismantle An Atomic Bomb', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (427, 1, 150, 'Pop', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (428, 1, 150, 'Rattle And Hum', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (429, 1, 150, 'The Best Of 1980-1990', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (430, 1, 150, 'War', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (431, 1, 150, 'Zooropa', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (432, 1, 152, 'Diver Dow', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (433, 1, 152, 'The Best Of Van Halen, Vol. I', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (434, 1, 152, 'Van Halen III', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (435, 1, 152, 'Van Hale', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (436, 1, 153, 'Contraband', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (437, 1, 157, 'Un-Led-Ed', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (439, 1, 2, 'Balls to the Wall', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (440, 1, 2, 'Restless and Wild', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (441, 1, 200, 'Every Kind of Light', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (442, 1, 22, 'BBC Sessions [Disc 1] [Live]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (443, 1, 22, 'BBC Sessions [Disc 2] [Live]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (444, 1, 22, 'Coda', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (445, 1, 22, 'Houses Of The Holy', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (446, 1, 22, 'In Through The Out Door', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (447, 1, 22, 'IV', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (448, 1, 22, 'Led Zeppelin I', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (449, 1, 22, 'Led Zeppelin II', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (450, 1, 22, 'Led Zeppelin III', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (451, 1, 22, 'Physical Graffiti [Disc 1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (452, 1, 22, 'Physical Graffiti [Disc 2]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (453, 1, 22, 'Presence', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (454, 1, 22, 'The Song Remains The Same (Disc 1)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (455, 1, 22, 'The Song Remains The Same (Disc 2)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (456, 1, 23, 'Bongo Fury', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (457, 1, 3, 'Big Ones', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (458, 1, 4, 'Jagged Little Pill', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (459, 1, 5, 'Facelift', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (460, 1, 51, 'Greatest Hits I', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (461, 1, 51, 'Greatest Hits II', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (462, 1, 51, 'News Of The World', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (463, 1, 52, 'Greatest Kiss', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (464, 1, 52, 'Unplugged [Live]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (465, 1, 55, 'Into The Light', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (466, 1, 58, 'Come Taste The Band', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (467, 1, 58, 'Deep Purple In Rock', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (468, 1, 58, 'Fireball', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (469, 1, 58, 'Machine Head', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (470, 1, 58, 'MK III The Final Concerts [Disc 1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (471, 1, 58, 'Purpendicular', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (472, 1, 58, 'Slaves And Masters', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (473, 1, 58, 'Stormbringer', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (474, 1, 58, 'The Battle Rages O', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (475, 1, 58, 'The Final Concerts (Disc 2)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (476, 1, 59, 'Santana - As Years Go By', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (477, 1, 59, 'Santana Live', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (478, 1, 59, 'Supernatural', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (479, 1, 76, 'Chronicle, Vol. 1', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (480, 1, 76, 'Chronicle, Vol. 2', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (481, 1, 8, 'Audioslave', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (482, 1, 82, 'King For A Day Fool For A Lifetime', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (483, 1, 84, 'In Your Honor [Disc 1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (484, 1, 84, 'In Your Honor [Disc 2]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (485, 1, 84, 'The Colour And The Shape', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (486, 1, 88, 'Appetite for Destructio', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (487, 1, 88, 'Use Your Illusion I', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (488, 1, 90, 'A Matter of Life and Death', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (489, 1, 90, 'Brave New World', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (490, 1, 90, 'Fear Of The Dark', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (491, 1, 90, 'Live At Donington 1992 (Disc 1)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (492, 1, 90, 'Live At Donington 1992 (Disc 2)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (493, 1, 90, 'Rock In Rio [CD2]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (494, 1, 90, 'The Number of The Beast', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (495, 1, 90, 'The X Factor', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (496, 1, 90, 'Virtual XI', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (497, 1, 92, 'Emergency On Planet Earth', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (498, 1, 94, 'Are You Experienced?', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (499, 1, 95, 'Surfing with the Alien (Remastered)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (500, 10, 203, 'The Best of Beethove', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (504, 10, 208, 'Pachelbel: Canon & Gigue', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (507, 10, 211, 'Bach: Goldberg Variations', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (508, 10, 212, 'Bach: The Cello Suites', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (509, 10, 213, 'Handel: The Messiah (Highlights)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (513, 10, 217, 'Haydn: Symphonies 99 - 104', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (515, 10, 219, 'A Soprano Inspired', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (517, 10, 221, 'Wagner: Favourite Overtures', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (519, 10, 223, 'Tchaikovsky: The Nutcracker', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (520, 10, 224, 'The Last Night of the Proms', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (523, 10, 226, 'Respighi:Pines of Rome', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (524, 10, 226, 'Strauss: Waltzes', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (525, 10, 229, 'Carmina Burana', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (526, 10, 230, 'A Copland Celebration, Vol. I', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (527, 10, 231, 'Bach: Toccata & Fugue in D Minor', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (528, 10, 232, 'Prokofiev: Symphony No.1', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (529, 10, 233, 'Scheherazade', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (530, 10, 234, 'Bach: The Brandenburg Concertos', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (532, 10, 236, 'Mascagni: Cavalleria Rusticana', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (533, 10, 237, 'Sibelius: Finlandia', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (537, 10, 242, 'Adams, John: The Chairman Dances', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (539, 10, 245, 'Berlioz: Symphonie Fantastique', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (540, 10, 245, 'Prokofiev: Romeo & Juliet', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (542, 10, 247, 'English Renaissance', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (544, 10, 248, 'Mozart: Symphonies Nos. 40 & 41', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (546, 10, 250, 'SCRIABIN: Vers la flamme', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (548, 10, 255, 'Bartok: Violin & Viola Concertos', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (551, 10, 259, 'South American Getaway', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (552, 10, 260, 'Górecki: Symphony No. 3', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (553, 10, 261, 'Purcell: The Fairy Quee', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (556, 10, 264, 'Weill: The Seven Deadly Sins', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (558, 10, 266, 'Szymanowski: Piano Works, Vol. 1', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (559, 10, 267, 'Nielsen: The Six Symphonies', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (562, 10, 274, 'Mozart: Chamber Music', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (563, 2, 10, 'The Best Of Billy Cobham', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (564, 2, 197, 'Quiet Songs', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (565, 2, 202, 'Worlds', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (566, 2, 27, 'Quanta Gente Veio ver--Bônus De Carnaval', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (567, 2, 53, 'Heart of the Night', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (568, 2, 53, 'Morning Dance', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (569, 2, 6, 'Warner 25 Anos', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (570, 2, 68, 'Miles Ahead', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (571, 2, 68, 'The Essential Miles Davis [Disc 1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (572, 2, 68, 'The Essential Miles Davis [Disc 2]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (573, 2, 79, 'Outbreak', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (574, 2, 89, 'Blue Moods', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (575, 3, 100, 'Greatest Hits', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (576, 3, 106, 'Ace Of Spades', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (577, 3, 109, 'Motley Crue Greatest Hits', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (578, 3, 11, 'Alcohol Fueled Brewtality Live! [Disc 1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (579, 3, 11, 'Alcohol Fueled Brewtality Live! [Disc 2]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (580, 3, 114, 'Tribute', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (581, 3, 12, 'Black Sabbath Vol. 4 (Remaster)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (582, 3, 12, 'Black Sabbath', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (583, 3, 135, 'Mezmerize', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (584, 3, 14, 'Chemical Wedding', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (585, 3, 50, '...And Justice For All', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (586, 3, 50, 'Black Album', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (587, 3, 50, 'Garage Inc. (Disc 1)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (588, 3, 50, 'Garage Inc. (Disc 2)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (589, 3, 50, 'Load', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (590, 3, 50, 'Master Of Puppets', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (591, 3, 50, 'ReLoad', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (592, 3, 50, 'Ride The Lightning', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (593, 3, 50, 'St. Anger', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (594, 3, 7, 'Plays Metallica By Four Cellos', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (595, 3, 87, 'Faceless', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (596, 3, 88, 'Use Your Illusion II', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (597, 3, 90, 'A Real Dead One', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (598, 3, 90, 'A Real Live One', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (599, 3, 90, 'Live After Death', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (600, 3, 90, 'No Prayer For The Dying', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (601, 3, 90, 'Piece Of Mind', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (602, 3, 90, 'Powerslave', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (603, 3, 90, 'Rock In Rio [CD1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (604, 3, 90, 'Rock In Rio [CD2]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (605, 3, 90, 'Seventh Son of a Seventh So', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (606, 3, 90, 'Somewhere in Time', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (607, 3, 90, 'The Number of The Beast', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (608, 3, 98, 'Living After Midnight', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (609, 4, 196, 'Cake: B-Sides and Rarities', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (610, 4, 204, 'Temple of the Dog', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (611, 4, 205, 'Carry O', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (612, 4, 253, 'Carried to Dust (Bonus Track Version)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (613, 4, 8, 'Revelations', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (614, 6, 133, 'In Step', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (615, 6, 137, 'Live [Disc 1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (616, 6, 137, 'Live [Disc 2]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (618, 6, 81, 'The Cream Of Clapto', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (619, 6, 81, 'Unplugged', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (620, 6, 90, 'Iron Maide', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (623, 7, 103, 'Barulhinho Bom', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (624, 7, 112, 'Olodum', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (625, 7, 113, 'Acústico MTV', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (626, 7, 113, 'Arquivo II', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (627, 7, 113, 'Arquivo Os Paralamas Do Sucesso', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (628, 7, 145, 'Serie Sem Limite (Disc 1)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (629, 7, 145, 'Serie Sem Limite (Disc 2)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (630, 7, 155, 'Ao Vivo [IMPORT]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (631, 7, 16, 'Prenda Minha', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (632, 7, 16, 'Sozinho Remix Ao Vivo', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (633, 7, 17, 'Minha Historia', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (634, 7, 18, 'Afrociberdelia', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (635, 7, 18, 'Da Lama Ao Caos', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (636, 7, 20, 'Na Pista', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (637, 7, 201, 'Duos II', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (638, 7, 21, 'Sambas De Enredo 2001', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (639, 7, 21, 'Vozes do MPB', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (640, 7, 24, 'Chill: Brazil (Disc 1)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (641, 7, 27, 'Quanta Gente Veio Ver (Live)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (642, 7, 37, 'The Best of Ed Motta', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (643, 7, 41, 'Elis Regina-Minha História', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (644, 7, 42, 'Milton Nascimento Ao Vivo', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (645, 7, 42, 'Minas', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (646, 7, 46, 'Jorge Ben Jor 25 Anos', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (647, 7, 56, 'Meus Momentos', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (648, 7, 6, 'Chill: Brazil (Disc 2)', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (649, 7, 72, 'Vinicius De Moraes', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (651, 7, 77, 'Cássia Eller - Sem Limite [Disc 1]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (652, 7, 80, 'Djavan Ao Vivo - Vol. 02', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (653, 7, 80, 'Djavan Ao Vivo - Vol. 1', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (654, 7, 81, 'Unplugged', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (655, 7, 83, 'Deixa Entrar', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (656, 7, 86, 'Roda De Funk', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (657, 7, 96, 'Jota Quest-1995', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (659, 7, 99, 'Mais Do Mesmo', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (660, 8, 100, 'Greatest Hits', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (661, 8, 151, 'UB40 The Best Of - Volume Two [UK]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (662, 8, 19, 'Acústico MTV [Live]', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (663, 8, 19, 'Cidade Negra - Hits', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (665, 9, 21, 'Axé Bahia 2001', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (666, 9, 252, 'Frank', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (667, 5, 276, 'Le Freak', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (668, 5, 278, 'MacArthur Park Suite', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');
INSERT INTO ALBUM (ALBUM_ID, GENRE_ID, ARTIST_ID, TITLE, PRICE, ALBUM_ART_URL) VALUES (669, 5, 277, 'Ring My Bell', CAST(8.99 AS DECIMAL(10, 2)), '/Content/Images/placeholder.gif');

CREATE TABLE ORDER_DETAIL(
	ORDER_DETAIL_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ORDER_INFO_ID INT NOT NULL,
	ALBUM_ID INT NOT NULL,
	QUANTITY INT NOT NULL,
	UNIT_PRICE DECIMAL (10, 2) NOT NULL,
	FOREIGN KEY (ORDER_INFO_ID) REFERENCES ORDER_INFO(ORDER_INFO_ID),
	FOREIGN KEY(ALBUM_ID) REFERENCES ALBUM(ALBUM_ID));
	
CREATE TABLE CART(
	RECORD_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CART_ID VARCHAR (50) NOT NULL,
	ALBUM_ID INT NOT NULL,
	COUNT_ITEM INT NOT NULL,
	DATE_CREATED TIMESTAMP NOT NULL,
	FOREIGN KEY(ALBUM_ID) REFERENCES ALBUM(ALBUM_ID));


	
	
	
	
	
	
	
	
	
	
	