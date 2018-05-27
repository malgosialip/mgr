function [k] = mult_order(n,a)
if (n < 1 || n ~= round(n) || a < 1 || a ~= round(a))
   error('n i a musz¹ byæ naturalna >= 1.')
end
if gcd(a,n) ~= 1
    error('Liczby nie s¹ wzglêdnie pierwsze.')
end
k = 1;
while powermod(a,k,n) ~= 1
    k = k + 1;
end
end