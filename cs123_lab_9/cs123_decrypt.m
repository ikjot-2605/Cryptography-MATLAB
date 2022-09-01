% Basic decrypt function, using modular exponentiation.
function cs123_M = cs123_decrypt(cs123_C,cs123_d,cs123_n)
    cs123_M = powermod(cs123_C,cs123_d,cs123_n);
end