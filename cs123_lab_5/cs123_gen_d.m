function [cs123_d] = cs123_gen_d(cs123_phi,cs123_e)
    [garbage1,cs123_d,garbage2] = (cs123_extended_euclid(cs123_phi,cs123_e));
    cs123_d = mod(cs123_d,cs123_phi);
end