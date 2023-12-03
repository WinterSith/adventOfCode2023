select distinct to_number ( substr( game_num, instr(game_num,' ',1) ) ) x From day2_part1_view
where instr(value1,'blue',1) <> 0
and to_number( substr(value1, 1, instr(value1,' ',2)-1 ) ) > 14
union
select distinct to_number ( substr( game_num, instr(game_num,' ',1) ) ) From day2_part1_view
where instr(value1,'red',1) <> 0
and to_number( substr(value1, 1, instr(value1,' ',2)-1 ) ) > 12
union
select distinct to_number ( substr( game_num, instr(game_num,' ',1) ) ) From day2_part1_view
where instr(value1,'green',1) <> 0
and to_number( substr(value1, 1, instr(value1,' ',2)-1 ) ) > 13 ;


select to_number ( substr( game_num, instr(game_num,' ',1) ) )  from day2_part1_view;

select to_number( substr(value1, 1, instr(value1,' ',2)-1 ) ) from day2_part1_view;

select * from day2part1_table;

exec day2_part1;

select * From answer_table;