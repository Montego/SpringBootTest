create table coffee (
  id int8 not null,
  name_coffee varchar(255),
  additive varchar (255),
  size varchar (255),
  primary key (id)
);

create table coffee_user (
  user_id bigint not null references usr,
  id bigint not null references coffee,
  primary key (user_id,coffee_id)
)