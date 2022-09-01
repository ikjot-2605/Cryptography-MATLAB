% This is the encrypt function, it takes Plaintext, and 2 subkeys to be
% used. Initial Permutation is done, then two round functions are
% performed, followed by an inverse permutation.
function cs123_decrypt(cs123_PT,cs123_key1,cs123_key2)
    % Initial Permutation
    cs123_PT = cs123_IP(cs123_PT);
    
    fprintf('\n\nROUND 1\n\n');
    cs123_PT = cs123_internal_func(cs123_PT,cs123_key2,true);
    fprintf('\n\nROUND 2\n\n');
    cs123_PT = cs123_internal_func(cs123_PT,cs123_key1,false);
    
    % Final Inverse Permutation
    cs123_PT = cs123_inv_IP(cs123_PT);
    fprintf("After Inverse Permutation : %s\n",string(cs123_PT));
    
    fprintf("\nFINAL PLAIN TEXT IS : %s",string(cs123_PT));
end