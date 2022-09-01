% Ikjot Singh Dhody 191CS123


fprintf('gcd(a,b) = gcd(r,a), where r = b mod a\n => r< a\n=> a+r <= b\n\n=> 2r < a+r <= b\n=> 2r < b\n=> ar < ab/2\n');

fprintf('We can see that in every iteration ab gets reduced by a factor of 2\n .. Hence for N iterations....\n\n');

fprintf('ar < ab/(2^N)\n\n=> N <= log(ab)\n\n');

fprintf('We get the following... - N <= log(a) + log(b)\n');

fprintf('We can verify with a = 4 and b=9, we get (N) 2 < 5');
