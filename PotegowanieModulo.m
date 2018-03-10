function PotegowanieModulo(a,k,n)
K = postacBinarna(k);
b = 1;
if k == 0
    disp('b =')
    disp(b)
    disp('poprawny wynik =')
    mod(a^k,n)
    return
end
A = a;
if k == 1
    b = mod(A,n);
    disp('b =')
    disp(b)
    disp('poprawny wynik =')
    mod(a^k,n)
    return
end

for i = 1:length(K)
    A = mod(A^2,n);
    if K(i) == 1
        b = mod(b*A,n);
    end
end
disp('b =')
disp(b)
disp('poprawny wynik =')
mod(a^k,n)
end