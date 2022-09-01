% Basic encrypt function, using modular exponentiation.
function cs123_C = cs123_encrypt(cs123_M,cs123_e,cs123_n)
    cs123_C = powermod(cs123_M,cs123_e,cs123_n);
end