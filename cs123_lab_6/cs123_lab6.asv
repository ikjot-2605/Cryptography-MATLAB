% Ikjot Singh Dhody DH - Key Exchange Lab 6 Cryptography Lab
function cs123_lab6()
    disp("Welcome to DH Key Exchange Program!")
    cs123_q = 23;
    cs123_alpha = 5;
    cs123_BOB_PUBLIC_KEY = 10;
    cs123_ALICE_PUBLIC_KEY = 8;
    
    cs123_ALICE_PRIVATE_KEY = 0;
    cs123_BOB_PRIVATE_KEY = 0;
    % Now we are finding the private key of bob by this while loop
    while(true)
        if powermod(cs123_alpha,cs123_BOB_PRIVATE_KEY,cs123_q)==cs123_BOB_PUBLIC_KEY
            break
        else 
            cs123_BOB_PRIVATE_KEY = cs123_BOB_PRIVATE_KEY + 1;  
        end
    end
    % Now we are finding the private key of alice by this while loop
    while(true)
        if powermod(cs123_alpha,cs123_ALICE_PRIVATE_KEY,cs123_q)==cs123_ALICE_PUBLIC_KEY
            break
        else 
            cs123_ALICE_PRIVATE_KEY = cs123_ALICE_PRIVATE_KEY + 1;  
        end
    end
    
    fprintf("The private keys are : BOB PRIVATE KEY - %d, ALICE PRIVATE KEY - %d\n",cs123_BOB_PRIVATE_KEY,cs123_ALICE_PRIVATE_KEY);
    
    % Bob has the generated public key 8 from Alice, the shared key will be
    % 8^BOB_PRIVATE_KEY % q

    cs123_shared_key = powermod(cs123_ALICE_PUBLIC_KEY, cs123_BOB_PRIVATE_KEY, cs123_q);
    fprintf("The shared key with Bob is : %d\n",cs123_shared_key);

    % Now we prove that 5 is a primitive root of 23
    % For this, we take 5 to all powers from 1 to 22, and then mod it with
    % 23, and show that all the results are distinct, proving that 5 is a
    % primitive root of 23
    cs123_result = [];
    for cs123_i = 1:22
        fprintf("%d ^ %d mod %d = %d\n",5,cs123_i,23,powermod(5,cs123_i,23));
        cs123_result(end+1) = powermod(5,cs123_i,23);
    end

    disp("Here is the result array consisting of all powermod operations : ");
    disp(cs123_result);
    disp("We see that it contains 22 distinct elements, and hence it is proved that 5 is a primitive root of 23");

end