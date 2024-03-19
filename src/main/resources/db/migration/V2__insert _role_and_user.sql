BEGIN TRANSACTION;
insert into _role (name, description)
values ('Administrator', 'Administrator the system');


insert into _role (name, description)
values ('Student', 'Student');

COMMIT TRANSACTION;