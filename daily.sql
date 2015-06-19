
# create main table
create table daily (
	id serial,
	aim varchar(512),
	phase integer,
	reg_date timestamp,
	del_flag integer not null default 0
);

# Add contents
alter table add contents varchar(1024);
