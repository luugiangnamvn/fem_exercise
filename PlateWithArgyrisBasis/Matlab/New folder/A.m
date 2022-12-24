%% Matrix A;
clc
clear all
format long

% Matrix_A = zeros(28,28);
% Wrong!!!!
% Matrix_A (:,1) = [1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0    0      0     0     0     0     0     0    0];
% Matrix_A (:,2) = [1     1     0     1     0     0     1     0     0     0     1     0     0     0     0     1     0     0     0     0   0   1    0     0     0    0     0       0];
% Matrix_A (:,3) = [1     0     1     0     0     1     0     0     0     1     0     0     0     0     1     0     0     0     0     0   1     0     0     0     0     0     0    1];
% Matrix_A (:,4) = [1     1/2     0    1/4     0     0     1/8     0     0     0     1/16     0     0     0     0     1/32     0     0     0     0   0     1/64    0     0     0     0     0    0];
% Matrix_A (:,5) = [1     0     1/2     0     0     1/4     0     0     0     1/8     0     0     0     0     1/16     0     0     0     0     0   1/32   0     0     0     0     0     0    1/64];
% Matrix_A (:,6) = [1     1/2     1/2     1/4     1/4     1/4     1/8     1/8     1/8     1/8     1/16     1/16     1/16     1/16     1/16     1/32     1/32     1/32     1/32     1/32   1/32   1/64     1/64     1/64     1/64     1/64     1/64    1/64];
% Matrix_A (:,7) = [0    1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0   0   0     0     0     0     0     0    0];
% Matrix_A (:,8) = [0     1     0     2     0     0     3     0     0     0     4     0     0     0     0     5     0     0     0     0   0   6     0     0     0     0     0    0];
% Matrix_A (:,9) = [0     1     0     0     1     0     0     0     1     0     0     0     0     1     0     0     0     0     0     1   0   0     0     0     0     0     1    0];
% Matrix_A (:,10) = [0     0     0     1     0     0     0     0     0     0    0     0     0     0     0     0     0     0     0     0  0   0     0     0     0     0     0    0];
% Matrix_A (:,11) = [0     0     1     0     1     0     0     1     0     0    0     1     0     0     0     0     1     0     0     0  0   0     1     0     0     0     0    0];
% Matrix_A (:,12) = [0     0     1     0     0     2     0     0     0     3     0     0    0     0     4     0     0     0     0     0  5   0     0     0     0     0     0    6];
% Matrix_A (:,13) = [0     0     0     2     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0  0   0     0     0     0     0     0    0];
% Matrix_A (:,14) = [0     0     0     2     0     0     6     0     0     0     12     0     0     0     0    20     0     0     0     0  0  30    0     0     0     0     0    0];
% Matrix_A (:,15) = [0     0     0     2     0     0     0     2     0     0     0     0     2     0     0     0     0     0     2     0  0   0     0     0     0     2     0    0];
% Matrix_A (:,16) = [0     0     0     0     1     0     0     0     0     0     0     0     0     0     0     0     0     0     0     0  0   0     0     0     0     0     0    0];
% Matrix_A (:,17) = [0     0     0     0     1     0     0     2     0     0     0     3     0     0     0     0     4     0     0     0  0   0     5     0     0     0     0    0];
% Matrix_A (:,18) = [0     0     0     0     1     0     0     0     2     0     0     0     0     3     0     0     0     0     0     4  0  0     0     0     0     0     1    0];
% Matrix_A (:,19) = [0     0     0     0     0     2     0     0     0     0     0     0     0     0     0     0     0     0     0     0    0     0     0     0     0     0    0   0];
% Matrix_A (:,20) = [0     0     0     0     0     2     0     0     2     0     0     0     2     0     0     0     0     2     0     0    0     0     0     2     0     0     0    0];
% Matrix_A (:,21) = [0     0     0      0    0     2     0     0     0     6     0     0      0    0     12    0     0     0     0     0    20      0     0     0     0     0     0    30];
% Matrix_A (:,22) = [0     0     -1      0    -1/4     0     0     -1/16     0      0     0     -1/64     0     0    0     0     -1/256     0     0     0  0   0     -1/1024     0     0     0     0    0];
% Matrix_A (:,23) = [0     0     -1      0    -3/4     0     0     -9/16     0     0     0     -27/64     0     0     0     0    -81/256     0    0     0  0   0     -243/1024     0     0     0     0    0];
% Matrix_A (:,24) = [0     sqrt(2)/2     sqrt(2)/2     3/2*sqrt(2)/2     sqrt(2)/2     1/2*sqrt(2)/2     27/16*sqrt(2)/2     15/16*sqrt(2)/2     7/16*sqrt(2)/2     3/16*sqrt(2)/2     27/16*sqrt(2)/2     27/32*sqrt(2)/2     3/8*sqrt(2)/2     5/32*sqrt(2)/2     1/16*sqrt(2)/2     405/256*sqrt(2)/2     189/256*sqrt(2)/2     81/256*sqrt(2)/2     33/256*sqrt(2)/2     13/256*sqrt(2)/2  5/256*sqrt(2)/2   729/512*sqrt(2)/2     81/128*sqrt(2)/2     135/512*sqrt(2)/2     27/256*sqrt(2)/2     21/512*sqrt(2)/2     1/64*sqrt(2)/2    3/512*sqrt(2)/2];
% Matrix_A (:,25) = [0     sqrt(2)/2     sqrt(2)/2     1/2*sqrt(2)/2     sqrt(2)/2     3/2*sqrt(2)/2     3/16*sqrt(2)/2     7/16*sqrt(2)/2     15/16*sqrt(2)/2     27/16*sqrt(2)/2     1/16*sqrt(2)/2     5/32*sqrt(2)/2     3/8*sqrt(2)/2     27/32*sqrt(2)/2    27/16*sqrt(2)/2     5/256*sqrt(2)/2     13/256*sqrt(2)/2     33/256*sqrt(2)/2     81/256*sqrt(2)/2     189/256*sqrt(2)/2   405/256*sqrt(2)/2   3/512*sqrt(2)/2     1/64*sqrt(2)/2     21/512*sqrt(2)/2     27/256*sqrt(2)/2     135/512*sqrt(2)/2     81/128*sqrt(2)/2    729/512*sqrt(2)/2];
% Matrix_A (:,26) = [0      -1     0     0     -3/4     0     0    0       -9/16      0     0     0     0     -27/64     0    0     0      0     0     -81/256     0     0     0    0     0     0     -243/1024    0];
% Matrix_A (:,27) = [0      -1         0         0    -1/4         0         0         0   -1/16         0         0         0      0   -1/64         0         0         0         0         0   -1/256         0  0     0     0     0     0     -1/1024    0];
% Matrix_A (:,28) = [1      1/3    1/3      1/9   1/9     1/9      1/27   1/27         1/27         1/27         1/81   1/81     1/81         1/81         1/81         1/243     1/243         1/243         1/243         1/243         1/243        1/729     1/729     1/729     1/729     1/729     1/729    1/729];
% 



