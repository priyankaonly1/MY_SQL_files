use sales;

select * from companies;

insert into companies
(
	company_id,
    company_name,
    headquarters_phone_number
) values
(
	'abc',
    'company B',
    87334
);

select * from companies;

select * from items;

insert into items
(
	item_code,
    item,
    unit_price,
    company_id
) values
(
	234,
    'fdfd',
    23.56,
    '33ee'
);
select * from items;