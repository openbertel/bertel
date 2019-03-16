create table bills_table (
    bill_id serial primary key,
    user_id references users_table,
    bill_date date,
    send_date date
);

create table booking_types_table (
    booking_type_id serial primary key,
    amount float,
    frequency varchar(10), -- store in external table
    description text,
    comment text
);

create table booking_table (
    user_id references users_table,
    booking_type_id references booking_types_table,
    start date,
    end date,
    target_id referneces accounts_table(account_id),
    hold_id referneces accounts_table(account_id),
    document_number integer,
    comment text
);

create table claim_on_bill (
    bill_id references bills_table,
    claim_id references claims_table
    quantity float,
    unique(bill_id, claim_id)
);
