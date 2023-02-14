/*asdasd*/

create database ex_nutrition2; #correção

use ex_nutrition2;

create table user(
idUser bigint not null auto_increment,
nameUser varchar(100) not null,
ageUser bigint not null,
dobUser datetime not null default now(), #comando default now insere o modelo padrão agora
heightUser double not null,
weightUser bigint not null,
primary key(idUser)
);

insert into user
(nameUser, ageUser, heightUser, weightUser, dobUser)
values
("João",35,1.7,71, "2023-02-13 19:52:00");

insert into user (nameUser, ageUser, heightUser, weightUser)
values
("Francisco", 26, 1.85, 90);

insert into user (nameUser, ageUser, heightUser, weightUser)
values
("Larissa", 20, 1.5, 63);

select* from user;  #buscar valores inseridos na tabela

create table day(
idDay bigint not null auto_increment,
day date not null,
user_fk bigint not null,                            #igual idUser bigint se for int fica errado
primary key(idDay),
foreign key (user_fk) references  user (idUser)
);

insert into day (day, user_FK)
values
("2023-02-13",2);

insert into day (day, user_FK)
values
("2023-02-11",1);

insert into day (day, user_FK)
values
("2023-02-11",3);

select* from day;

create table meals(
idUser bigint not null auto_increment,
calories int not null,
fat int,
carbohydrates int not null,
fibre int,
protein int,
day_FK bigint not null,
primary key(idUser),
foreign key (day_FK) reference day(idUser),
);


