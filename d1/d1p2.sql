create or replace procedure day1_part2 as

   cursor c1 is
    select input_data, value
    from day1_part2_view a
    where location = (select min(location) from day1_part2_view b where a.input_data = b.input_data);

    c1_rec c1%rowtype;

    v_total number;
    v_cat varchar2(100);

    function f_get_last (p_input varchar2) 
    return varchar2 is    
        v_return varchar2(100) := null;

        begin
            select value
            into v_return
            From day1_part2_last_view a
            where location = (select max(location) from day1_part2_last_view b where a.input_data = b.input_data) 
            and a.input_data = p_input;

            return v_return;
        end;

begin

   v_cat := null;
   v_total := 0;

   open c1;

   fetch c1 into c1_rec;

   while (c1%found) loop

    v_cat := c1_rec.value || f_get_last(c1_rec.input_data);
    v_total := v_total + to_number(v_cat);

    fetch c1 into c1_rec;

   end loop;

    close c1;

    insert into answer_table values (v_total);

END;
