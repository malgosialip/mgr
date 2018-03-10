function testLehmana(p)
X = ['Liczba ', num2str(p), ' jest liczb¹ z³o¿on¹.'];
Y = ['Liczba ', num2str(p),...
   ' mo¿e byæ pierwsza z prawdopodobieñstwem >= 50%.'];
if mod(p,2)==0
    disp(X)
    return
end
a = randi([(p-1)/2,p-1]);
b = powermod(a,(p-1)/2,p);
if (mod(b,p)==1 || mod(b,p)-p==-1)
    disp(Y)
else disp(X)
end
end
