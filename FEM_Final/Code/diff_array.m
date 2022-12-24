function d = diff_array(u,h)

n = length(u);
d = zeros(1,n);
d(1)=(u(1)-2*u(2)+u(3))/h^2;
d(n)=(u(n)-2*u(n-1)+u(n-2))/h^2;
for i=2:n-1
    d(i)=(u(i-1)-2*u(i)+u(i+1))/h^2;
end