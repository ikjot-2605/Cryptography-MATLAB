% Ikjot Singh Dhody 191CS123


fprintf('Q1 (a)\n');

fprintf('We can take a = 6k+1 or 6k+5, since 6k, 6k+2, 6k+3, 6k+4 are either divisible by 2 or 3\n\n');

fprintf('=> (6k+1)^2 = 12k(3k+1) + 1\n');

fprintf('if k=even 2p, => a^2 = 24p(3k+1) + 1 = 1 (mod 24)\n');

fprintf('if k=odd, 2p+1, => a^2 = 24k(3p+2) + 1 = 1 (mod 24)\n\n');

fprintf('=> (6k+5)^2 = 12k(3k+5) + 24 + 1\n');

fprintf('if k=even 2p, => a^2 = 24p(3k+5) + 24 + 1 = 1 (mod 24)\n');

fprintf('if k=odd, 2p+1, => a^2 = 24k(3p+4) + 24 + 1 = 1 (mod 24)\n');




fprintf('Q1 (b)\n')

fprintf('a = y^2 = z^3 \n');

fprintf('=> a = b^6, s.t. y = b^3, z = b^2\n Let b = 6k + j where 0<=j<=5\n');

fprintf('We can write a = (6k+j)^6, and applying binomial theoram on this gives us => a = j^6 (mod 36)\n');

fprintf('j=0 => 0 (mod 36)\n j=1 => 1 (mod 36)\n j=2 => 28 (mod 36)\n j=3 => 9 (mod 36)\n');
