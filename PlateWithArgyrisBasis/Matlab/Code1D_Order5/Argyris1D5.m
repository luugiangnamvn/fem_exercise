clc
clear all
close all
format long

a = 0;
b = 1;
M = 4;
N = 6;
h = (b-a)/M;
tic

x= zeros(M+1,1);

for i = 1:M+1
    x(i,1) = (i-1)*h;
end

%% iatrix A

A = zeros(3*M-1,3*M-1);
for i = 1:M+1
    syms y;
    if i==1
    A(3*i-2,3*i-2) = 8/h^3*int((diff(phi(5,(x(1,1)+x(2,1))/2+h/2*y),2))^2,-1,1);
    A(3*i-2,3*i-1) = 8/h^3*int(diff(phi(5,(x(1,1)+x(2,1))/2+h/2*y),2)*diff(phi(2,(x(1,1)+x(2,1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i)   = 8/h^3*int(diff(phi(5,(x(1,1)+x(2,1))/2+h/2*y),2)*diff(phi(4,(x(1,1)+x(2,1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i+1) = 8/h^3*int(diff(phi(5,(x(1,1)+x(2,1))/2+h/2*y),2)*diff(phi(6,(x(1,1)+x(2,1))/2+h/2*y),2),-1,1);
        
    elseif(i==M+1)
    A(3*i-4,3*i-7) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-6) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-5) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-4) = 8/h^3*int((diff(phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),2))^2,-1,1);
        
    elseif(i==2)
    A(3*i-4,3*i-5) = 8/h^3*int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-4) = 8/h^3*(int((diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2))^2,-1,1));
    A(3*i-4,3*i-3) = 8/h^3*(int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(4,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-4,3*i-2) = 8/h^3*(int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-4,3*i-1) = 8/h^3*int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(2,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i)   = 8/h^3*int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(4,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i+1) = 8/h^3*int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);

    A(3*i-3,3*i-5) = 8/h^3*int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i-4) = 8/h^3*(int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(2,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-3,3*i-3) = 8/h^3*(int((diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2))^2,-1,1));
    A(3*i-3,3*i-2) = 8/h^3*(int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-3,3*i-1) = 8/h^3*int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(2,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i)   = 8/h^3*int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(4,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i+1) = 8/h^3*int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);

    A(3*i-2,3*i-5) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i-4) = 8/h^3*(int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(2,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-2,3*i-3) = 8/h^3*(int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(4,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-2,3*i-2) = 8/h^3*(int((diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2))^2,-1,1));
    A(3*i-2,3*i-1) = 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(2,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i)   = 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(4,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i+1) = 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    
    elseif(i==M)
    A(3*i-4,3*i-7) = 8/h^3*int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-6) = 8/h^3*int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-5) = 8/h^3*int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);        
    A(3*i-4,3*i-4) = 8/h^3*(int((diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2))^2,-1,1));
    A(3*i-4,3*i-3) = 8/h^3*(int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(4,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-4,3*i-2) = 8/h^3*(int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),2),-1,1)+int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1));
    A(3*i-4,3*i-1) = 8/h^3*int(diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i))/2+h/2*y),2),-1,1);

    A(3*i-3,3*i-7) = 8/h^3*int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i-6) = 8/h^3*int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i-5) = 8/h^3*int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);        
    A(3*i-3,3*i-3) = 8/h^3*(int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2),-1,1));
    A(3*i-3,3*i-4) = 8/h^3*(int((diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2))^2,-1,1));
    A(3*i-3,3*i-2) = 8/h^3*(int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2),-1,1));
    A(3*i-3,3*i-1) = 8/h^3*int(diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i))/2+h/2*y),2),-1,1);

    A(3*i-2,3*i-7) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i-6) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i-5) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);        
    A(3*i-2,3*i-3) = 8/h^3*(int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(1,(x(i+1,1)+x(i))/2+h/2*y),2),-1,1));
    A(3*i-2,3*i-2) = 8/h^3*(int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(3,(x(i+1,1)+x(i))/2+h/2*y),2),-1,1));
    A(3*i-2,3*i-4) = 8/h^3*(int((diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2))^2,-1,1));
    A(3*i-2,3*i-1) = 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i))/2+h/2*y),2),-1,1);
    
    else
    A(3*i-4,3*i-7) = 8/h^3*int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-6) = 8/h^3*int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-5) = 8/h^3*int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i-4) = 8/h^3*(int((diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2))^2,-1,1));
    A(3*i-4,3*i-3) = 8/h^3*(int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1));
    A(3*i-4,3*i-2) = 8/h^3*(int(diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1));
    A(3*i-4,3*i-1) = 8/h^3*int(diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(2,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i)   = 8/h^3*int(diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(4,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-4,3*i+1) = 8/h^3*int(diff(phi(1,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);

    A(3*i-3,3*i-7) = 8/h^3*int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i-6) = 8/h^3*int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i-5) = 8/h^3*int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i-4) = 8/h^3*(int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1));
    A(3*i-3,3*i-3) = 8/h^3*(int((diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2))^2,-1,1));
    A(3*i-3,3*i-2) = 8/h^3*(int(diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1));
    A(3*i-3,3*i-1) = 8/h^3*int(diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(2,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i)   = 8/h^3*int(diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(4,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-3,3*i+1) = 8/h^3*int(diff(phi(3,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);

    A(3*i-2,3*i-7) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i-6) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i-5) = 8/h^3*int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(5,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i-4) = 8/h^3*(int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(2,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(1,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1));
    A(3*i-2,3*i-2) = 8/h^3*(int(diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2)*diff(phi(4,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1)+int(diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(3,(x(i,1)+x(i-1))/2+h/2*y),2),-1,1));
    A(3*i-2,3*i-3) = 8/h^3*(int((diff(phi(6,(x(i,1)+x(i-1))/2+h/2*y),2))^2,-1,1)+int((diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2))^2,-1,1));
    A(3*i-2,3*i-1) = 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(2,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i)   = 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(4,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    A(3*i-2,3*i+1) = 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y),2)*diff(phi(6,(x(i+1,1)+x(i,1))/2+h/2*y),2),-1,1);
    
    end

