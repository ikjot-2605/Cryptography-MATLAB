% This function performs the initial 8-bit permutation.

function cs123_PT_IP = cs123_IP(cs123_PT)
    % The 8 bit initial permutation array 
    cs123_IP8 = [2 ,6, 3 ,1 ,4 ,8 ,5, 7];
    
    cs123_PT_IP = '';
    for cs123_i=1:8
        cs123_PT_IP = append(cs123_PT_IP,cs123_PT(cs123_IP8(cs123_i)));
    end
end