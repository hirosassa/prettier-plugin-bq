----- DECLARE statement -----
declare a int64;

declare b, c default 1;

declare
  -- break
  d,
  e
int64
default 1
;

----- SET statement -----
set a = 5;

set (b, c) = (1,2);

set
 -- break
  (b, c) = (select as struct 1, 2)
;

----- EXECUTE statement -----
execute immediate 'SELECT 1';

execute immediate 'SELECT ?' using 1;

execute immediate 'SELECT @a' into a using 1 as a;

execute immediate 'SELECT ?, ?'
-- break
into b, c using 1, 2;



select 1;

/*
declare x int64;declare x,y default 1;
set x=5;set (x,y)=(1,2);set (x,y)=(select as struct 1,2);
execute immediate 'select 1';execute immediate 'select ?,?' into x,y using 1,2;execute immediate 'select @x' into x using 1 as x;
begin select 1;select 2;end;begin select 1;exception when error then select 2;end;begin exception when error then end;
if true then end if;
if true then select 1; select 2;end if;
if true then select 1; elseif true then end if;
if true then elseif true then select 1; elseif true then select 2; select 3; else end if;
if true then else select 1; end if;
if true then else select 1;select 2; end if;
loop select 1; end loop;loop select 1;break; end loop;
while true do select 1; end while;
while true do iterate;leave;continue; end while;
raise;raise using message = 'error';
begin
  begin
    select 1;
  exception when error then
    raise using message='error';
  end;
exception when error then
  select @@error.message;
end;
call mydataset.myprocedure(1);
*/
