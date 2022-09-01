function cs_123_q1()
    % I will attempt the rail fence enc/dec technique

    cs123_PT = input("Kindly enter the plaintext : ",'s');
    cs123_KEY = input("Kindly enter the number of rows(>1) for encryption : ");
    
    cs123_CT = cs_123_encrypt(cs123_PT,cs123_KEY);
    disp("The Cipher text based on your entries is : ")
    disp(cs123_CT);

    cs123_GENPT = cs_123_decrypt(cs123_CT,cs123_KEY);
    disp("The cipher text(encrypted above) on decrypting gives : ")
    disp(cs123_GENPT);

end

function cs123_CT = cs_123_encrypt(cs123_PT,cs123_KEY)
    cs123_CT="";
    cs123_MATRIX = zeros(cs123_KEY,strlength(cs123_PT)) - 1;
    cs123_RI = 0;
    cs123_MUL = 1;
    for cs123_CharIndex = 1:strlength(cs123_PT)
        cs123_RI = cs123_RI + 1*cs123_MUL;
        if cs123_RI==cs123_KEY
            cs123_MUL = -1;
        end
        if cs123_RI == 1 && cs123_MUL == -1
            cs123_MUL = 1;
        end
        cs123_MATRIX(cs123_RI,cs123_CharIndex) = cs123_PT(cs123_CharIndex); 
    end

    for cs123_row = 1:cs123_KEY
        for cs123_col = 1:strlength(cs123_PT)
            if cs123_MATRIX(cs123_row,cs123_col)~=-1
                cs123_CT= append(cs123_CT,char(cs123_MATRIX(cs123_row,cs123_col)));
            end
        end
    end
end

function cs123_PT = cs_123_decrypt(cs123_CT,cs123_KEY)
    cs123_PT = "";
    cs123_MATRIX = zeros(cs123_KEY,strlength(cs123_CT)) - 1;
    cs123_RI = 0;
    cs123_MUL = 1;
    for cs123_CharIndex = 1:strlength(cs123_CT)
        cs123_RI = cs123_RI + 1*cs123_MUL;
        if cs123_RI==cs123_KEY
            cs123_MUL = -1;
        end
        if cs123_RI == 1 && cs123_MUL == -1
            cs123_MUL = 1;
        end
        cs123_MATRIX(cs123_RI,cs123_CharIndex) = '-'; 
    end
    cs123_INDEX = 1;
    for cs123_ROW = 1:cs123_KEY
        for cs123_COL = 1:strlength(cs123_CT)
            if(cs123_MATRIX(cs123_ROW,cs123_COL)~=-1)
                cs123_MATRIX(cs123_ROW,cs123_COL) = double(char(extractBetween(cs123_CT,cs123_INDEX,cs123_INDEX)));
                cs123_INDEX = cs123_INDEX + 1;
            end
        end
    end
    cs123_RI = 0;
    cs123_MUL = 1;
    for cs123_CharIndex = 1:strlength(cs123_CT)
        cs123_RI = cs123_RI + 1*cs123_MUL;
        if cs123_RI==cs123_KEY
            cs123_MUL = -1;
        end
        if cs123_RI == 1 && cs123_MUL == -1
            cs123_MUL = 1;
        end
        cs123_PT = append(cs123_PT,char(cs123_MATRIX(cs123_RI,cs123_CharIndex))); 
    end
end