% Ikjot Singh Dhody 191CS123 Simple Secret Key Distribution Week 9

% Used RSA Code Implemented by me during Lab 5 for asymmetric
% encryption/decryption.

function cs123_lab9()
    disp("Welcome to the Simple Secret Key Distribution program!")
    %cs123_public_key = input("Kindly input the Public Key to be used : ");
    %cs123_private_key = input("Kindly input the Private Key to be used : ");
    %cs123_id_a = input("Kindly input the identifier of user A: ");
    %cs123_id_b = input("Kindly input the identifier of user B: ");
    cs123_P = input("Kindly input the value of P : ");
    cs123_Q = input("Kindly input the value of Q : ");
    cs123_E = input("Kindly input the value of E : ");
    cs123_ID_A = input("Kindly input the identifier of A : ");
    [cs123_pub_e,cs123_pub_n] = cs123_pubkey_gen(cs123_P,cs123_Q,cs123_E);
    [cs123_pri_d,cs123_pri_n] = cs123_prikey_gen(cs123_P,cs123_Q,cs123_E);
    fprintf("The user A's public key is (%d, %d).\n",cs123_pub_e,cs123_pub_n);
    fprintf("The user A's private key is (%d, %d).\n",cs123_pri_d,cs123_pri_n);
    
    fprintf("The user A sends the message ((%d, %d),(%d)) to user B.\n",cs123_pub_e,cs123_pub_n,cs123_ID_A);

    cs123_Ks = 23;
    cs123_encrypted_Ks_Pu_A = cs123_encrypt(cs123_Ks,cs123_pub_e,cs123_pub_n);
    fprintf("The user B generates the secret key Ks = %d, and encrypts it using the public key he/she received E(Ks) = %d, then sends it back to user A.\n",cs123_Ks,cs123_encrypted_Ks_Pu_A);

    cs123_decrypted_Ks_Pr_A = cs123_decrypt(cs123_encrypted_Ks_Pu_A,cs123_pri_d,cs123_pri_n);
    fprintf("User A receives the secret key (E(Ks)=%d) encrypted using his public key and then decrypts it to get the secret key Ks = %d.\n",cs123_encrypted_Ks_Pu_A,cs123_decrypted_Ks_Pr_A);

    %cs123_pub_e=0;
    %cs123_pub_n=0;
    %cs123_pri_d=0;
    %cs123_pri_n=0;
    fprintf("Now that all the messages have been passed and the secret key is exchanged, the generated public and private key of user A are deleted/thrown away.\n");

end

