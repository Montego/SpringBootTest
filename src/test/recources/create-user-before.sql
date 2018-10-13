delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$nfuFxE5cAw0IkT1IMBBfauiglPu8I2APJ7VLiC2IDpJlIQUcjfdY2', 'Montego'),
(2, true, '$2a$08$FnQ4RKpNIjMLXtKWrvnUfu1qaqYK2Vxlss.yovxwEYdvIqRVJKMWG', '12');

insert into user_role(user_id, roles) values
(1, 'USER'),(1,'ADMIN'),
(2, 'USER');