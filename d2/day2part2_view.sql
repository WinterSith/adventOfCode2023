create view day2_part2_view as (
select game_num,max (to_number( substr(value1, 1, instr(value1,' ',2)-1 ) ) ) max  
from day2_part1_view
where instr(value1,'green',1) <> 0
group by game_num
union all
select game_num,max (to_number( substr(value1, 1, instr(value1,' ',2)-1 ) ) ) max 
from day2_part1_view
where instr(value1,'red',1) <> 0
group by game_num
union all
select game_num,max (to_number( substr(value1, 1, instr(value1,' ',2)-1 ) ) ) max  
from day2_part1_view
where instr(value1,'blue',1) <> 0
group by game_num );
