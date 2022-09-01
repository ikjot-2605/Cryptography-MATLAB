% Ikjot Singh Dhody - Cryptography and Applications Lab Mid-Semester
% Examination - 191CS123 - ElGamal attack.
function cs123_midsem()
    cs123_q = input("Kindly input a prime number q : ");
    
    cs123_alpha = input("Kindly input a primitive root of q - alpha : ");
    
    cs123_Xr = input("Kindly input private key of Receiver Xr < q-1 : ");
    
    cs123_k = input("Kindly input a random integer k < q : ");
    
    cs123_m1 = input("Kindly input plaintext m1 : ");
    
    cs123_c_m2_p1 = input("Kindly input ciphertext of m2 - Part 1 : ");
    
    cs123_c_m2_p2 = input("Kindly input ciphertext of m2 - Part 2 : ");

    %cs123_q = 19;
    
    %cs123_alpha = 10;
    
    %cs123_Xr = 5;
    
    %cs123_k = 6;
    
    %cs123_m1 = 17;
    
    %cs123_c_m2_p1 = 11;
    
    %cs123_c_m2_p2 = 4;
    
    % Calculate public key

    cs123_public_key = [cs123_q,cs123_alpha,powermod(cs123_alpha,cs123_Xr,cs123_q)];
    fprintf("Public key of Receiver is : ( %d, %d, %d) \n",cs123_public_key(1),cs123_public_key(2),cs123_public_key(3))

    % Calculate Ciphertext of M1

    cs123_c_m1_p1 = powermod(cs123_alpha,cs123_k,cs123_q);
    cs123_Yr = powermod(cs123_alpha,cs123_Xr,cs123_q);
    
    % Calculate K
    cs123_K = powermod(cs123_Yr,cs123_k,cs123_q);

    cs123_c_m1_p2 = mod(cs123_K * cs123_m1 , cs123_q);
    fprintf("Ciphertext of m1 is : (%d, %d) \n",cs123_c_m1_p1,cs123_c_m1_p2);

    % Display K

    fprintf("Value of K is : %d\n",cs123_K);

    % Calculate m2
    [cs123_G, cs123_C, ~] = gcd(cs123_K,cs123_q);
    cs123_inv_K = mod(cs123_C,cs123_q);
    fprintf("Modular Mult Inverse of K is : %d\n",cs123_inv_K);
    cs123_m2 = mod(cs123_c_m2_p2 * cs123_inv_K,cs123_q);
    fprintf("Plaintext m2 is : %d\n",cs123_m2);
end