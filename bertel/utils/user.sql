create table users_table (
    user_id serial primary key,
    entry date,
    exit date,
    forename varchar(30),
    surname varchar(30),
    mobile varchar(15),
    email varchar(30),
    organisation varchar(30),
    birthday date,
    lega_form varchar(10),
    address varchar(50),
    comment text
);

