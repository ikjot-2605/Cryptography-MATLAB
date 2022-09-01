% Ikjot Singh Dhody 191CS123 Hashing Week 7
function cs123_lab7()
    disp("Welcome to the hashing program!")
    cs123_M = [189,632,900,722,349];
    disp("The message list is :")
    disp(cs123_M)
    cs123_n = 989;
    fprintf("The value of n is %d.\n",cs123_n);
    cs123_result = 0;
    % The main loop for calculation 
    for cs123_i=(1:length(cs123_M))
        cs123_result = mod(cs123_result + mod(cs123_M(cs123_i)*cs123_M(cs123_i),cs123_n),cs123_n);
    end
    fprintf("The hash value is : %d\n",cs123_result);
end

