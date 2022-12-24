function f = f(x,cases)

if cases == 1
    f = 120*x - 24;
end
if cases == 2
    f = 120*x - 96;
end
if cases == 3
    f = 48.*x.*(2.*x - 2) + 24.*(x - 2).*(x - 3) + 24.*(x - 1).^2 + 24.*(2.*x - 2).*(x - 2) + 24.*(2.*x - 2).*(x - 3) + 48.*x.*(x - 2) + 48.*x.*(x - 3) + 24.*x.^2;
end
