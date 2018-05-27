function testMilleraRabina(n)
  if (n < 1 || n ~= round(n))
     error('n musi byæ naturalna i wiêksza lub równa 1.')
  end
    X=['Liczba ', num2str(n), ' jest liczb¹ z³o¿on¹.'];
    Y=['Liczba ', num2str(n), ' mo¿e byæ pierwsza.'];
    Z=['Liczba ', num2str(n),... 
      ' nie jest ani pierwsza, ani z³o¿ona.'];
    if (n == 2 || n == 3)
        disp(Y)
        return
    elseif (n == 1)
        disp(Z)
        return
    end
    if mod(n,2) == 0
        disp(X)
        return
    end
    f = factor(n-1);
    s = 0;
    for i = 1:length(f)
        if f(i) == 2
            s = s+1;
        end
    end
    t = 1;
    for j = s+1:length(f)
       t = t*f(j);
    end
    b = randi([2,n-2]);
    a1 = powermod(b,t,n);
    if (a1 == 1 || a1 == n-1)
        disp(Y)
        return
    end
    for r = 1:s
        a2(r) = powermod(b,2^(r-1)*t,n);
    end
    for i = 1:length(a2)
        if a2(i) == n-1
            disp(Y)
            return
        end  
    end
    disp(X)
end