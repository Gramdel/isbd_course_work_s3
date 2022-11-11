create or replace function delete_extra_participants() returns trigger as
$$
begin
    if ((select count(*) from participant where participant.name = participant.name_of_sacrifice) = 0) then
        delete from participant where participant.name in (select name from participant order by random() limit 4);
    end if;
    return null;
end;
$$ language plpgsql;

drop trigger if exists participants_generated on participant;
create trigger participants_generated
    after update
    on participant
execute procedure delete_extra_participants();

