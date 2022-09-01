% Ikjot Singh Dhody 191CS123


cs123_n = input("Kindly enter the number : ");
cs123_n_s = int2str(cs123_n);
cs123_n_l = strlength(cs123_n_s);
cs123_count = 0;
for cs123_i = (1:cs123_n_l)
    for cs123_j = (cs123_i:cs123_n_l)
        cs123_currstr = extractBetween(cs123_n_s,cs123_i,cs123_j);
        cs123_currnum = str2double(cs123_currstr);
        if(mod(cs123_currnum,8)==0&&mod(cs123_currnum,3)~=0)
            cs123_count=cs123_count+1;
        end
    end
end
fprintf("The count of such substrings is %d.\n",cs123_count);


