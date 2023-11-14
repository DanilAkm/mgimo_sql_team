create table account
(
    id integer primary key ,
    name varchar not null ,
    lastname varchar not null ,
    surname varchar not null,
    email varchar not null ,
    balance numeric not null default 0,
    constraint  uk_email unique(email)
);

create table tarif
(
    id integer primary key ,
    name varchar not null ,
    cost_per_day numeric not null default 0
);

INSERT INTO account(id, name, lastname, surname, email, balance)
VALUES (10, 'Иван', 'Иванович' , 'Иванов', 'ivan@mail.ru', 100);

INSERT INTO account(id, name, lastname, surname, email, balance)
VALUES (20, 'Сергей', 'Сергеевич' , 'Сергеев', 'sergey@inbox.ru', 200);

INSERT INTO account(id, name, lastname, surname, email, balance)
VALUES (30, 'Петр', 'Петрович' , 'Петров', 'petr@rambler.ru', 250);

INSERT INTO account(id, name, lastname, surname, email, balance)
VALUES (40, 'Дмитрий', 'Дмитриевич' , 'Дмитриев', 'dm@ya.ru', 350);

INSERT INTO account(id, name, lastname, surname, email, balance)
VALUES (50, 'Владимир', 'Владимирович' , 'Владимиров', 'vladimir@mail.ru', 420);


INSERT INTO tarif(id, name, cost_per_day)
VALUES (10, 'Мегатрон Тариф', 10);

INSERT INTO tarif(id, name, cost_per_day)
VALUES (20, 'Безлимитный', 100);
