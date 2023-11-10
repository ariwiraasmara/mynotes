create database mynote;
create table user(
	userid int(255) not null primary key auto_increment,
	username varchar(255) not null unique,
	email varchar(255) not null unique,
	password text null,
	pin varchar(6) null,
	phone varchar(20) null unique,
	role int(3) null
);

create table userprofile(
	userid int(255) not null primary key,
	fullname varchar(255) null,
	nickname varchar(255) null,
	gender enum('man', 'woman') null,
	address varchar(255) null,
	description text null
);

create table note(
	noteid int(255) not null primary key auto_increment,
	userid int(255) not null,
	title varchar(255) not null unique,
	content text null
	create_at date not null,
	update_at date null,
	delete_at date null,
);

create table notelables(
	notelabelid int(255) not null primary key auto_increment,
	noteid int(255) not null,
	label varchar(255) not null
);
