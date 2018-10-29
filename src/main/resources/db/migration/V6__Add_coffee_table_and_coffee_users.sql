create table coffee (
  id int8 not null,
  name varchar(255),
  additive varchar (255),
  size varchar (255),
  description varchar,
  user_id int8,
  primary key (id)
);

alter table if exists coffee
  add constraint coffee_user_fk
  foreign key (user_id) references usr;