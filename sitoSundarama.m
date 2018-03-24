function L = sitoSundarama(n)
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