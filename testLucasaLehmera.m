function testLucasaLehmana(n)
   %n musi by� liczb� pierwsz�
   m = 2^n - 1
   X=['Liczba ', num2str(m), ' jest liczb� z�o�on�.'];
   Y=['Liczba ', num2str(m), ' jest liczb� pierwsz�.'];
   s = ones(n-1,1);
   s(1) = 4;
   for i=2:n-1
       s(i) = mod(power(s(i-1),2)-2,m);
   end
   if s(n-1)==0 
       disp(Y)
   else disp(X)
   end
end