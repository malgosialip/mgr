function [k] = mult_order(n,a)

if gcd(a,n)~=1
    disp('liczby nie s� wzgl�dnie pierwsze')
    return
end

k=1;
while powermod(a,k,n) ~= 1
    k=k+1;
end
end