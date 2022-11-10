create or replace function get_random_fighting_method() returns text as
$$
declare
    name text;
begin
    select fighting_method.name
    into name
    from fighting_method
    order by random()
    limit 1;
    return name;
end;
$$ language plpgsql;

create or replace function get_random_breathing_method() returns text as
$$
declare
    name text;
begin
    select breathing_method.name
    into name
    from breathing_method
    order by random()
    limit 1;
    return name;
end;
$$ language plpgsql;

--Не работает
create or replace procedure set_random_sacrifices() as
$$
begin
    update participant
    set name_of_sacrifice = s.name
    from (select student.name
          from student
          where student.name not in (select name from participant)
          order by random()
          limit 8) as s;
end;
$$ language plpgsql;

create or replace function generate_participants()
    returns table
            (
                name text
            )
as
$$
begin
    insert into participant
    select student.name, 0, get_random_fighting_method(), get_random_breathing_method(), student.name
    from student
    order by random()
    limit 8;
    return query (select participant.name from participant);
end;
$$ language plpgsql;