% x = 1/2;
% y = 0;
% phi(x,y)
% phi_x(x,y)
% phi_y(x,y)
% phi_xx(x,y)
% phi_xy(x,y)
% phi_yy(x,y)
% 

% phi_x(x,y) + phi_y(x,y)


Matrix_A1 = zeros(28,28);


Matrix_A1(:,1) = phi(0,0) ;
Matrix_A1(:,2) = phi(1,0) ;
Matrix_A1(:,3) = phi(0,1) ;
Matrix_A1(:,4) = phi(1/2,0) ;
Matrix_A1(:,5) = phi(0,1/2) ;
Matrix_A1(:,6) = phi(1/2,1/2) ;
Matrix_A1(:,7) = phi_x(0,0) ;
Matrix_A1(:,8) = phi_x(1,0) ;
Matrix_A1(:,9) = phi_x(0,1) ;
Matrix_A1(:,10) = phi_y(0,0) ;
Matrix_A1(:,11) = phi_y(1,0) ;
Matrix_A1(:,12) = phi_y(0,1) ;
Matrix_A1(:,13) = phi_xx(0,0) ;
Matrix_A1(:,14) = phi_xx(1,0) ;
Matrix_A1(:,15) = phi_xx(0,1) ;
Matrix_A1(:,16) = phi_yy(0,0) ;
Matrix_A1(:,17) = phi_yy(1,0) ;
Matrix_A1(:,18) = phi_yy(0,1) ;
Matrix_A1(:,19) = phi_xy(0,0) ;
Matrix_A1(:,20) = phi_xy(1,0) ;
Matrix_A1(:,21) = phi_xy(0,1) ;
Matrix_A1(:,22) = -phi_y(1/4,0) ;
Matrix_A1(:,23) = -phi_y(3/4,0) ;
Matrix_A1(:,24) = sqrt(2)/2*(phi_x(3/4,1/4)+phi_y(3/4,1/4)) ;
Matrix_A1(:,25) = sqrt(2)/2*(phi_x(1/4,3/4)+phi_y(1/4,3/4)) ;
Matrix_A1(:,26) = -phi_x(0,3/4) ;
Matrix_A1(:,27) = -phi_x(0,1/4) ;
Matrix_A1(:,28) = phi(1/3,1/3) ;
























