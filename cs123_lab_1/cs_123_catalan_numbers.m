cs_123_n = input("How many numbers?");
disp(1);
cs_123_n = cs_123_n-1;
cs_123_catalan(cs_123_n)
function cs_123_catalan(cs_123_n)
    for cs_123_i = 1:cs_123_n
        disp( (factorial(2*cs_123_i))/(factorial(cs_123_i)*factorial(cs_123_i+1)));
    end
end

