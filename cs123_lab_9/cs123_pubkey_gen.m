% Generate Public key using p,q,e
function [cs123_e,cs123_n] = cs123_pubkey_gen(cs123_p,cs123_q,cs123_ei)
    cs123_e = cs123_ei;
    cs123_n = cs123_p*cs123_q;
end