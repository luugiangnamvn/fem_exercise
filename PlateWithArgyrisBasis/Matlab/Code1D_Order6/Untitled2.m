clc
clear all
close all


a = 0;
b = 1;
M = 1;
N = 6;
h = (b-a)/M;
tic
for i = 1:M+1
    x(i) = (i-1)*h;
end

%% Matrix A

A = zeros(N,N);
for i = 1:N
    for j = 1:N
        for m = 1:M
            syms y;
            A(i,j) = A(i,j) +8/h^3*int(diff(phi(i,(x(m)+x(m+1))/2+h/2*y),2)...
                *diff(phi(j,(x(m)+x(m+1))/2+h/2*y),2),-1,1)
        end
    end
end

% %% Matrix A
% A = zeros(N,N);
% syms y;
% for i = 1:N
%     for j = 1:N
%         for m = 1:M
%             A(i,j) = A(i,j) +8/(h^3)*int(diff(phi(i,y),2)*diff(phi(j,y),2),-1,1);
%         end
%     end
% end



F = zeros(N,1);
%% Vector F
for i = 1:N
    for m = 1:M
            F(i) = F(i) +h/2*int(f((x(m)+x(m+1))/2+h/2*y)...
                *phi(i,(x(m)+x(m+1))/2+h/2*y),-1,1);
    end
end
u = A\F
toc












