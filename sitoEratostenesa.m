function [n, p] = sitoEratostenesa(N)
  if (N < 1 || N ~= round(N))
     error('N musi byæ naturalna i wiêksza lub równa 1.')
  end
  sito = 1:N;
  a = 2;
  while a <= sqrt(N)
    sito(a^2:a:N) = 0;
    a = find(sito>a,1);
  end
  p = sito(sito>1);
  n = length(p);
  X = ['Iloœæ liczb pierwszych mniejszych lub równych '...
      , num2str(N), ' to ', num2str(n),...
      '. S¹ to liczby:'];
  disp(X)
  disp(p)
end 