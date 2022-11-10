create or replace function delete_extra_participants() returns trigger as
$$
begin

    return null;
end;
$$ language plpgsql;

drop trigger if exists participants_generated on participant;
create trigger participants_generated
    after update
    on participant
    for each row
execute procedure delete_extra_participants();

