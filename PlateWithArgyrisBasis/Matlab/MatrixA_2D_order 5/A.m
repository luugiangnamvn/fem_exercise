%% Matrix A;
clc
clear all
format long

% Matrix_A = zeros(21,21);
% 
% Matrix_A (:,1) = [1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0 0 ];
% Matrix_A (:,2) = [0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0 0 ];
% Matrix_A (:,3) = [0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0 0 ];
% Matrix_A (:,4) = [0     0     0     2     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0 0 ];
% Matrix_A (:,5) = [0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0 0 ];
% Matrix_A (:,6) = [0     0     0     0     0     2     0     0     0     0     0     0     0     0     0     0     0     0     0     0 0 ];
% Matrix_A (:,7) = [1     1     0     1     0     0     1     0     0     0     1     0     0     0     0     1     0     0     0     0 0 ];
% Matrix_A (:,8) = [0     1     0     2     0     0     3     0     0     0     4     0     0     0     0     5     0     0     0     0 0 ];
% Matrix_A (:,9) = [0     0     1     0     1     0     0     1     0     0     0     1     0     0     0     0     1     0     0     0 0 ];
% Matrix_A (:,10) = [0     0     0     2     0     0     6     0     0     0    12     0     0     0     0    20     0     0     0     0 0 ];
% Matrix_A (:,11) = [0     0     0     0     1     0     0     2     0     0     0     3     0     0     0     0     4     0     0     0 0 ];
% Matrix_A (:,12) = [0     0     0     0     0     2     0     0     2     0     0     0     2     0     0     0     0     2     0     0 0 ];
% Matrix_A (:,13) = [1     0     1     0     0     1     0     0     0     1     0     0     0     0     1     0     0     0     0     0 1 ];
% Matrix_A (:,14) = [0     1     0     0     1     0     0     0     1     0     0     0     0     1     0     0     0     0     0     1 0 ];
% Matrix_A (:,15) = [0     0     1     0     0     2     0     0     0     3     0     0     0     0     4     0     0     0     0     0 5 ];
% Matrix_A (:,16) = [0     0     0     2     0     0     0     2     0     0     0     0     2     0     0     0     0     0     2     0 0 ];
% Matrix_A (:,17) = [0     0     0     0     1     0     0     0     2     0     0     0     0     3     0     0     0     0     0     4 0 ];
% Matrix_A (:,18) = [0     0     0     0     0     2     0     0     0     6     0     0     0     0    12     0     0     0     0     0 20 ];
% Matrix_A (:,19) = [0    sqrt(2)/2    sqrt(2)/2    sqrt(2)/2    sqrt(2)/2    sqrt(2)/2    3*sqrt(2)/8    3*sqrt(2)/8    3*sqrt(2)/8    3*sqrt(2)/8    sqrt(2)/4    sqrt(2)/4    sqrt(2)/4    sqrt(2)/4    sqrt(2)/4    5*sqrt(2)/32    5*sqrt(2)/32    5*sqrt(2)/32    5*sqrt(2)/32    5*sqrt(2)/32    5*sqrt(2)/32 ];
% Matrix_A (:,20) = [0   -1         0         0   -0.5         0         0         0   -0.25         0         0         0      0   -0.125         0         0         0         0         0   -0.0625         0];
% Matrix_A (:,21) = [0         0   -1         0   -0.5         0         0   -0.25         0         0         0   -0.125      0         0         0         0   -0.0625         0         0         0         0];
% 
% syms x y;
% V = [1 ;x ;y ;x^2 ;x*y ;y^2 ;x^3 ;x^2*y ;x*y^2 ;y^3 ;x^4 ;x^3*y ;x^2*y^2 ;x*y^3 ;y^4 ;x^5 ;x^4*y ;x^3*y^2 ;x^2*y^3 ;x*y^4 ;y^5];
% 
% F = (Matrix_A^(-1))'*V;
% 

% syms x;
% phi = [1 x y x^2 x*y y^2 x^3 x^2*y x*y^2 y^3 x^4 x^3*y x^2*y^2 x*y^3 y^4 x^5 x^4*y x^3*y^2 x^2*y^3 x*y^4 y^5];
% phi_x = [ 0, 1, 0, 2*x, y, 0, 3*x^2, 2*x*y, y^2, 0, 4*x^3, 3*x^2*y, 2*x*y^2, y^3, 0, 5*x^4, 4*x^3*y, 3*x^2*y^2, 2*x*y^3, y^4, 0];
% phi_y = [ 0, 0, 1, 0, x, 2*y, 0, x^2, 2*x*y, 3*y^2, 0, x^3, 2*x^2*y, 3*x*y^2, 4*y^3, 0, x^4, 2*x^3*y, 3*x^2*y^2, 4*x*y^3, 5*y^4];
% phi_xx = [ 0, 0, 0, 2, 0, 0, 6*x, 2*y, 0, 0, 12*x^2, 6*x*y, 2*y^2, 0, 0, 20*x^3, 12*x^2*y, 6*x*y^2, 2*y^3, 0, 0];
% phi_xy = [ 0, 0, 0, 0, 1, 0, 0, 2*x, 2*y, 0, 0, 3*x^2, 4*x*y, 3*y^2, 0, 0, 4*x^3, 6*x^2*y, 6*x*y^2, 4*y^3, 0];
% phi_yy = [ 0, 0, 0, 0, 0, 2, 0, 0, 2*x, 6*y, 0, 0, 2*x^2, 6*x*y, 12*y^2, 0, 0, 2*x^3, 6*x^2*y, 12*x*y^2, 20*y^3];


% x = 1/2;
% y = 0;
% phi(x,y)
% -phi_y(x,y)
% phi_xx(x,y)
% phi_xy(x,y)
% phi_yy(x,y)


% A1 = [1 -1 1 -1 1 -1; 1 1 1 1 1 1; 0 1 -2 3 -4 5; 0 1 2 3 4 5; 0 0 2 -6 12 -20; 0 0 2 6 12 20];
% A1
% A1^(-1)

X = -1:0.05:1;
Y = -1:0.05:1;
[xi,eta] = meshgrid(X,Y);


% mesh(x,y,1-10*x.^3-10*y.^3+15*x.^4-30*x.^2.*y.^2 +15*y.^4 - 6*x.^5 + 30*x.^3.*y.^2+20*x.^2.*y.^3 - 6*y.^5)

% mesh(xi,eta,xi -6*xi.^3-11*xi.*eta.^2 +8*eta.^4+10*xi.^2.*eta.^2+18*xi.*eta.^3-3*xi.^5 +xi.^3.*eta.^2-10*xi.^2.*eta^3-8*xi.*eta.^4)

% mesh(xi,eta,eta -11*xi.^2*eta -6*eta.^3 + 18*xi.^3*eta + 10*xi.^2.*eta.^2 + 8*eta.^4 -8*xi.^4.*eta -10*xi.^3.*eta.^2 + xi.^2.*eta^3 - 3*eta.^5)

% mesh(xi,eta,1/2*xi.^2 - 3/2*xi.^3 + 3/2*xi.^4 - 3/2*xi.^2.*eta.^2 -1/2*xi.^5 + 3/2*xi.^3.*eta.^2 + xi.^2.*eta.^3)

mesh(xi,eta, xi.*eta -4*xi.^2.*eta - 4*xi.*eta.^2 + 5*xi.^3.*eta + 10*xi.^2.*eta.^2 + 5*xi.*eta.^3 -2*xi.^4.*eta - 6*xi.^3.*eta.^2 - 6*xi.^2.*eta.^3 - 2*xi.*eta.^4)