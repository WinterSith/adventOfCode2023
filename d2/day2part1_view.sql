
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##CHAD"."DAY2_PART1_VIEW" ("GAME_NUM", "VALUE1") AS 
  ( 

select game_num, value1 from day2part1_table
union all
select game_num, value2 from day2part1_table 
union all
select game_num, value3 from day2part1_table 
union all
select game_num, value4 from day2part1_table 
union all
select game_num, value5 from day2part1_table 
union all
select game_num, value6 from day2part1_table 
union all
select game_num, value7 from day2part1_table 
union all
select game_num, value8 from day2part1_table 
union all
select game_num, value9 from day2part1_table 
union all
select game_num, value10 from day2part1_table 
union all
select game_num, value11 from day2part1_table 
union all
select game_num, value12 from day2part1_table 
union all
select game_num, value13 from day2part1_table 
union all
select game_num, value14 from day2part1_table 
union all
select game_num, value15 from day2part1_table 
union all
select game_num, value16 from day2part1_table 
union all
select game_num, value17 from day2part1_table 
union all
select game_num, value18 from day2part1_table 
union all
select game_num, value19 from day2part1_table 
union all
select game_num, value20 from day2part1_table 
union all
select game_num, value21 from day2part1_table 
union all
select game_num, value22 from day2part1_table 
union all
select game_num, value23 from day2part1_table 
union all
select game_num, value24 from day2part1_table 
union all
select game_num, value25 from day2part1_table 
);


