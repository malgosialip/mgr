function [K] = postacBinarna(n)
i = 1;
while n ~= 0
   K(i) = mod(n,2);
   n = floor(n/2);
   i = i+1;
end
K = fliplr(K);