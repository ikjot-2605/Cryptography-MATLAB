cs_123_n = input("How many numbers?")
cs_123_lucas_number(cs_123_n)

function cs_123_lucas_number(cs_123_n)
    if(cs_123_n>=1)
        disp(1);
    end
    if(cs_123_n>=2)
        disp(3);
    end
    cs_123_prev = 1;
    cs_123_now = 3;
    for cs_123_i = 3:cs_123_n
        cs_123_new_prev = cs_123_now;
        cs_123_now = cs_123_prev+cs_123_now;
        cs_123_prev=cs_123_new_prev;
        disp(cs_123_now)
    end
end