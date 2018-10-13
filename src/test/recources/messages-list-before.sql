delete from message;

insert into message(id, text,tag, user_id) values
(1,'first','my tag number 1', 1),
(2,'second','my tag number 2', 1),
(3,'third','mmore 3', 1),
(4,'fourth','another4', 1);

-- чтобы сбросить нумерацию id hibernate

alter sequence hibernate_sequence restart with 10;