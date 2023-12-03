create or replace procedure day2_part2 as
    
        v_total number := 0;

        cursor c1 is
            select game_num
            from day2part1_table;

        c1_rec c1%rowtype;

        function f_get_power (p_game_num varchar2) 
        return number is

            v_return number;
            x number := 1;

            cursor c_max is
                select max
                from day2_part2_view
                where game_num = p_game_num;

            c_max_rec c_max%rowtype;   

            begin

                open c_max;

                fetch c_max into c_max_rec;

                while (c_max%found) loop
                    if (x=1)
                    then
                        v_return := c_max_rec.max;
                        x := x+1;
                    else 
                        v_return := v_return * c_max_rec.max;
                    end if;

                    fetch c_max into c_max_rec;

                end loop;

                return v_return;
            end;

    begin

        open c1;

        fetch c1 into c1_rec;

        while (c1%found) loop

            v_total := v_total + f_get_power(c1_rec.game_num);

            fetch c1 into c1_rec;

        end loop;

        insert into answer_table values (v_total);

        commit;

    end;
