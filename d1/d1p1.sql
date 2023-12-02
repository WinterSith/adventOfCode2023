create or replace procedure day1_part1 as

    v_digit_1st varchar2(1) := null;
    v_digit_last varchar2(1) := null;
    v_cat varchar2(2) := null;
    v_total number := null;

    cursor c1 is
        select input_data from day1part1_table;

    c1_rec c1%rowtype;

    function f_get_1st (p_input varchar2)
    return varchar2 is
        i number;
        v_hold varchar2(1);
        v_return varchar2(1);
        v_stop boolean;

        begin
            i := 1;
            v_stop := FALSE;
            while (not v_stop) loop
                v_hold := substr(p_input,i,1);
                if (v_hold in ('0','1','2','3','4','5','6','7','8','9'))
                then
                    v_stop := TRUE;
                    v_return := v_hold;
                else
                    i := i+1;
                end if;
            end loop;

            return v_return;

        end;

    function f_get_last (p_input varchar2)
    return varchar2 is
        i number;
        v_hold varchar2(1);
        v_return varchar2(1);
        v_stop boolean;

        begin
            i := 1;
            v_stop := FALSE;
            while (not v_stop) loop
                v_hold := substr(p_input,-i,1);
                if (v_hold in ('0','1','2','3','4','5','6','7','8','9'))
                then
                    v_stop := TRUE;
                    v_return := v_hold;
                else i := i + 1;
                end if;

            end loop;

            return v_return;
    end;

begin

    v_total := 0;

    open c1;

    fetch c1 into c1_rec;

    while (c1%found) loop
        v_digit_1st := f_get_1st(c1_rec.input_data);
        v_digit_last := f_get_last(c1_rec.input_data);
        v_cat := v_digit_1st || v_digit_last;
        v_total := v_total + to_number(v_cat);

        fetch c1 into c1_rec;
    end loop;

    close c1;

    insert into answer_table values (v_total);

    commit;
end;
