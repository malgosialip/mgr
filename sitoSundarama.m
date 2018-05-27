function L = sitoSundarama(n)
if (n < 1 || n ~= round(n))
   error('n musi byæ naturalna i wiêksza lub równa 1.')
end
P = 1:n;
for i = 1:n
    for j = i:(n-i)/(2*i+1)
        if i+j+2*i*j<=n
        P(i+j+2*i*j) = -1/2;
        end
    end
end
P = P(P>0);
P = [2, P*2+1];
L = length(P);
X = ['Iloœæ liczb pierwszych <= 2n+1=',...
    num2str(2*n+1), ' wynosi ', num2str(L), '. S¹ to:'];
disp(X)
disp(P)
end