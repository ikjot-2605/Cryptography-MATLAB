% Ikjot Singh Dhody 191CS123 OFB attack Week 8
function cs123_lab8()
    disp("Welcome to the OFB attack program!")
    
    cs123_M = input("Kindly enter the known plaintext concatenated with hash(as we know hash function) - ([m||h(m)]) to attacker : ");
    fprintf("The known plaintext is %d.\n",cs123_M);
    
    cs123_C = input("Kindly enter the known ciphertext to attacker : ");
    fprintf("The known ciphertext is %d.\n",cs123_C);

    % alpha xor (m||h(m)) = c
    % attacker calculates alpha by rearraging the above equation as
    % alpha = c xor (m||h(m))

    cs123_alpha_key = bitxor(cs123_M,cs123_C);
    fprintf("The attacker computes alpha value to be %d.\n",cs123_alpha_key);

    cs123_M_new_attacker = input("Kindly enter the plaintext concatenated with hash(as we know hash function) - ([m'||h(m')]) to provide message integrity : ");
    fprintf("The plaintext to encrypt is %d.\n",cs123_M_new_attacker);
    
    % now that the attacker has calculated alpha, he can calculate the
    % ciphertext for his own input [m'||h(m')] as follows
    % c' = alpha xor [m'||h(m')]

    cs123_C_new_attacker = bitxor(cs123_M_new_attacker,cs123_alpha_key);
    fprintf("The encrypted answer is %d.\n",cs123_C_new_attacker);
    
    % Question specified 128 bits

    disp("Below is the xor-summary for the operations")
    fprintf("m||h(m) binary : %s\n",dec2bin(cs123_M,128))
    fprintf("c binary : %s\n",dec2bin(cs123_C,128))
    fprintf("alpha binary : %s\n",dec2bin(cs123_alpha_key,128))
    fprintf("m'||h(m') : %s\n",dec2bin(cs123_M_new_attacker,128))
    fprintf("c' binary : %s\n",dec2bin(cs123_C_new_attacker,128))
end

