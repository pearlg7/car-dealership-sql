insert into salesperson(
	salesperson_id,
	first_name,
	last_name
) values (
	1,
	'Maddy',
	'Ruiz'
);

insert into car(
	car_id,
	make,
	model,
	car_year,
	mileage
) values (
	1,
	'Dodge',
	'Caravan',
	2014,
	0
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	drivers_license,
	billing_info,
	car_id
) values (
	1,
	'Pearl',
	'Gonzalez',
	'G84581222349',
	'123 Road Ave Chicago, IL 12345',
	1
);

create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _drivers_license VARCHAR, _billing_info VARCHAR, _car_id INTEGER)
returns void
as $MAIN$
begin 
	insert into customer(customer_id, first_name, last_name, drivers_license, billing_info, car_id)
	values (_customer_id, _first_name, _last_name, _drivers_license, _billing_info, _car_id);
end;
$MAIN$
language plpgsql;

select add_customer(2, 'Sarah', 'Simpson', 'G16478309814', '583 Road Dr Chicago, IL 62893', 1);

create or replace function add_car(_car_id INTEGER, _make VARCHAR, _model VARCHAR, _car_year INTEGER, _mileage INTEGER)
returns void
as $MAIN$
begin 
	insert into car(car_id, make, model, car_year, mileage)
	values (_car_id, _make, _model, _car_year, _mileage);
end;
$MAIN$
language plpgsql;

select add_car(2, 'Kia', 'Ion', 2000, 50);
