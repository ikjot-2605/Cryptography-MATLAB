% Ikjot Singh Dhody 191CS123


cs123_s = input("Kindly input the number : ", 's');
cs123_n = str2double(cs123_s);
cs123_count_n = zeros(1, 10);
cs123_len = length(cs123_s);

for cs123_i = 1:cs123_len
    cs123_digit = cs123_s(cs123_i) - '0' + 1;
    cs123_count_n(cs123_digit) = cs123_count_n(cs123_digit) + 1;
end

cs123_flag = 0;
for cs123_i = 2:9
    cs123_m = cs123_n*cs123_i;
    cs123_m = num2str(cs123_m);
    cs123_count_m = zeros(1, 10);

    for cs123_j = 1:length(cs123_m)
        cs123_digit = cs123_m(cs123_j)-'0'+1;
        cs123_count_m(cs123_digit) = cs123_count_m(cs123_digit) + 1;
    end

    if length(cs123_count_n) == length(cs123_count_m) && ~any(cs123_count_n-cs123_count_m)
        cs123_flag = cs123_i;
        break;
    end
end

if cs123_flag==0
    fprintf("-1");
else
    fprintf("Answer = %d", cs123_n*cs123_flag);
end