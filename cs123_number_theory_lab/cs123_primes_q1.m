% Ikjot Singh Dhody 191CS123


cs123_n = input("Kindly input the number you want to express as sum of two primes: ");

cs123_sieve = zeros(1, cs123_n);

for cs123_i = 2:cs123_n/2+1
    
    if cs123_sieve(cs123_i)==0
        
        cs123_j = 2*cs123_i;
        
        while cs123_j<=cs123_n

            cs123_sieve(cs123_j) = 1;
            cs123_j = cs123_j+cs123_i;

        end
    
    end

end

cs123_i=2;

for cs123_i = 2:cs123_n/2+1
    
    if cs123_sieve(cs123_i)==0 && cs123_sieve(cs123_n-cs123_i)==0

        break

    end

end

if cs123_i<cs123_n && cs123_sieve(cs123_i)==0 && cs123_sieve(cs123_n-cs123_i)==0

    fprintf("res = %d + %d = %d\n", cs123_i, cs123_n-cs123_i, cs123_n);

else

    fprintf("res = -1\n");

end
