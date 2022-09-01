function cs_123_q2
    % Polyalphabetic(Vigenere) Ciphers implementation starts here
    % In this program, the alphabet is lowercase letters - (a-z)!
    
    disp("Ikjot Singh Lab 2 Polyalphabetic Cipher Program 2 - 191CS123")

    disp("Welcome to the Polyalphabetic cipher console!");
    % input plaintext
    cs123_PT = input("Please enter the Plain Text to encrypt : ",'s');
    %input key
    cs123_KEY = input("Please enter the Key with which to encrypt : ",'s');
    %expand key to match length of plain text
    cs123_KEY = cs123_repeat(cs123_KEY,(strlength(cs123_PT)/strlength(cs123_KEY))+3);
    cs123_KEY = extractBetween(cs123_KEY,1,strlength(cs123_PT));
    disp("Here is the extended key.");
    disp(cs123_KEY);
    % cipher text object
    cs123_CT = "";
    % begin the encryption 
    for cs123_i=1:strlength(cs123_KEY)
        cs123_c1 = double(char(extractBetween(cs123_PT,cs123_i,cs123_i)));
        cs123_c2 = double(char(extractBetween(cs123_KEY,cs123_i,cs123_i)));
        cs123_p = char(mod(cs123_c1+cs123_c2-2*double(char("a")),26)+double(char("a")));
        % Append encrypted char to cipher text object
        cs123_CT=append(cs123_CT,char(cs123_p));
    end
    %encryption complete
    disp("Now we print the decrypted cipher text(plain text) : ")
    disp(cs123_CT);
    disp("Now we decrypt the cipher text using the same key.");
    %the plaintext object which will be generated using decryption of the
    %vigenere cipher
    cs123_gen_PT = "";
    % decryption begins
    for cs123_i=1:strlength(cs123_KEY)
        cs123_c1 = double(char(extractBetween(cs123_CT,cs123_i,cs123_i)));
        cs123_c2 = double(char(extractBetween(cs123_KEY,cs123_i,cs123_i)));
        % append to the gen pt object
        cs123_gen_PT=append(cs123_gen_PT,char(mod(cs123_c1-cs123_c2,26)+double(char("a"))));
    end
    disp("Now we print the generated decrypted cipher text(plain text) for validation: ")
    disp(cs123_gen_PT);
end

% function to repeat the key in order to match length to length of plain
% text
function cs123_repeated = cs123_repeat(cs123_str,n)
    cs123_repeated = "";
    for cs123_i=1:n
        cs123_repeated = append(cs123_repeated,cs123_str);
    end
end