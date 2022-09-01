cs_123_n = input("How many Numbers");
cs_123_narcissistic_numbers(cs_123_n);

function cs_123_narcissistic_numbers(cs_123_n)
    cs_123_counter = 0;
    cs_123_curr = 1;
    while(cs_123_counter<cs_123_n)
        if(cs_123_is_narcissistic_num(cs_123_curr))
            cs_123_counter = cs_123_counter+1;
            disp(cs_123_curr)
        end
        cs_123_curr= cs_123_curr+1;
    end

end

function cs_123_isNarcisstic = cs_123_is_narcissistic_num(cs_123_num)
    cs_123_lengthNum = max(ceil(log10(abs(cs_123_num)+1)),1);
    cs_123_orig = cs_123_num;
    cs_123_building = 0;
    while cs_123_num>=1
        cs_123_building = cs_123_building + (mod(cs_123_num,10)).^cs_123_lengthNum;
        cs_123_num = (cs_123_num-(mod(cs_123_num,10)))/10;
    end
    if(cs_123_building == cs_123_orig)
        cs_123_isNarcisstic = true;
    else 
        cs_123_isNarcisstic = false;
    end
end