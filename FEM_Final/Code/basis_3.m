function g = basis_3(O,i,y)

g = zeros(1,length(y));
for t = 1:length(y)
    if mod(i,2) == 1
        g(t) = hermit_3(O,floor(i/2),0,y(t));
    else 
        g(t) = hermit_3(O,i/2-1,1,y(t));
    end
end
