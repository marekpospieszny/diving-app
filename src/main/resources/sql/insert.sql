INSERT INTO `divers` (`email`, `name`, `surname`, `password`, `admin`)
VALUES ('marek.markowski@gmail.com', 'Marek', 'Markowski',
        '$2a$12$bLdbsGIbrzdcKlkV/WP2SODMqS2Q.I4e3DWJIfmM8VKPkW62D80oa', false),
       ('jan.nowak@user.pl', 'Jan', 'Nowak', '$2a$12$bLdbsGIbrzdcKlkV/WP2SODMqS2Q.I4e3DWJIfmM8VKPkW62D80oa', false),
       ('anna.kowalska@wp.pl', 'Anna', 'Kowalska', '$2a$12$bLdbsGIbrzdcKlkV/WP2SODMqS2Q.I4e3DWJIfmM8VKPkW62D80oa',
        false),
       ('admin@admin.pl', 'Adam', 'Admin', '$2a$12$erroLlddJWX6.XZjaFV56ewvDkpaNN0PbAZ.vtLuOWXviceLg5qGK', true),
       ('rafal.kowal@onet.pl', 'Rafal', 'Kowal', '$2a$12$bLdbsGIbrzdcKlkV/WP2SODMqS2Q.I4e3DWJIfmM8VKPkW62D80oa', false);

INSERT INTO `locations` (`area`, `country`, `max_depth`, `name`, `rating`)
VALUES ('Jaworzno', 'Poland', 18, 'Koparki', 8),
       ('Piechcin', 'Poland', 24, 'Wyrobisko Piechcin', 7),
       ('Przeworno', 'Poland', 23, 'Projekt Kamieniołom', 3),
       ('Wola Maradzka', 'Poland', 57, 'Jezioro Piłakno', 10),
       ('Narty', 'Poland', 29, 'Jezioro Świętajno', 9),
       ('Płociczno', 'Poland', 12, 'Jezioro Staw', 4),
       ('Chmielno', 'Poland', 42, 'Jezioro Kłodno', 8),
       ('Płotki', 'Poland', 24, 'Jezioro Płotki', 8),
       ('Honoratka', 'Poland', 46, 'Wyrobisko Honoratka', 9),
       ('Mysłaki', 'Poland', 68, 'Jezioro Wukśniki', 10),
       ('Gdynia', 'Poland', 12, 'Torpedownia w Babich Dołach', 9);

INSERT INTO `dives` (`comment`, `date`, `max_depth`, `rating`, `underwater_time_in_minutes`, `diver_id`, `location_id`,
                     `partner_id`)
VALUES ('cold water, rainy day', '2022-04-24', 12, 5, 45, 3, 3, 2),
       ('great weather, decent water temperature', '2022-05-10', 18, 8, 110, 1, 2, 2),
       ('decent visibility', '2022-05-11', 14, 7, 70, 2, 1, 3),
       ('disaster, we had broke equipment', '2022-05-06', 3, 1, 2, 3, 6, 1),
       ('fun and deep dive', '2022-04-19', 35, 10, 65, 2, 10, 3);

INSERT INTO `messages` (`created_on`, `message_text`, `subject`, `receiver_id`, `sender_id`)
VALUES ('2022-04-23 07:23:22', 'Hi, got time for dive tomorrow?', 'Dive tomorrow', 3, 2),
       ('2022-04-23 09:15:17', 'Sure, lets go for it. Hopefully it will not rain.', 'Dive tomorrow', 2, 3),
       ('2022-05-11 13:49:01', 'Thanks for great dive yesterday, it was awesome and we made 110 minutes underwater!',
        'Thanks', 1, 2),
       ('2022-04-12 08:12:55', 'Yea, it was great. See you next time.', 'Thanks', 2, 1);