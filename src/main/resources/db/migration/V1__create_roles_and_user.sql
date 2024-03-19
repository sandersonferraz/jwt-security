BEGIN TRANSACTION;
DROP TABLE IF EXISTS _use;
DROP TABLE IF EXISTS _role;
COMMIT TRANSACTION;

BEGIN TRANSACTION;
create table if not exists _role(
    id SERIAL PRIMARY KEY,
    name varchar(255) not null,
    description varchar(255),
    active boolean default true
);

create table if not exists _use(
    id SERIAL PRIMARY KEY,
    firstname varchar(255) not null,
    lastname varchar(255),
    email varchar(255),
    password varchar(255),
    role_id INTEGER REFERENCES _role (id)

);
COMMIT TRANSACTION;