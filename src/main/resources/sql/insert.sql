INSERT INTO `divers` (`id`,`email`,`name`,`surname`,`password`,`admin`) VALUES
    (1,'marek.pospieszny@gmail.com','Marek','Pospieszny','test',false),
    (2,'jan.nowak@wp.pl','Jan','Nowak','test',false),
    (3,'anna.kowalska@wp.pl','Anna','Kowalska','test',false),
    (4,'admin@admin.pl','Admin','Admin','admin',true);

INSERT INTO `locations` (`id`, `area`, `country`, `max_depth`, `name`, `rating`) VALUES
    (1,'Jaworzno','Poland',19,'Koparki',8),
    (2,'Poznań','Poland',21,'Piechcin',7),
    (3,'Przeworno','Poland',23.5,'Projekt Kamieniołom',3);

INSERT INTO `dives` (`id`, `comment`, `date`, `max_depth`, `rating`, `underwater_time_in_minutes`, `diver_id`, `location_id`, `partner_id`) VALUES
    (1,'test','2022-04-24',12.2,5,45,3,3,2),
    (2,'test2','2022-04-24',18,8,110,1,2,2),
    (3,'test3','2022-04-24',14.5,7,70,2,1,3);