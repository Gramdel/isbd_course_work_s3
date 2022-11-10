create table color
(
    name text primary key
);

create table vulnerability
(
    id          bigserial primary key,
    description text not null
);

create table country
(
    name             text primary key,
    has_magic_school boolean not null
);

create table dragon
(
    name          text primary key,
    danger_level  int check (danger_level between 1 and 5)                                  not null,
    losing_chance float check (losing_chance between 0.33 and 0.99)                         not null,
    country       text references country (name) on delete restrict on update cascade       not null,
    color         text references color (name) on delete restrict on update cascade         not null,
    vulnerability bigint references vulnerability (id) on delete restrict on update cascade not null
);

create table danger
(
    name            text primary key,
    meeting_chance  float check (meeting_chance between 0.1 and 0.99)   not null,
    escaping_chance float check (escaping_chance between 0.33 and 0.99) not null
);

create table type
(
    name text primary key
);

create table fighting_method
(
    name          text primary key,
    vulnerability bigint references vulnerability (id) on delete restrict on update cascade not null
);

create table breathing_method
(
    name text primary key,
    type text references type (name) on delete restrict on update cascade not null
);

create table school
(
    name    text primary key,
    country text references country (name) on delete restrict on update cascade not null
);

create table student
(
    name   text primary key,
    school text references school (name) on delete restrict on update cascade not null
);

create table participant
(
    name              text references student (name) on delete restrict on update cascade primary key,
    points            int check (points between 0 and 80)                                          not null,
    fighting_method   text references fighting_method (name) on delete restrict on update cascade  not null,
    breathing_method  text references breathing_method (name) on delete restrict on update cascade not null,
    name_of_sacrifice text references student (name) on delete restrict on update cascade          not null
);