CREATE TABLE IF NOT EXISTS account_tarif (
    id SERIAL PRIMARY KEY,
    account_id integer,
    tarif_id integer,
    tarif_is_active bool default false,
    tarif_creation_date timestamp not null ,
    next_payment timestamp not null,
    actual_payment float not null,
    FOREIGN KEY ( account_id ) references account ( id ) ON DELETE CASCADE,
    FOREIGN KEY ( tarif_id ) references tarif ( id ) ON DELETE CASCADE,
    CONSTRAINT valid_payment_date CHECK ( tarif_creation_date < next_payment ),
    CONSTRAINT valid_payment CHECK ( actual_payment >= 0 )
);

CREATE FUNCTION one_active_tarif() RETURNS TRIGGER AS $insert_valid_active$
    BEGIN
        IF NEW.tarif_is_active = true THEN
            UPDATE account_tarif SET tarif_is_active = false
                WHERE account_id = new.account_id;
        END IF;
        RETURN NEW;
    END;
$insert_valid_active$ LANGUAGE PLPGSQL;

CREATE TRIGGER valid_active BEFORE INSERT OR UPDATE ON account_tarif FOR EACH ROW EXECUTE PROCEDURE one_active_tarif();
