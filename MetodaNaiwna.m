function MetodaNaiwna(N)
  if (N < 1 || N ~= round(N))
     error('N musi by� naturalna i wi�ksza lub r�wna 1.')
  end
  X=['Liczba ', num2str(N), ' jest liczb� z�o�on�.'];
  Y=['Liczba ', num2str(N), ' jest liczb� pierwsz�.'];
  Z=['Liczba ', num2str(N),... 
      ' nie jest ani pierwsza, ani z�o�ona.'];
  if (N == 2 || N == 3) 
      disp(Y)
      return
  elseif (N == 1) 
      disp(Z)
      return   
  else
      [n,p] = sitoEratostenesa(N);
      lp = p(p<=sqrt(N));
      l = length(lp);
      m = ones(l,1);
  end
  for i=1:l
      if mod(N, lp(i)) == 0 
          disp(X)
          break
      else
          m(i) = 0;
      end
  end
  if sum(m) == 0
      disp(Y)
  end
end 