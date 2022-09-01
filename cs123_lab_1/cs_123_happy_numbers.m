function cs_123_happy_numbers
    cs_123_happyNumbers = 0;
    cs_123_k = 1;
    cs_123_n=input("Please enter the number cs_123_n : ");
    while cs_123_happyNumbers < cs_123_n
        if cs_123_isHappyNumber(cs_123_k, [])
            disp(cs_123_k);
            cs_123_happyNumbers = cs_123_happyNumbers+1;
        end
        cs_123_k = cs_123_k+1;
    end
end
 
function cs_123_result = cs_123_isHappyNumber(cs_123_k, cs_123_prev)
    if cs_123_k == 1
        cs_123_result = true;
    elseif ismember(cs_123_k, cs_123_prev)
        cs_123_result = false;
    else
        cs_123_result = cs_123_isHappyNumber(sum((sprintf('%d', cs_123_k)-'0').^2), [cs_123_prev cs_123_k]);
    end
end