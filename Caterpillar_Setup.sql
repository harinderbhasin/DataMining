use Caterpillar;

drop table train_set;

create table train_set
(
	tube_assembly varchar(8),
    supplier varchar(6),
    quote_date date,
    annual_usage numeric (12,2),
    min_order_quantity numeric (12,2),
    bracket_pricing varchar(3),
    quantity numeric(12,2),
    cost numeric (38,16)
);

load data local infile '/Users/GS7271/Documents/MSDS7331/Project/competition_data/train_set.csv'
into table train_set 
fields terminated by ',' 
lines terminated by '\n'
ignore 1 rows;

drop table specs;

create table specs
(
	tube_assembly varchar(8),
    spec1 varchar(7),
    spec2 varchar(7),
    spec3 varchar(7),
    spec4 varchar(7),
    spec5 varchar(7),
    spec6 varchar(7),
    spec7 varchar(7),
    spec8 varchar(7),
    spec9 varchar(7),
    spec10 varchar(7),
    primary key (tube_assembly)
);

load data local infile '/Users/GS7271/Documents/MSDS7331/Project/competition_data/specs.csv'
into table specs 
fields terminated by ',' 
lines terminated by '\n'
ignore 1 rows;

drop table tube;

create table tube
(
	tube_assembly varchar(8),
    material_id varchar(7),
    diameter numeric (12,6),
    wall numeric (12,6),
    length numeric (12,6),
    num_bends numeric (12,2),
    bend_radius numeric (12,2),
    end_a_1x varchar(1),
    end_a_2x varchar(1),
    end_x_1x varchar(1),
    end_x_2x varchar(1),
    end_a varchar(6),
    end_x varchar(6),
    num_boss numeric(12,2),
    num_bracket numeric (12,2),
    other numeric (12,2),
    primary key (tube_assembly)
);

load data local infile '/Users/GS7271/Documents/MSDS7331/Project/competition_data/tube.csv'
into table tube 
fields terminated by ',' 
lines terminated by '\n'
ignore 1 rows;