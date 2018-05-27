function [m] = euler_phi(n)
if (n < 1 || n ~= round(n))
   error('n musi byæ naturalna i wiêksza lub równa 1.')
end
m = 0;
for i = 1:n
    if gcd(i,n) == 1
       m = m + 1;
    end
end
X = ['Wartoœæ funkcji Eulera dla liczby ',...
    num2str(n), ' wynosi ', num2str(m), '.'];
disp(X)
end