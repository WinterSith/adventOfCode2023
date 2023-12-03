create or replace procedure day2_part1 as 
    
    cursor c1 is
        select distinct to_number ( substr( game_num, instr(game_num,' ',1) ) ) val From day2_part1_view
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

    c1_rec c1%rowtype;

    v_starting_total number := 0;

    begin

        select sum(to_number ( substr( game_num, instr(game_num,' ',1) ) ))
        into v_starting_total
        from day2part1_table;

        open c1;

        fetch c1 into c1_rec;

        while (c1%found) loop

            v_starting_total := v_starting_total - c1_rec.val;

            fetch c1 into c1_rec;
        end loop;

        close c1;

        insert into answer_table values (v_starting_total);

        commit;

    end;

