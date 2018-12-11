
create database test;


create table Supplier (
 Id int primary key,
 hotel_name varchar(100)
);

create table Room_Type (
 Id int primary key,
 room_name varchar(100)
);

create table Room (
 Id int primary key,
 hotel_id int not null,
 room_id int not null ,
 price decimal not null,
 label varchar(100)
);


/*Supplier Sample Records */
insert into supplier values(1, 'Supplier A');
insert into supplier values(2, 'Supplier B');
insert into supplier values(3, 'Supplier C');
insert into supplier values(4, 'Supplier D');

/*Room Type Sample Records*/
insert into Room_Type values(1, 'DELUXE ROOM');
insert into Room_Type  values(2, 'SUPERIOR ROOM');


/*deluxe room sample records */
insert into  Room values(1, 1, 1, 543, 'DELUXE ROOM' );
insert into  Room values(3, 3, 1, 498, 'DELUXE ROOM 1 BED');
insert into  Room values(4, 4, 1, 551, 'DBLDLX ROOM');

/*superior room sample records*/
insert into  Room values(5, 3, 2, 280, 'SUPER ROOM');
insert into  Room values(6, 4, 2, 410, 'SUP-ROOM');
insert into  Room values(2, 2, 2, 543, 'SUPERIOR ROOM');


/* to select deluxe room */
select r.*, s.hotel_name, rt.room_name from Room r
 join supplier s 
 on s.Id = r.hotel_id
   inner join room_type rt 
on r.room_id = rt.Id
where r.room_id = 1 /* room*/
group by r.hotel_id;


/* to select superior room */
select r.*, s.hotel_name, rt.room_name from Room r
 join supplier s 
 on s.Id = r.hotel_id
   inner join room_type rt 
on r.room_id = rt.Id
where r.room_id = 2
group by r.hotel_id;

