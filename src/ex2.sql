INSERT INTO tarif (id, name, cost_per_day) VALUES (
    30, 'kpacubo', 3000
);
INSERT INTO tarif (id, name, cost_per_day) VALUES (
    40, 'ne kpacubo', 4500
);
INSERT INTO tarif (id, name, cost_per_day) VALUES (
    50, 'lgota++', 0
);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (10, 10, current_timestamp, current_timestamp + interval '1' day, 10.2, true);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (10, 20, current_timestamp, current_timestamp + interval '1' day, 10.2, false);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (20, 30, current_timestamp, current_timestamp + interval '1' day, 10.2, false);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (30, 40, current_timestamp, current_timestamp + interval '1' day, 10.2, true);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (30, 50, current_timestamp, current_timestamp + interval '1' day, 10.2, false);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (30, 10, current_timestamp, current_timestamp + interval '1' day, 10.2, false);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (40, 20, current_timestamp, current_timestamp + interval '1' day, 10.2, true);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (40, 30, current_timestamp, current_timestamp + interval '1' day, 10.2, true);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (50, 40, current_timestamp, current_timestamp + interval '1' day, 10.2, false);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (50, 50, current_timestamp, current_timestamp + interval '1' day, 10.2, true);

insert into account_tarif (account_id, tarif_id, tarif_creation_date, next_payment, actual_payment, tarif_is_active)
VALUES (20, 50, current_timestamp, current_timestamp + interval '1' day, 10.2, true);