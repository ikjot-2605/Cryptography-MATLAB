% IKJOT SINGH DHODY 191CS123 - Week 4 - CS352 - SDES
% This is the master function to be run to see the demo.

function cs123_SDES()
    % Change the 10 bit key for SDES here
    cs123_key = '1001101100';
    fprintf("Main key : %s\n",string(cs123_key));
    [cs123_key1,cs123_key2] = cs123_key_generation(cs123_key);
    fprintf("SubKey 1 : %s and SubKey 2 : %s\n",cs123_key1,cs123_key2);
    % Change the 8-bit message(Plain Text) for SDES here
    cs123_PT = '00011001';
    fprintf("Plaintext : %s\n",string(cs123_PT));
    fprintf("\n\nENCRYPTION PROCESS TO ENCRYPT %s USING KEY %s",string(cs123_PT),string(cs123_key))
    % Encryption Process begins here
    cs123_CT = cs123_encrypt(cs123_PT,cs123_key1,cs123_key2);
    fprintf("\n\n\n------------------------------------\n------------------------------------\n")
    fprintf("\n\nDECRYPTION PROCESS TO DECRYPT %s USING KEY %s",string(cs123_CT),string(cs123_key))
    % Decryption Process begins here
    cs123_decrypt(cs123_CT,cs123_key1,cs123_key2);
end