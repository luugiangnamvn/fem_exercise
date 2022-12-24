close all
clear all
clc

tic
% -----------------------------------------------
cases = 1;
a=0; b=1;
N=10;
O = zeros(1,N+2);   %% all nodes
d = (b-a)/(N+1);    %% distance 
for i = 1:(N+1)+1
    O(i) = d*(i-1);
end
P = zeros(1,(N+1)*4+1);  %% Inside node
for i = 1:(N+1)*4+1
    P(i) = d/4*(i-1);
end

% --------------------------------------------

D = zeros(length(O)*2-4,length(P));   % phi
fD = zeros(length(O)*2-4,length(P));  % f.phi
dD = zeros(length(O)*2-4,length(P));  % phi''
for i = 1:length(O)*2-4
    for j = 1:length(P)
        D(i,j) = basis_3(O,i+2,P(j));
        fD(i,j) = f(P(j),cases)*D(i,j);
    end
    dD(i,:) = diff_array(D(i,:),d/4); 
end

F = zeros(length(O)*2-4,1);     % load vector F
for i = 1:length(O)*2-4
    F(i) = trapz(fD(i,:))*(d/4);
end 
A = zeros(length(O)*2-4,length(O)*2-4);     % Mass matrix A
for i = 1:length(O)*2-4
    for j = 1:length(O)*2-4
        A(i,j) = trapz(dD(i,:).*dD(j,:))*(d/4);
    end
end
U = A\F;

x = 0:0.01:1;
u = zeros(1,length(x));
for i = 1:length(O)*2-4
    u= u+U(i)*basis_3(O,i+2,x);
end
figure
e = u_exact(x,cases);
plot(x,u,'b *',x,e,'r')
legend('numerical','exact');

toc



