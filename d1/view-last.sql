  CREATE OR REPLACE FORCE EDITIONABLE VIEW "C##CHAD"."DAY1_PART2_LAST_VIEW" ("INPUT_DATA", "VALUE", "LOCATION") AS 
  ( 
select "INPUT_DATA","VALUE","LOCATION" from 


(select input_data,
       '0' value,
       instr(input_data,'0',-1) location
from   day1part1_table

union all

select input_data,
       '1',
       instr(input_data,'1',-1)
from day1part1_table

union all

select input_data,
       '2',
       instr(input_data,'2',-1)
from day1part1_table

union all

select input_data,
       '3',
       instr(input_data,'3',-1)
from day1part1_table

union all

select input_data,
       '4',
       instr(input_data,'4',-1)
from day1part1_table

union all

select input_data,
       '5',
       instr(input_data,'5',-1)
from day1part1_table

union all

select input_data,
       '6',
       instr(input_data,'6',-1)
from day1part1_table

union all

select input_data,
       '7',
       instr(input_data,'7',-1)
from day1part1_table

union all

select input_data,
       '8',
       instr(input_data,'8',-1)
from day1part1_table

union all

select input_data,
       '9',
       instr(input_data,'9',-1)
from day1part1_table 

union  all

select input_data,
       '0',
       instr(input_data,'zero',-1)
from day1part1_table 

union  all

select input_data,
       '1',
       instr(input_data,'one',-1)
from day1part1_table 

union  all

select input_data,
       '2',
       instr(input_data,'two',-1)
from day1part1_table 

union  all

select input_data,
       '3',
       instr(input_data,'three',-1)
from day1part1_table 

union  all

select input_data,
       '4',
       instr(input_data,'four',-1)
from day1part1_table 

union  all

select input_data,
       '5',
       instr(input_data,'five',-1)
from day1part1_table 

union  all

select input_data,
       '6',
       instr(input_data,'six',-1)
from day1part1_table 

union  all

select input_data,
       '7',
       instr(input_data,'seven',-1)
from day1part1_table 

union  all

select input_data,
       '8',
       instr(input_data,'eight',-1)
from day1part1_table 

union  all

select input_data,
       '9',
       instr(input_data,'nine',-1)
from day1part1_table 

)
where location <> 0  );