end


%% Vector F
F = zeros(3*M-1,1);
for i = 1:M+1
    syms y;
    if (i==1)
        F(3*i-2) = h/2*int(f((x(i,1)+x(i+1,1))/2+h/2*y)*phi(5,(x(i,1)+x(i+1,1))/2+h/2*y),-1,1);
    elseif (i==M+1)
        F(3*i-4) = h/2*int(f((x(i-1,1)+x(i,1))/2+h/2*y)*phi(6,(x(i-1,1)+x(i,1))/2+h/2*y),-1,1);
    else
        F(3*i-4) = h/2*(int(f((x(i,1)+x(i+1,1))/2+h/2*y)*phi(1,(x(i,1)+x(i+1,1))/2+h/2*y),-1,1)+int(f((x(i,1)+x(i-1,1))/2+h/2*y)*phi(2,(x(i,1)+x(i-1,1))/2+h/2*y),-1,1));
        F(3*i-3) = h/2*(int(f((x(i,1)+x(i+1,1))/2+h/2*y)*phi(3,(x(i,1)+x(i+1,1))/2+h/2*y),-1,1)+int(f((x(i,1)+x(i-1,1))/2+h/2*y)*phi(4,(x(i,1)+x(i-1,1))/2+h/2*y),-1,1));
        F(3*i-2) = h/2*(int(f((x(i,1)+x(i+1,1))/2+h/2*y)*phi(5,(x(i,1)+x(i+1,1))/2+h/2*y),-1,1)+int(f((x(i,1)+x(i-1,1))/2+h/2*y)*phi(6,(x(i,1)+x(i-1,1))/2+h/2*y),-1,1));
    end        
end
u = A\F;

for i=1:M
    u(3*i-1)
end

for i=1:M+1
    u_exact(x(i))
end

size(A)

toc



% i=4
% syms y;
% 8/h^3*int(diff(phi(5,(x(i+1,1)+x(i,1))/2+h/2*y)*phi(6,(x(i+1,1)+x(i,1))/2+h/2*y),-1,1)


% phi1 = phi(6,(x(i+1,1)+x(i,1))/2+h/2*y)







