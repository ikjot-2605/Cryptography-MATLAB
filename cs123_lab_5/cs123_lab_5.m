% RSA Implementation Ikjot Singh Dhody - 191CS123 - p = 5; q = 11, e = 3; M = 9
% According to book, assuming pa nd q to be the prime nubers, e to be the
% exponent and M to be the plaintext 

function cs123_lab_5()
    % Define all the mentioned parameters for RSA algorithm
    cs123_M = 9;
    cs123_P = 5;
    cs123_Q = 11;
    cs123_E = 3;
    fprintf("M = %d, P = %d, Q = %d, e = %d\n\n",cs123_M,cs123_P,cs123_Q,cs123_E);
    fprintf("RSA encryption begins\n\n");
    % Generate Public Key
    [cs123_pub_e,cs123_pub_n] = cs123_pubkey_gen(cs123_P,cs123_Q,cs123_E);
    fprintf("Public key is n = %d , e = %d\n",cs123_pub_n,cs123_pub_e);
    % Encrypt using public key
    cs123_C = cs123_encrypt(cs123_M,cs123_pub_e,cs123_pub_n);
    fprintf("Encrypted text is : %d\n",cs123_C);
    % Generate Private Key
    [cs123_pri_d,cs123_pri_n] = cs123_prikey_gen(cs123_P,cs123_Q,cs123_E);
    fprintf("Private key is n = %d , d = %d\n",cs123_pri_n,cs123_pri_d);
    % Decrypt using private key
    cs123_Decrypted_C = cs123_decrypt(cs123_C,cs123_pri_d,cs123_pri_n);
    fprintf("Decrypted text is : %d\n",cs123_Decrypted_C);
end

