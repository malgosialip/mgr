function MetodaAKS(n)

for b=2:n-1
    if round(log(n)/log(b))==log(n)/log(b)
       disp('n jest z這穎na')
       return
    end
end

r=2;

if gcd(r,n)~=1
    disp('n jest z這穎na')
    return
end

k=mult_order(r,n);

while k<=(log2(n))^2
    if gcd(r,n)~=1
       disp('n jest z這穎na')
        return
    end
    k=mult_order(r,n);
    r=r+1;
    if r>=n
        disp('n jest pierwsza')
        return
    end
end

for a=2:min(r,n-1)
    if mod(n,a)==0
        disp('n jest z這穎na')
        return
    end
end

if n<=r 
    disp('n jest pierwsza')
    return
end

m=euler_phi(r);
syms x

v=sym2poly(x^r-1);

for a=1:floor(sqrt(m)*log2(n))
    [q1,w1]=deconv(sym2poly((x+a)^n),v);
    [q2,w2]=deconv(sym2poly(x^n+a),v);
    w1=mod(w1,n); w2=mod(w2,n);
    if w1~=w2
         disp('n jest z這穎na')
         return
    end
end
disp('n jest pierwsza')

end