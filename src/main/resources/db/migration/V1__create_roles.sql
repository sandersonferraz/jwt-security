DROP DATABASE if exists testDB;
create table if not exists _role(
    id integer not null primary key,
    name varchar(255) not null,
    description varchar(255),
    active boolean default true
);

insert into _role (name, description)
values ("Administrator", "Administrator the system");

insert into _role (name, description)
values ("Student", "Student");

