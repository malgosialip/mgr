function testSolovayaStrassena(n)
  if (n < 1 || n ~= round(n))
     error('n musi by� naturalna i wi�ksza lub r�wna 1.')
  end
    X = ['Liczba ', num2str(n), ' jest liczb� z�o�on�.'];
    Y = ['Liczba ', num2str(n), ' mo�e by� pierwsza.'];
    Z=['Liczba ', num2str(n),... 
      ' nie jest ani pierwsza, ani z�o�ona.'];
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
    b = randi([2,n-2]);
    r = powermod(b,(n-1)/2,n);
    if (r ~= 1 && r-n ~= -1)
        disp(X)
        return
    else
        s = 1;
        f = factor(n);
        for i = 1:length(f)
            s = s*powermod(b,(f(i)-1)/2,n);
        end
        if r ~= s
            disp(X)
            return
        end
    end
    disp(Y)
end