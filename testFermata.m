function testFermata(p,n)
    %p - zadana liczba, n - liczba powtórzeñ testu
    X = ['Liczba ', num2str(p), ' jest liczb¹ z³o¿on¹.'];
    Y = ['Liczba ', num2str(p), ' mo¿e byæ pierwsza.'];
    if (p <= 0 || n <= 0 || p~=round(p) || n~=round(n))
        error('p i n musz¹ byæ naturalne i wiêksze od 0.')
    end
    if (p == 2 || p == 3)
        disp(Y)
        return
    end
    if n > (p-3)
        error('Podaj mniejsz¹ liczbê n')
    end
    pierwsza = zeros(n,1); zlozona = zeros(n,1);
    a = randperm(p-3,n)+1;
    for i = 1:n
        if gcd(a(i),p) > 1
           zlozona(i) = 1;
        elseif powermod(a(i),p-1,p) ~= 1
           zlozona(i) = 1;
        else pierwsza(i) = 1;
        end
    end
    if sum(pierwsza) >= sum(zlozona)
        disp(Y)
        disp('Prawdopodobienstwo wynosi:')
        disp(sum(pierwsza)/n*100)
    else disp(X)
    end 
end