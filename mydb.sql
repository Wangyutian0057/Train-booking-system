drop database if exists mydb;

use mydb;

drop table if exists bticket

    drop table if exists bticket1

    drop table if exists message

    drop table if exists t_user

    drop table if exists ticket

    create table bticket (
        t_id integer not null auto_increment,
        b_Id integer not null,
        b_ticketid integer not null,
        b_travelname varchar(20) not null,
        b_gender varchar(10) not null,
        b_telephone integer not null,
        t_neednum integer not null,
        primary key (t_id)
    )

    create table bticket1 (
        t_id integer not null auto_increment,
        b_Id integer not null,
        b_ticketid integer not null,
        b_travelname varchar(20) not null,
        b_gender varchar(10) not null,
        b_telephone integer not null,
        t_neednum integer not null,
        primary key (t_id)
    )

    create table message (
        id integer not null auto_increment,
        username varchar(20) not null,
        title varchar(50) not null,
        content varchar(200) not null,
        date varchar(100) not null,
        primary key (id)
    )

    create table t_user (
        u_id integer not null auto_increment,
        u_username varchar(10),
        u_password varchar(10),
        u_gender varchar(2),
        u_age integer,
        u_address varchar(100),
        u_registerDate datetime,
        primary key (u_id)
    )

    create table ticket (
        t_id integer not null,
        t_start varchar(255) not null,
        t_end varchar(255) not null,
        t_price double precision not null,
        t_model varchar(255) not null,
        t_ticketFactory varchar(255) not null,
        t_ticketnum integer not null,
        flytime varchar(255),
        primary key (t_id)
    )
