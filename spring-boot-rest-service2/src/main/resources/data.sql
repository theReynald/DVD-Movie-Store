/** Insert studio information */
INSERT INTO studio (id, name, city, state) VALUES (1,'Warner Bros Studios', 'Burbank', 'California');
INSERT INTO studio (id, name, city, state) VALUES (2,'Walt Disney Studios', 'Burbank', 'California');
INSERT INTO studio (id, name, city, state) VALUES (3,'20th Century Fox Studios', 'Los Angeles', 'California');
INSERT INTO studio (id, name, city, state) VALUES (4,'Marvel Studios','New York','New York');
INSERT INTO studio (id, name, city, state) VALUES (5,'Universal Studios','Los Angeles', 'California');
INSERT INTO studio (id, name, city, state) VALUES (6,'Dreamworks Studios', 'Universal City', 'California');
INSERT INTO studio (id, name, city, state) VALUES (7,'Sony Pictures Studios', 'Culver City', 'California');
INSERT INTO studio (id, name, city, state) VALUES (8,'Columbia Pictures', 'Culver City', 'California');
INSERT INTO studio (id, name, city, state) VALUES (9,'Paramount Studios','Los Angeles', 'California');
INSERT INTO studio (id, name, city, state) VALUES (10,'New Line Cinema', 'Burbank', 'California');

/** Insert movie information **/
INSERT INTO movie(id, category,description,image,name,price,studio_id) VALUES 
(1, 'Adventure','Harry, Ron, and Hermione search for Voldemort''s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts','https://m.media-amazon.com/images/M/MV5BMjIyZGU4YzUtNDkzYi00ZDRhLTljYzctYTMxMDQ4M2E0Y2YxXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX140_CR0,0,140,209_AL_.jpg','Harry Potter and the Deathly Hallows: Part 2',6.4,1),
(2, 'Adventure','Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.','https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY209_CR0,0,140,209_AL_.jpg','The Lord of the Rings: The Return of the King',7.4,1),
(3, 'Action','Eight years after the Joker''s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City, now on the edge of total annihilation, from the brutal guerrilla terrorist Bane.','https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_UY209_CR0,0,140,209_AL_.jpg','The Dark Knight Rises',6.2,1),
(4, 'Adventure','A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug','https://m.media-amazon.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_UY209_CR0,0,140,209_AL_.jpg','The Hobbit: An Unexpected Journey',3,1),
(5, 'Action','When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice','https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UY209_CR0,0,140,209_AL_.jpg','The Dark Knight',5,1),
(6, 'Adventure','An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.','https://m.media-amazon.com/images/M/MV5BNjQ3NWNlNmQtMTE5ZS00MDdmLTlkZjUtZTBlM2UxMGFiMTU3XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UY209_CR0,0,140,209_AL_.jpg','Harry Potter and the Sorcerer Stone',2.4,1),
(7, 'Adventure','As Harry, Ron and Hermione race against time and evil to destroy the Horcruxes, they uncover the existence of the three most powerful objects in the wizarding world: the Deathly Hallows.','https://m.media-amazon.com/images/M/MV5BMTQ2OTE1Mjk0N15BMl5BanBnXkFtZTcwODE3MDAwNA@@._V1_UY209_CR0,0,140,209_AL_.jpg','Harry Potter and the Deathly Hallows: Part 1',3.5,1),
(8, 'Adventure','Bilbo and company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.','https://m.media-amazon.com/images/M/MV5BODAzMDgxMDc1MF5BMl5BanBnXkFtZTgwMTI0OTAzMjE@._V1_UY209_CR0,0,140,209_AL_.jpg','The Hobbit: The Battle of the Five Armies',8,1),
(9, 'Adventure','The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring','https://m.media-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_UY209_CR0,0,140,209_AL_.jpg','The Hobbit: The Desolation of Smaug',4.5,1),
(10, 'Adventure','With their warning about Lord Voldemort''s return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.','https://m.media-amazon.com/images/M/MV5BMTM0NTczMTUzOV5BMl5BanBnXkFtZTYwMzIxNTg3._V1_UY209_CR0,0,140,209_AL_.jpg','Harry Potter and the Order of the Phoenix',8.5,1),

