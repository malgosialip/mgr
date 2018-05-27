function testLucasaLehmera(n)
   if (n < 3 || n ~= round(n) || isprime(n)==0)
     error('n musi by� pierwsza i wi�ksza lub r�wna 3.')
   end
   m = 2^n - 1;
   X = ['Liczba 2^{n}-1 = ', num2str(m),...
       ' jest liczb� z�o�on�.'];
   Y = ['Liczba 2^{n}-1 = ', num2str(m),...
       ' jest liczb� pierwsz�.'];
   s = ones(n-1,1);
   s(1) = 4;
   for i = 2:n-1
       s(i) = mod(power(s(i-1),2)-2,m);
   end
   if s(n-1) == 0 
       disp(Y)
   else disp(X)
   end
end