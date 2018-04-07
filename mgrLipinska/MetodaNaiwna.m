function MetodaNaiwna(N)
tic;
  X=['Liczba ', num2str(N), ' jest liczb¹ z³o¿on¹.'];
  Y=['Liczba ', num2str(N), ' jest liczb¹ pierwsz¹.'];
  Z=['Liczba ', num2str(N),... 
      ' nie jest ani pierwsza, ani z³o¿ona.'];
  if (N==2 || N==3) 
      disp(Y)
      return
  elseif (N==1) 
      disp(Z)
      return   
  else
  [n,p] = sitoEratostenesa(N);
  lp = p(p<=sqrt(N));
  l = length(lp);
  m = ones(l,1);
  
  for i=1:l
      if mod(N, lp(i))==0 
          disp(X)
          break
      else
          m(i)=0;
          i=i+1; 
      end
  end
  if sum(m)==0
      disp(Y)
  end
 toc;
end 