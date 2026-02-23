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
(1,'Adventure!','Harry, Ron, and Hermione search for Voldemort\'s remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts','http://bit.ly/2mpd4nZ','Harry Potter and the Deathly Hallows: Part 2',10.45,1),
(2,'Adventure','Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.','http://bit.ly/30Ogr5T','The Lord of the Rings: The Return of the King',7.4,1),
(3,'Action','Eight years after the Joker\'s reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City, now on the edge of total annihilation, from the brutal guerrilla terrorist Bane.','http://bit.ly/33a2fpr','The Dark Knight Rises',6.2,1),
(4,'Adventure','A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug','http://bit.ly/30Y2VwQ','The Hobbit: An Unexpected Journey',3,1),
(5,'Action','When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice','http://bit.ly/2Mg0d0a','The Dark Knight',5,1),
(6,'Adventure','An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.','https://bit.ly/2oamTXT','Harry Potter and the Sorcerer Stone',2.4,1),
(7,'Adventure','As Harry, Ron and Hermione race against time and evil to destroy the Horcruxes, they uncover the existence of the three most powerful objects in the wizarding world: the Deathly Hallows.','https://bit.ly/30TwteI','Harry Potter and the Deathly Hallows: Part 1',3.5,1),
(8,'Adventure','Bilbo and company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.','https://bit.ly/2LU55ZX','The Hobbit: The Battle of the Five Armies',8,1),
(9,'Adventure','The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring','https://bit.ly/2IsL1vC','The Hobbit: The Desolation of Smaug',4.5,1),
(10,'Adventure','With their warning about Lord Voldemort\'s return scoffed at, Harry and Dumbledore are targeted by the Wizard authorities as an authoritarian bureaucrat slowly seizes power at Hogwarts.','https://bit.ly/2AQLmUO','Harry Potter and the Order of the Phoenix',8.5,1),
(11,'Animation','','https://bit.ly/2pRgDoh','Toy Story 4',6.4,2),
(12,'Animation','','https://bit.ly/2MhlPJH','The Lion King',7.4,2),
(13,'Animation','','https://bit.ly/2VkDILu','Aladdin',6.2,2),
(14,'Comedy','','https://bit.ly/2ItRruB','Hocus Pocus',3,2),
(15,'Animation','','https://bit.ly/2pMpgjO','Moana',5,2),
(16,'Action','','https://bit.ly/2LSjAxl','Pirates of the Caribbean: Dead Men Tell No Tales',2.4,2),
(17,'Fantasy','','https://bit.ly/2LRDXLb','Beauty and the Beast',3.5,2),
(18,'Action','','https://bit.ly/2MkE3tz','The Lone Ranger',8,2),
(19,'Animation','','https://bit.ly/2McKFKs','Toy Story 3',4.5,2),
(20,'Adventure','','https://bit.ly/30SxbJk','The Jungle Book',8.5,2),
(21,'Fantasy','','https://bit.ly/2McKBKI','Avatar',6.4,3),
(22,'Action','','https://bit.ly/2AKLPHU','Star Wars: Episode I - The Phantom Menace',7.4,3),
(23,'Animation','','https://bit.ly/2onLg46','Ice Age: Dawn of the Dinosaurs',6.2,3),
(24,'Animation','','https://bit.ly/31PZUjm','Ice Age: Continental Drift',3,3),
(25,'Action','','https://bit.ly/2okCJz4','Star Wars: Episode III - Revenge of the Sith',5,3),
(26,'Sci-Fi','','https://bit.ly/35bBVgl','Independence Day',2.4,3),
(27,'Action','','https://bit.ly/2no9sDb','Deadpool',3.5,3),
(28,'Action','','https://bit.ly/2lQivLR','Star Wars: Episode IV - A New Hope',8,3),
(29,'Action','','http://bit.ly/2VlmLRu','Dawn of the Planet of the Apes',4.5,3),
(30,'Sci-Fi','','http://bit.ly/2oiMSfu','X-Men: Days of Future Past',8.5,3),
(31,'Drama','Joker centers around an origin of the iconic arch nemesis and is an original, standalone story not seen before on the big screen. ','http://bit.ly/2ob3RAC','Joker',33,9);


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