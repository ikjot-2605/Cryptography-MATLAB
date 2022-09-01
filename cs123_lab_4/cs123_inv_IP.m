% This function performs the final inverse 8-bit permutation.

function cs123_PT_IP = cs123_inv_IP(cs123_PT)
    % The 8 bit initial permutation array
    cs123_IP8 = [4,1,3,5,7,2,8,6];
    
    cs123_PT_IP = '';
    for cs123_i=1:8
        cs123_PT_IP = append(cs123_PT_IP,cs123_PT{1}(cs123_IP8(cs123_i)));
    end
end