(11, 'Animation','','https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_UY209_CR0,0,140,209_AL_.jpg','Toy Story 4',6.4,2),
(12, 'Animation','','https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_UY209_CR0,0,140,209_AL_.jpg','The Lion King',7.4,2),
(13, 'Animation','','https://m.media-amazon.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UY209_CR1,0,140,209_AL_.jpg','Aladdin',6.2,2),
(14, 'Comedy','','https://m.media-amazon.com/images/M/MV5BMmQyYmY5ZTMtM2JkNi00NmM2LWE3ZmEtYWYzZmRkZDM0ZTdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX140_CR0,0,140,209_AL_.jpg','Hocus Pocus',3,2),
(15, 'Animation','','https://m.media-amazon.com/images/M/MV5BMjI4MzU5NTExNF5BMl5BanBnXkFtZTgwNzY1MTEwMDI@._V1_UY209_CR0,0,140,209_AL_.jpg','Moana',5,2),
(16, 'Action','','https://m.media-amazon.com/images/M/MV5BMTYyMTcxNzc5M15BMl5BanBnXkFtZTgwOTg2ODE2MTI@._V1_UY209_CR0,0,140,209_AL_.jpg','Pirates of the Caribbean: Dead Men Tell No Tales',2.4,2),
(17, 'Fantasy','','https://m.media-amazon.com/images/M/MV5BMTUwNjUxMTM4NV5BMl5BanBnXkFtZTgwODExMDQzMTI@._V1_UY209_CR0,0,140,209_AL_.jpg','Beauty and the Beast',3.5,2),
(18, 'Action','','https://m.media-amazon.com/images/M/MV5BZjFiMTc2MTAtZDA0My00OGRmLTk5M2ItNTlmYTUwZmU2YmRiXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UY209_CR0,0,140,209_AL_.jpg','The Lone Ranger',8,2),
(19, 'Animation','','https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_UY209_CR4,0,140,209_AL_.jpg','Toy Story 3',4.5,2),
(20, 'Adventure','','https://m.media-amazon.com/images/M/MV5BMTc3NTUzNTI4MV5BMl5BanBnXkFtZTgwNjU0NjU5NzE@._V1_UY209_CR0,0,140,209_AL_.jpg','The Jungle Book',8.5,2),

(21, 'Fantasy','','https://m.media-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_UY209_CR0,0,140,209_AL_.jpg','Avatar',6.4,3),
(22, 'Action','','https://m.media-amazon.com/images/M/MV5BYTRhNjcwNWQtMGJmMi00NmQyLWE2YzItODVmMTdjNWI0ZDA2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX140_CR0,0,140,209_AL_.jpg','Star Wars: Episode I - The Phantom Menace',7.4,3),
(23, 'Animation','','https://m.media-amazon.com/images/M/MV5BMTMzNDkzMTcyOV5BMl5BanBnXkFtZTcwNDIzMjM2MQ@@._V1_UY209_CR2,0,140,209_AL_.jpg','Ice Age: Dawn of the Dinosaurs',6.2,3),
(24, 'Animation','','https://m.media-amazon.com/images/M/MV5BMTM3NDM5MzY5Ml5BMl5BanBnXkFtZTcwNjExMDUwOA@@._V1_UY209_CR0,0,140,209_AL_.jpg','Ice Age: Continental Drift',3,3),
(25, 'Action','','https://m.media-amazon.com/images/M/MV5BNTc4MTc3NTQ5OF5BMl5BanBnXkFtZTcwOTg0NjI4NA@@._V1_UY209_CR8,0,140,209_AL_.jpg','Star Wars: Episode III - Revenge of the Sith',5,3),
(26, 'Sci-Fi','','https://m.media-amazon.com/images/M/MV5BMGQwNDNkMmItYWY1Yy00YTZmLWE5OTAtODU0MGZmMzQ1NDdkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX140_CR0,0,140,209_AL_.jpg','Independence Day',2.4,3),
(27, 'Action','','https://m.media-amazon.com/images/M/MV5BYzE5MjY1ZDgtMTkyNC00MTMyLThhMjAtZGI5OTE1NzFlZGJjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX140_CR0,0,140,209_AL_.jpg','Deadpool',3.5,3),
(28, 'Action','','https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX140_CR0,0,140,209_AL_.jpg','Star Wars: Episode IV - A New Hope',8,3),
(29, 'Action','','https://m.media-amazon.com/images/M/MV5BZGIzNWYzN2YtMjcwYS00YjQ3LWI2NjMtOTNiYTUyYjE2MGNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY209_CR0,0,140,209_AL_.jpg','Dawn of the Planet of the Apes',4.5,3),
(30, 'Sci-Fi','','https://m.media-amazon.com/images/M/MV5BMTgwODk3NDc1N15BMl5BanBnXkFtZTgwNTc1NjQwMjE@._V1_UY209_CR0,0,140,209_AL_.jpg','X-Men: Days of Future Past',8.5,3);


/** Insert rating information **/
INSERT INTO rating(id, stars, movie_id) VALUES
(1, 5, 1),
(2, 4, 1),
(3, 4, 2),
(4, 3, 3),
(5, 3, 3),
(6, 4, 4),
(7, 3, 4),
(8, 1, 5),
(9, 2, 6),
(10,2,7),
(11, 3, 8),
(12, 3, 8),
(13, 4, 9),
(14, 4, 10),
(15, 5, 11),
(16, 4, 12),
(17, 3, 12),
(18, 2, 13),
(19, 3, 13),
(20, 3, 14),
(21, 2, 14),
(22, 1, 15),
(23, 1, 15),
(24, 2, 15),
(25, 2, 15),
(26, 2, 16),
(27, 3, 17),
(28, 3, 18),
(29, 5, 19),
(30, 5, 20),
(31, 5, 21),
(32, 5, 22),
(33, 4, 23),
(34, 4, 25),
(35, 5, 25),
(36, 5, 26),
(37, 5, 26),
(38, 5, 27),
(39, 3, 27),
(40, 4, 28),
(41, 3, 28),
(42, 3, 29),
(43, 5, 30),
(44, 5, 30);