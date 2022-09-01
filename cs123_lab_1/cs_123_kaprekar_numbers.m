cs_123_n = input("How many Numbers");
cs_123_kaprekar_number(cs_123_n);

function cs_123_kaprekar_number(cs_123_n)
    cs_123_curr = 1;
    while(cs_123_curr<cs_123_n)
        if(cs_123_is_kaprekar_num(cs_123_curr))
            disp(cs_123_curr)
        end
        cs_123_curr= cs_123_curr+1;
    end

end

function cs_123_isKaprekar = cs_123_is_kaprekar_num(cs_123_num)
    cs_123_orig = cs_123_num;
    cs_123_num = cs_123_num.^2;
    cs_123_lengthNum = max(ceil(log10(abs(cs_123_orig)+1)),1);
    cs_123_building = mod(cs_123_num,10.^cs_123_lengthNum);
    cs_123_num = (cs_123_num - cs_123_building)/10.^cs_123_lengthNum;
    cs_123_building = cs_123_building + cs_123_num;
    if (cs_123_building==cs_123_orig)
        cs_123_isKaprekar = true;
    else 
        cs_123_isKaprekar = false;
    end
end