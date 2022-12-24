function g = basis(O,n,i,y)

g = zeros(1,length(y));
for t = 1:length(y)
    if mod(i,2) == 1
        g(t) = hermit1d(O,n,floor(i/2),0,y(t));
    else 
        g(t) = hermit1d(O,n,i/2-1,1,y(t));
    end
end
