function [m]=euler_phi(n)
m=0;
for i=1:n
    if gcd(i,n)==1
       m=m+1;
    end
end
end