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

create or replace procedure set_random_sacrifices() as
$$
declare
    sacrifices   text[];
    participants text[];
begin
    sacrifices := array(select student.name
                        from student
                        where student.name not in (select participant.name from participant)
                        order by random()
                        limit 7);

    participants := array(select participant.name
                          from participant);

    for i in 0..7
        loop
            update participant
            set name_of_sacrifice = sacrifices[i]
            where participant.name = participants[i];
        end loop;
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
    limit 7;
    return query (select participant.name from participant);
end;
$$ language plpgsql;

