CREATE DATABASE home_work6;
use home_work6;

-- 2. Выведите только четные числа от 1 до 10. Пример: 2,4,6,8,10
drop function even;
DELIMITER $$
create function even(number int)
returns varchar(450)
deterministic

begin
declare num1 int default 0;
declare res varchar(450) default ' ';

while num1 <= number do
if (num1 % 2 = 0) then
	set res = concat(res , ' ', num1);
    set num1 = num1 + 1;
else 
	set num1 = num1 + 1;
end if;
end while;
return res;
end$$
DELIMITER $$;
select even(10);
