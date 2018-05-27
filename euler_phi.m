function [m] = euler_phi(n)
if (n < 1 || n ~= round(n))
   error('n musi by� naturalna i wi�ksza lub r�wna 1.')
end
m = 0;
for i = 1:n
    if gcd(i,n) == 1
       m = m + 1;
    end
end
X = ['Warto�� funkcji Eulera dla liczby ',...
    num2str(n), ' wynosi ', num2str(m), '.'];
disp(X)
end