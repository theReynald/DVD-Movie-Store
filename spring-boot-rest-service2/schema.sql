DROP table IF EXISTS rating;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS studio;

CREATE TABLE `studio` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `movie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `studio_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_movie_studio` (`studio_id`),
  CONSTRAINT `fk_movie_studio` FOREIGN KEY (`studio_id`) REFERENCES `studio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rating` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stars` int(11) NOT NULL,
  `movie_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rating_movie` (`movie_id`),
  CONSTRAINT `fk_rating_movie` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `auth_code` varchar(255) DEFAULT NULL,
  `card_expiry` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `card_security_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shipped` bit(1) NOT NULL,
  `submitted` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orderline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT NULL,
  `movie_id` bigint(20) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderline_order` (`movie_id`),
  CONSTRAINT `fk_orderline_order` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

