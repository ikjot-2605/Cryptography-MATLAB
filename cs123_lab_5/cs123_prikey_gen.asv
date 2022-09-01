% Generate private key using p,q,e
function [cs123_d,cs123_n] = cs123_prikey_gen(cs123_p,cs123_q,cs123_e)
    cs123_phi = (cs123_p-1)*(cs123_q-1);
    cs123_n = cs123_p*cs123_q;
    cs123_d = cs123_gen_d(cs123_phi,cs123_e);
end