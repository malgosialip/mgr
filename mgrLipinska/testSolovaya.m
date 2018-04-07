function testSolovaya(n)
    X = ['Liczba ', num2str(n), ' jest liczb¹ z³o¿on¹.'];
    Y = ['Liczba ', num2str(n), ' mo¿e byæ pierwsza.'];
    if mod(n,2)==0
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
        if r~=s
            disp(X)
            return
        end
    end
    disp(Y)
end