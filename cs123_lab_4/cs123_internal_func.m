% This is the common function used by both encrypt and decrypt to get most
% of the encryption - decryption done

function cs123_curr_PT = cs123_internal_func(cs123_PT,cs123_key,cs123_flag)
    fprintf("After initial permutation : %s\n",string(cs123_PT));
    cs123_l = extractBetween(cs123_PT,1,4);
    cs123_r = extractBetween(cs123_PT,5,8);
    fprintf("Left half : %s , Right half : %s\n",string(cs123_l),string(cs123_r));
    cs123_PT_EP = cs123_EP(cs123_r);
    fprintf("After Expansion Round : %s\n",string(cs123_PT_EP));
    cs123_PT_XOR1 = dec2bin(bitxor(bin2dec(cs123_PT_EP),bin2dec(cs123_key)),8);
    fprintf("After XOR with Key : %s\n",string(cs123_PT_XOR1));
    cs123_PT_SUB = cs123_SUBSTITUTE(extractBetween(cs123_PT_XOR1,1,4),extractBetween(cs123_PT_XOR1,5,8));
    fprintf("After substitutions : %s\n",string(cs123_PT_SUB));
    cs123_AFT_PER_PT = cs123_PER_AFT_SUB(cs123_PT_SUB);
    fprintf("After permuting : %s\n",string(cs123_AFT_PER_PT));
    cs123_PT_XOR2 = dec2bin(bitxor(bin2dec(cs123_AFT_PER_PT),bin2dec(cs123_l)),4);
    fprintf("After final XOR of round : %s\n",string(cs123_PT_XOR2));

    % Flag is just to determine which half is appended first.
    if cs123_flag 
        cs123_PT = append(cs123_r,cs123_PT_XOR2);
    else 
        cs123_PT = append(cs123_PT_XOR2,cs123_r);
    end
    
    fprintf("Result after this round : %s\n",string(cs123_PT));
    cs123_curr_PT = cs123_PT;
end