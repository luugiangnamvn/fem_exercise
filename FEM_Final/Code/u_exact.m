function u = u_exact(x,cases)

if cases == 1
    u = x.^2.*(x-1).*(x.^2-1);
end
if cases == 2
    u = x.^2.*(x-2).*(x-1).^2;
end
if cases == 3
    u = x.^2.*(x-2).*(x-1).^2.*(x-3);
end
