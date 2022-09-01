% This function is to generate the 2 subkeys from the main key in the start of the program. 
function [cs123_key1,cs123_key2] = cs123_key_generation(cs123_key)
    % 2 permutation arrays used in key gen
    cs123_permutation10 = [3, 5, 2, 7, 4, 10, 1, 9, 8, 6];
    cs123_permutation8 = [6, 3, 7, 4, 8 ,5, 10, 9];
    
    cs123_key1 = '';
    cs123_key2 = '';
    cs123_key1_part1 = '';
    cs123_key1_part2 = '';
    
    % This step does the 10-bit permutation and divides string in 2 5-bit
    % parts.
    for cs123_i=1:5
        cs123_key1_part1 = append(cs123_key1_part1,cs123_key(cs123_permutation10(cs123_i)));
    end
    
    for cs123_i=6:10
        cs123_key1_part2 = append(cs123_key1_part2,cs123_key(cs123_permutation10(cs123_i)));
    end
    
    % Performing 1 left circular shift
    cs123_key1_part1=(circshift(cs123_key1_part1,4));
    cs123_key1_part2=(circshift(cs123_key1_part2,4));
    
    % Selecting the 8 bits for subkey 1 using the 8-bit permutation.
    for cs123_i = 1:8
        if cs123_permutation8(cs123_i)>5
            cs123_key1 = append(cs123_key1,cs123_key1_part2(cs123_permutation8(cs123_i)-5));
        else 
            cs123_key1 = append(cs123_key1,cs123_key1_part1(cs123_permutation8(cs123_i)));
        end    
    end
    
    % Performing the 2-bit left circular shift
    cs123_key1_part1=(circshift(cs123_key1_part1,3));
    cs123_key1_part2=(circshift(cs123_key1_part2,3));
    
    % Selecting the 8 bits for subkey 2 using the 8-bit permutation.
    for cs123_i = 1:8
        if cs123_permutation8(cs123_i)>5
            cs123_key2 = append(cs123_key2,cs123_key1_part2(cs123_permutation8(cs123_i)-5));
        else 
            cs123_key2 = append(cs123_key2,cs123_key1_part1(cs123_permutation8(cs123_i)));
        end    
    end
end