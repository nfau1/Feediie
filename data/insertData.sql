INSERT INTO sex VALUES('Femme');
INSERT INTO sex VALUES('Homme');
INSERT INTO city VALUES(default, 'Evry', '91000'),(default,'Choisy-le-Roi', '94600');
INSERT INTO FeediieUser VALUES
    (default, 'jzpeerz58aze', 'Leanna', '1999-04-11','leiina77410@gmail.com','$2y$10$DMjYUV76Y7GYJlC45pTOKOG8UjFw.tnEfm1WgIqlLzoiImYEKf4ra', 'balbalbal', 
        default, default, default, 'token', default, 1, default, 'Femme');


INSERT INTO FeediieUser VALUES
    (default, 'arjaze98e58a5ab','Valentin', '1998-02-14','valentinbgdu54@gmail.com','$2y$10$DMjYUV76Y7GYJlC45pTOKOG8UjFw.tnEfm1WgIqlLzoiImYEKf4ra', 'Je suis valentin je viens de Nancy',
        default, default, default , 'token2', default, 1, default, 'Homme');

INSERT INTO FeediieUser VALUES
    (default, 'brjaze98e58a5ab','Naruto', '1992-01-30','naruto@gmail.com','$2y$10$DMjYUV76Y7GYJlC45pTOKOG8UjFw.tnEfm1WgIqlLzoiImYEKf4ra', 'balbalbal',
        default, default, default, 'token3', default, 1, default, 'Homme');

INSERT INTO FeediieUser VALUES
    (default, 'crjaze98e58a5ab','Sakura', '1999-04-11','Sakura@gmail.com','$2y$10$DMjYUV76Y7GYJlC45pTOKOG8UjFw.tnEfm1WgIqlLzoiImYEKf4ra', 'balbalbal',
        default, default, default, 'token4', default, 1, default, 'Femme');

INSERT INTO FeediieUser VALUES
    (default, 'drjaze98e58a5ab','Sasuke', '1999-04-11','sasuke@gmail.com','$2y$10$DMjYUV76Y7GYJlC45pTOKOG8UjFw.tnEfm1WgIqlLzoiImYEKf4ra', 'balbalbal',
        default, default, default, 'token5', default, 1, default, 'Homme');

INSERT INTO FeediieUser VALUES
    (default, 'erjaze98e58a5ab','Itachi', '1985-04-11','itachi@gmail.com','$2y$10$DMjYUV76Y7GYJlC45pTOKOG8UjFw.tnEfm1WgIqlLzoiImYEKf4ra', 'balbalbal',
        default, default, default, 'token6', default, 1, default, 'Homme');

INSERT INTO LikedUser VALUES (2, 3, '2020-04-18 15:35:36', true);
INSERT INTO LikedUser VALUES (3, 2, '2020-04-18 15:35:36', true);

INSERT INTO LikedUser VALUES (2, 4, '2020-04-18 13:54:36', true);
INSERT INTO LikedUser VALUES (4, 2, '2020-04-18 13:54:36', true);

INSERT INTO LikedUser VALUES (2, 5, '2020-04-18 13:54:36', false);

INSERT INTO LikedUser VALUES (6, 2, '2020-04-18 13:54:36', false);



INSERT INTO Photo VALUES
    (default, '/Images/UserUpload/jzpeerz58aze/1.jpg', false, 1);

INSERT INTO Photo VALUES
    (default, '/Images/UserUpload/arjaze98e58a5ab/1.jpg', true, 2);

INSERT INTO Photo VALUES
    (default, '/Images/UserUpload/crjaze98e58a5ab/1.jpeg', true, 4);

INSERT INTO Dish VALUES (default, 'Pizza', '/Images/Dish/pizza.png');
INSERT INTO PersonalityDish VALUES (default, 'Sportif et en forme!', 'Sportif', '/Images/Dish/salad.png');
INSERT INTO Hobby VALUES(default, 'Musique');
INSERT INTO Hobby VALUES(default, 'Jeux-vidéos');
INSERT INTO Hobby VALUES(default, 'Film');
INSERT INTO Hobby VALUES(default, 'Série');
INSERT INTO Hobby VALUES(default, 'Sport');
INSERT INTO Hobby VALUES(default, 'Art Martial');
INSERT INTO Hobby VALUES(default, 'Technologie');

INSERT INTO likeEat VALUES (1,1);
INSERT INTO looklike VALUES (1,1);
INSERT INTO practice VALUES(1,1);

