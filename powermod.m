function a=powermod(x,z,p)
b=dec2bin(z);
b=fliplr(b);
len=length(b);
a=zeros(1,len);
a(1)=mod(x,p);
for i=1:(len-1)
    a(i+1)=mod((a(i))^2,p);
end
mul=1;
for i=1:len
    if b(i)=='0'
        a(i)=1;
    end
    mul=mul*a(i);
    mul=mod(mul,p);
end
a=mod(mul,p);