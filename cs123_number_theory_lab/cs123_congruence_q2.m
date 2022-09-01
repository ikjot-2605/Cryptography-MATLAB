% Ikjot Singh Dhody 191CS123

fprintf('Let us take p = (a^3-1)(a^3)(a^3+1)\n');

fprintf('For divisibility with 504 = 7.8.9 , we can prove by showing individual divisibility with 7,8,9 \n\n');

fprintf('for 7\n we can write p = a^3(a^6-1)\n if 7/a then we are done else we can say that gcd(a,7)=1,\nand by Fermats theoram we can say that a^6 = 1 (mod)7\n');

fprintf('=> a^6 -1 = 0 mod 7 => 7/p\n\n');

fprintf('for 8\n if a=even, then 8/a^3 => 8/p\n');

fprintf('if a is odd then a=2m+1, and p = a^3(a^2-1)(a^2+a+1)(a^2-a+1)\n');

fprintf('we expand (a^2-1) and we get 4m(m+1), either m or m+1 will be even hence we can write it as 8.k for some integer k\n');

fprintf('hence 8/p\n\n');

fprintf('for 9\n we take p = a^3(a-1)(a^2+a+1)(a+1)(a^2-a+1)\n');

fprintf('if 3/a, then we are done\n');

fprintf('else if a = 3m+1, we take (a-1)(a^2+a+1) and substitute a\n');

fprintf('we get 9m(3m^2+3m+1) => 9/p\n');

fprintf('else if a = 3m+2, we take (a+1)(a^2-a+1) and substitute a\n');

fprintf('we get 9(m+1)(3m^2+3m+1) => 9/p\n\n');

fprintf('=> 7/p, 8/p, 9/p\n');
