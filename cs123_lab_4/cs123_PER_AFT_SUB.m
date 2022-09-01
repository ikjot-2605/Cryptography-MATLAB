% This function is to perform the 4-bit permutation after the substitution
% step using the P4 array.
function cs123_OUT = cs123_PER_AFT_SUB(cs123_INP)
    % P4 array for permuting
    cs123_P4 =[2, 4, 3, 1];
    cs123_OUT = '';
    for cs123_i = 1:4
        cs123_OUT = append(cs123_OUT,cs123_INP(cs123_P4(cs123_i)));
    end
end