function [n,p] = sitoEratostenesa(N)
  sito=1:N;
  a=2;
  while a^2<=N
    sito(a^2:a:N)=0;
    a=find(sito>a,1);
  end
  p = sito(sito>1);
  n = length(p)
end 